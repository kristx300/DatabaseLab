namespace DatabaseForms.DataGridViewFolder
{
    partial class OrderGridForm
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
            ((System.ComponentModel.ISupportInitialize)(this.UserDataGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // Save
            // 
            this.Save.Location = new System.Drawing.Point(303, 409);
            this.Save.Name = "Save";
            this.Save.Size = new System.Drawing.Size(75, 23);
            this.Save.TabIndex = 9;
            this.Save.Text = "Сохранить";
            this.Save.UseVisualStyleBackColor = true;
            this.Save.Click += new System.EventHandler(this.Save_Click);
            // 
            // Delete
            // 
            this.Delete.Location = new System.Drawing.Point(222, 409);
            this.Delete.Name = "Delete";
            this.Delete.Size = new System.Drawing.Size(75, 23);
            this.Delete.TabIndex = 8;
            this.Delete.Text = "Удалить";
            this.Delete.UseVisualStyleBackColor = true;
            this.Delete.Click += new System.EventHandler(this.Delete_Click);
            // 
            // CreateUpdate
            // 
            this.CreateUpdate.Location = new System.Drawing.Point(93, 409);
            this.CreateUpdate.Name = "CreateUpdate";
            this.CreateUpdate.Size = new System.Drawing.Size(123, 23);
            this.CreateUpdate.TabIndex = 7;
            this.CreateUpdate.Text = "Добавить Изменить";
            this.CreateUpdate.UseVisualStyleBackColor = true;
            this.CreateUpdate.Click += new System.EventHandler(this.CreateUpdate_Click);
            // 
            // Read
            // 
            this.Read.Location = new System.Drawing.Point(12, 409);
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
            this.UserDataGridView.Location = new System.Drawing.Point(12, 18);
            this.UserDataGridView.Name = "UserDataGridView";
            this.UserDataGridView.Size = new System.Drawing.Size(776, 385);
            this.UserDataGridView.TabIndex = 5;
            // 
            // OrderGridForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.Save);
            this.Controls.Add(this.Delete);
            this.Controls.Add(this.CreateUpdate);
            this.Controls.Add(this.Read);
            this.Controls.Add(this.UserDataGridView);
            this.Name = "OrderGridForm";
            this.Text = "OrderGridForm";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Dispose);
            ((System.ComponentModel.ISupportInitialize)(this.UserDataGridView)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button Save;
        private System.Windows.Forms.Button Delete;
        private System.Windows.Forms.Button CreateUpdate;
        private System.Windows.Forms.Button Read;
        private System.Windows.Forms.DataGridView UserDataGridView;
    }
}