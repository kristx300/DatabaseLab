using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace DatabaseForms.DataGridViewFolder
{
    public partial class OrderProductGridForm : Form
    {
        private SqlCommand sCommand;
        private SqlDataAdapter sAdapter;
        private SqlCommandBuilder sBuilder;
        private DataSet sDs;
        private DataTable sTable;
        private const string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\maels\\Documents\\Visual Studio 2017\\Projects\\DatabaseForms\\DatabaseForms\\OnlineShop.mdf\";Integrated Security=True";

        public OrderProductGridForm()
        {
            InitializeComponent();
        }

        private void Read_Click(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM OrderSet";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            sCommand = new SqlCommand(sql, connection);
            sAdapter = new SqlDataAdapter(sCommand);
            sBuilder = new SqlCommandBuilder(sAdapter);
            sDs = new DataSet();
            sAdapter.Fill(sDs, "OrderSet");
            sTable = sDs.Tables["OrderSet"];
            connection.Close();
            UserDataGridView.DataSource = sDs.Tables["OrderSet"];
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