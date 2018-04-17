using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace DatabaseForms.UniversalGridView
{
    public partial class UniversalGridView : Form
    {
        private SqlCommand sCommand;
        private SqlDataAdapter sAdapter;
        private SqlCommandBuilder sBuilder;
        private DataSet sDs;
        private DataTable sTable;
        private bool IsConnected = false;
        private string connectionString;

        public UniversalGridView()
        {
            InitializeComponent();
        }

        private void Connect_Click(object sender, EventArgs e)
        {
            if (IsConnected)
            {
                IsConnected = !IsConnected;
                Dispose(null, null);
                (sender as Button).Text = "Отключится";
                TableList.Items.Clear();
            }
            else
            {
                IsConnected = !IsConnected;
                (sender as Button).Text = "Подключится";
                TableList.Items.Clear();
                connectionString = ConnectionTextBox.Text;
                string getTablesSQL = "SELECT sobjects.name FROM sysobjects sobjects WHERE sobjects.xtype = 'U'";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(getTablesSQL, connection);
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    try
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                TableList.Items.Add(reader.GetString(0));
                            }
                            SQLRequest.Enabled = true;
                            Read.Enabled = true;
                            Save.Enabled = false;
                            CreateUpdate.Enabled = false;
                            Delete.Enabled = false;
                        }
                        else
                        {
                            SQLRequest.Enabled = false;
                            Read.Enabled = false;
                            Save.Enabled = false;
                            CreateUpdate.Enabled = false;
                            Delete.Enabled = false;
                            TableList.Items.Add("Нету таблиц");
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Ошибка");
                    }
                    finally
                    {
                        reader.Close();
                        command.Dispose();
                    }
                }
            }
        }

        private void SQLQuery_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (var sqlCommand = new SqlCommand(SQLQuery.Text, connection))
                    {
                        sAdapter = new SqlDataAdapter(sqlCommand);
                        sBuilder = new SqlCommandBuilder(sAdapter);
                        sDs = new DataSet();
                        sAdapter.Fill(sDs, "BindingSet");
                        connection.Close();
                        UserDataGridView.DataSource = sDs.Tables["BindingSet"];
                        UserDataGridView.ReadOnly = true;
                        UserDataGridView.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Ошибка");
            }
        }

        private void Read_Click(object sender, EventArgs e)
        {
            if (TableList.SelectedItem == null)
            {
                MessageBox.Show("Не выбрана таблица", "Ошибка");
                return;
            }
            Save.Enabled = true;
            CreateUpdate.Enabled = true;
            Delete.Enabled = true;

            string sql = "SELECT * FROM " + TableList.SelectedItem.ToString();
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            sCommand = new SqlCommand(sql, connection);
            sAdapter = new SqlDataAdapter(sCommand);
            sBuilder = new SqlCommandBuilder(sAdapter);
            sDs = new DataSet();
            sAdapter.Fill(sDs, TableList.SelectedItem.ToString());
            sTable = sDs.Tables[TableList.SelectedItem.ToString()];
            connection.Close();
            UserDataGridView.DataSource = sDs.Tables[TableList.SelectedItem.ToString()];
            UserDataGridView.ReadOnly = true;
            Save.Enabled = false;
            UserDataGridView.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
        }

        private void CreateUpdate_Click(object sender, EventArgs e)
        {
            UserDataGridView.ReadOnly = false;
            Save.Enabled = true;
            CreateUpdate.Enabled = false;
            Delete.Enabled = false;
        }

        private void Delete_Click(object sender, EventArgs e)
        {
            UserDataGridView.Rows.RemoveAt(UserDataGridView.SelectedRows[0].Index);
            sAdapter.Update(sTable);
        }

        private void Save_Click(object sender, EventArgs e)
        {
            sAdapter.Update(sTable);
            UserDataGridView.ReadOnly = true;
            Save.Enabled = false;
            CreateUpdate.Enabled = true;
            Delete.Enabled = true;
        }

        private void Dispose(object sender, FormClosingEventArgs e)
        {
            sCommand.Dispose();
            sAdapter.Dispose();
            sBuilder.Dispose();
            sDs.Dispose();
            sTable.Dispose();
        }
    }
}