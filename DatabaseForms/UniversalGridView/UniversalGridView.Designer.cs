namespace DatabaseForms.UniversalGridView
{
    partial class UniversalGridView
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.Save = new System.Windows.Forms.Button();
            this.Delete = new System.Windows.Forms.Button();
            this.CreateUpdate = new System.Windows.Forms.Button();
            this.Read = new System.Windows.Forms.Button();
            this.UserDataGridView = new System.Windows.Forms.DataGridView();
            this.TableList = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.ConnectionTextBox = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.SQLQuery = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.SQLRequest = new System.Windows.Forms.Button();
            this.Connect = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.SQLFromButton = new System.Windows.Forms.TextBox();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.button6 = new System.Windows.Forms.Button();
            this.button7 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.UserDataGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // Save
            // 
            this.Save.Enabled = false;
            this.Save.Location = new System.Drawing.Point(713, 62);
            this.Save.Name = "Save";
            this.Save.Size = new System.Drawing.Size(90, 23);
            this.Save.TabIndex = 9;
            this.Save.Text = "Сохранить";
            this.Save.UseVisualStyleBackColor = true;
            this.Save.Click += new System.EventHandler(this.Save_Click);
            // 
            // Delete
            // 
            this.Delete.Enabled = false;
            this.Delete.Location = new System.Drawing.Point(632, 62);
            this.Delete.Name = "Delete";
            this.Delete.Size = new System.Drawing.Size(75, 23);
            this.Delete.TabIndex = 8;
            this.Delete.Text = "Удалить";
            this.Delete.UseVisualStyleBackColor = true;
            this.Delete.Click += new System.EventHandler(this.Delete_Click);
            // 
            // CreateUpdate
            // 
            this.CreateUpdate.Enabled = false;
            this.CreateUpdate.Location = new System.Drawing.Point(503, 62);
            this.CreateUpdate.Name = "CreateUpdate";
            this.CreateUpdate.Size = new System.Drawing.Size(123, 23);
            this.CreateUpdate.TabIndex = 7;
            this.CreateUpdate.Text = "Добавить Изменить";
            this.CreateUpdate.UseVisualStyleBackColor = true;
            this.CreateUpdate.Click += new System.EventHandler(this.CreateUpdate_Click);
            // 
            // Read
            // 
            this.Read.Enabled = false;
            this.Read.Location = new System.Drawing.Point(422, 62);
            this.Read.Name = "Read";
            this.Read.Size = new System.Drawing.Size(75, 23);
            this.Read.TabIndex = 6;
            this.Read.Text = "Загрузить";
            this.Read.UseVisualStyleBackColor = true;
            this.Read.Click += new System.EventHandler(this.Read_Click);
            // 
            // UserDataGridView
            // 
            this.UserDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.UserDataGridView.Location = new System.Drawing.Point(12, 156);
            this.UserDataGridView.Name = "UserDataGridView";
            this.UserDataGridView.Size = new System.Drawing.Size(791, 340);
            this.UserDataGridView.TabIndex = 5;
            // 
            // TableList
            // 
            this.TableList.FormattingEnabled = true;
            this.TableList.Location = new System.Drawing.Point(12, 64);
            this.TableList.Name = "TableList";
            this.TableList.Size = new System.Drawing.Size(404, 21);
            this.TableList.TabIndex = 10;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(9, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(113, 13);
            this.label1.TabIndex = 11;
            this.label1.Text = "Строка подключения";
            // 
            // ConnectionTextBox
            // 
            this.ConnectionTextBox.Location = new System.Drawing.Point(12, 25);
            this.ConnectionTextBox.Name = "ConnectionTextBox";
            this.ConnectionTextBox.Size = new System.Drawing.Size(695, 20);
            this.ConnectionTextBox.TabIndex = 12;
            this.ConnectionTextBox.Text = "Data Source=DESKTOP-704OV70\\TEW_SQLEXPRESS;Initial Catalog=TQ;Integrated Security" +
    "=True";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(9, 48);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(50, 13);
            this.label2.TabIndex = 13;
            this.label2.Text = "Таблица";
            // 
            // SQLQuery
            // 
            this.SQLQuery.Location = new System.Drawing.Point(12, 104);
            this.SQLQuery.Name = "SQLQuery";
            this.SQLQuery.Size = new System.Drawing.Size(695, 20);
            this.SQLQuery.TabIndex = 15;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(9, 88);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(67, 13);
            this.label3.TabIndex = 14;
            this.label3.Text = "SQL запрос";
            // 
            // SQLRequest
            // 
            this.SQLRequest.Enabled = false;
            this.SQLRequest.Location = new System.Drawing.Point(713, 101);
            this.SQLRequest.Name = "SQLRequest";
            this.SQLRequest.Size = new System.Drawing.Size(90, 23);
            this.SQLRequest.TabIndex = 16;
            this.SQLRequest.Text = "Отправить";
            this.SQLRequest.UseVisualStyleBackColor = true;
            this.SQLRequest.Click += new System.EventHandler(this.SQLQuery_Click);
            // 
            // Connect
            // 
            this.Connect.Location = new System.Drawing.Point(713, 22);
            this.Connect.Name = "Connect";
            this.Connect.Size = new System.Drawing.Size(90, 23);
            this.Connect.TabIndex = 17;
            this.Connect.Text = "Подключится";
            this.Connect.UseVisualStyleBackColor = true;
            this.Connect.Click += new System.EventHandler(this.Connect_Click);
            // 
            // button1
            // 
            this.button1.Enabled = false;
            this.button1.Location = new System.Drawing.Point(809, 22);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(148, 23);
            this.button1.TabIndex = 18;
            this.button1.Tag = "select distinct FullName, sum(Total) as MaxSum from UserSet left join OrderSet on" +
    " OrderSet.UserId_Id = UserSet.Id group by FullName";
            this.button1.Text = "Сумма заказов";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.SQLButtonClick);
            // 
            // SQLFromButton
            // 
            this.SQLFromButton.Location = new System.Drawing.Point(12, 130);
            this.SQLFromButton.Name = "SQLFromButton";
            this.SQLFromButton.ReadOnly = true;
            this.SQLFromButton.Size = new System.Drawing.Size(791, 20);
            this.SQLFromButton.TabIndex = 19;
            // 
            // button2
            // 
            this.button2.Enabled = false;
            this.button2.Location = new System.Drawing.Point(809, 48);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(148, 23);
            this.button2.TabIndex = 20;
            this.button2.Tag = "select distinct FullName, avg(Total) as AvgSum from UserSet left join OrderSet on" +
    " OrderSet.UserId_Id = UserSet.Id group by FullName";
            this.button2.Text = "Средняя сумма";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.SQLButtonClick);
            // 
            // button3
            // 
            this.button3.Enabled = false;
            this.button3.Location = new System.Drawing.Point(809, 77);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(148, 23);
            this.button3.TabIndex = 21;
            this.button3.Tag = "select distinct Name, sum(Total) as Sum from DeliverySet left join OrderSet on Or" +
    "derSet.UserId_Id = DeliverySet.Id group by Name";
            this.button3.Text = "Сумма заказов Доставки";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.SQLButtonClick);
            // 
            // button4
            // 
            this.button4.Enabled = false;
            this.button4.Location = new System.Drawing.Point(809, 106);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(148, 23);
            this.button4.TabIndex = 22;
            this.button4.Tag = "select top 3 UserSet.FullName, max(Total) as Total from OrderSet inner join UserS" +
    "et on OrderSet.UserId_Id = UserSet.Id group by Total,FullName order by Total des" +
    "c";
            this.button4.Text = "Топ закупок";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.SQLButtonClick);
            // 
            // button5
            // 
            this.button5.Enabled = false;
            this.button5.Location = new System.Drawing.Point(809, 135);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(148, 23);
            this.button5.TabIndex = 23;
            this.button5.Tag = "select DeliverySet.* from DeliverySet inner join OrderSet on DeliverySet.Id = Ord" +
    "erSet.DeliveryId_Id where OrderSet.Id = 3";
            this.button5.Text = "Доставка 3го заказа";
            this.button5.UseVisualStyleBackColor = true;
            this.button5.Click += new System.EventHandler(this.SQLButtonClick);
            // 
            // button6
            // 
            this.button6.Enabled = false;
            this.button6.Location = new System.Drawing.Point(809, 164);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(148, 23);
            this.button6.TabIndex = 24;
            this.button6.Tag = "select UserSet.* from UserSet inner join OrderSet on UserSet.Id = OrderSet.UserId" +
    "_Id where OrderSet.Id = 3";
            this.button6.Text = "Пользователь 3го заказа";
            this.button6.UseVisualStyleBackColor = true;
            this.button6.Click += new System.EventHandler(this.SQLButtonClick);
            // 
            // button7
            // 
            this.button7.Enabled = false;
            this.button7.Location = new System.Drawing.Point(809, 193);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(148, 23);
            this.button7.TabIndex = 25;
            this.button7.Tag = "select distinct OrderSet.DateCreate,OrderSet.Total from UserSet inner join OrderS" +
    "et on UserSet.Id = OrderSet.UserId_Id where Month(OrderSet.DateCreate) > 2";
            this.button7.Text = "Заказы после февраля";
            this.button7.UseVisualStyleBackColor = true;
            this.button7.Click += new System.EventHandler(this.SQLButtonClick);
            // 
            // UniversalGridView
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(969, 508);
            this.Controls.Add(this.button7);
            this.Controls.Add(this.button6);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.SQLFromButton);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.Connect);
            this.Controls.Add(this.SQLRequest);
            this.Controls.Add(this.SQLQuery);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.ConnectionTextBox);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.TableList);
            this.Controls.Add(this.Save);
            this.Controls.Add(this.Delete);
            this.Controls.Add(this.CreateUpdate);
            this.Controls.Add(this.Read);
            this.Controls.Add(this.UserDataGridView);
            this.Name = "UniversalGridView";
            this.Text = "UniversalGridView";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Dispose);
            ((System.ComponentModel.ISupportInitialize)(this.UserDataGridView)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button Save;
        private System.Windows.Forms.Button Delete;
        private System.Windows.Forms.Button CreateUpdate;
        private System.Windows.Forms.Button Read;
        private System.Windows.Forms.DataGridView UserDataGridView;
        private System.Windows.Forms.ComboBox TableList;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox ConnectionTextBox;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox SQLQuery;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button SQLRequest;
        private System.Windows.Forms.Button Connect;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox SQLFromButton;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.Button button7;
    }
}