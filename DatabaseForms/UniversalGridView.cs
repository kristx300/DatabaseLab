using System;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Windows.Forms;

namespace DatabaseForms
{
    public partial class UniversalGridView : Form
    {
        /// <summary>
        ///Представляет инструкцию Transact-SQL или хранимую процедуру, выполняемую над
        ///базой данных SQL Server. Этот класс не может быть унаследован.        
        /// </summary>
        private SqlCommand sCommand;
        /// <summary>
        ///Представляет набор выполняемых над данными команд и подключения базы данных,
        ///которые используется для заполнения System.Data.DataSet и обновления базы данных
        ///SQL Server. Данный класс не может наследоваться.        
        /// </summary>
        private SqlDataAdapter sAdapter;
        /// <summary>
        /// Автоматически генерирует однотабличные команды, которые позволяют согласовать
        /// изменения, вносимые в объект System.Data.DataSet, со связанной базой данных SQL Server. 
        /// Этот класс не может быть унаследован.
        /// </summary>
        private SqlCommandBuilder sBuilder;
        /// <summary>
        /// Представляет расположенный в памяти кэш данных.
        /// </summary>
        private DataSet sDs;
        /// <summary>
        /// Представляет одну таблицу с данными в памяти.
        /// </summary>
        private DataTable sTable;
        /// <summary>
        /// Подключена ли форма к базе данных
        /// </summary>
        private bool IsConnected = false;
        /// <summary>
        /// Строка подключения
        /// </summary>
        private string connectionString;

        /// <summary>
        /// Конструктор
        /// </summary>
        public UniversalGridView()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Событие нажатия на кнопку
        /// </summary>
        /// <param name="sender">Объект который вызвал событие</param>
        /// <param name="e">Данные о событии</param>
        private void Connect_Click(object sender, EventArgs e)
        {
            //Если подключен к базе данных
            if (IsConnected)
            {
                IsConnected = !IsConnected;
                //Очищаем объекты, вызвав событие с null значениями
                Dispose(null, null);
                //Объекту вызвавшему данное событие, в свойстве Text задаем значение
                (sender as Button).Text = "Отключится";
                //Очищаем от элементов, объект ComboBox
                TableList.Items.Clear();
            }
            else
            {
                IsConnected = !IsConnected;
                (sender as Button).Text = "Подключится";
                TableList.Items.Clear();
                connectionString = ConnectionTextBox.Text;
                //Запрос SQL, который возвращает все таблицы в базе данных (работает не во всех версиях базы данных)
                string getTablesSQL = "SELECT sobjects.name FROM sysobjects sobjects WHERE sobjects.xtype = 'U'";
                //Создаем подключение
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    //Создаем SQL запрос/объект
                    SqlCommand command = new SqlCommand(getTablesSQL, connection);
                    //Открываем подключение
                    connection.Open();
                    //Запускаем SQL запрос, который возвращает значение объекта SqlDataReader
                    //SqlDataReader
                    //Предоставляет возможность чтения потока строк только в прямом направлении из базы данных SQL Server
                    SqlDataReader reader = command.ExecuteReader();
                    try
                    {
                        //Если таблицы есть, то считываем их и включаем необходимые кнопки, иначе выключаем их
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
                            button1.Enabled = true;
                            button2.Enabled = true;
                            button3.Enabled = true;
                            button4.Enabled = true;
                            button5.Enabled = true;
                            button6.Enabled = true;
                            button7.Enabled = true;
                        }
                        else
                        {
                            SQLRequest.Enabled = false;
                            Read.Enabled = false;
                            Save.Enabled = false;
                            CreateUpdate.Enabled = false;
                            Delete.Enabled = false;
                            button1.Enabled = false;
                            button2.Enabled = false;
                            button3.Enabled = false;
                            button4.Enabled = false;
                            button5.Enabled = false;
                            button6.Enabled = false;
                            button7.Enabled = false;
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
            if (string.IsNullOrEmpty(SQLQuery.Text))
            {
                MessageBox.Show("Поле SQL запроса пустое", "Ошибка");
                return;
            }
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
                        //Заполняем sAdapter и привязываем к определенному имени таблицы.
                        sAdapter.Fill(sDs, "BindingSet");
                        connection.Close();
                        //Задаем источник данных используя DataSet, и название предыдущего привязывания
                        UserDataGridView.DataSource = sDs.Tables["BindingSet"];
                        //Помечает DataGridView только на чтение
                        UserDataGridView.ReadOnly = true;
                        //Вся строка может быть выбрана путем щелчка заголовка строки или ячейки, содержащейся в этой строке.
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
            try
            {
                sCommand.Dispose();
                sAdapter.Dispose();
                sBuilder.Dispose();
                sDs.Dispose();
                sTable.Dispose();
            }
            catch
            {
            }
        }

        private void SQLButtonClick(object sender, EventArgs e)
        {
            Save.Enabled = false;
            CreateUpdate.Enabled = false;
            Delete.Enabled = false;
            try
            {
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                sCommand = new SqlCommand((sender as Button).Tag.ToString(), connection);
                sAdapter = new SqlDataAdapter(sCommand);
                sBuilder = new SqlCommandBuilder(sAdapter);
                sDs = new DataSet();
                sAdapter.Fill(sDs, "BindingSet");
                sTable = sDs.Tables["BindingSet"];
                connection.Close();
                UserDataGridView.DataSource = sDs.Tables["BindingSet"];
                UserDataGridView.ReadOnly = true;
                UserDataGridView.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
                SQLFromButton.Text = (sender as Button).Tag.ToString();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Ошибка");
            }
        }
    }
}