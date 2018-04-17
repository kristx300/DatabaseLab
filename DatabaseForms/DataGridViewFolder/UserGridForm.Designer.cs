﻿namespace DatabaseForms.DataGridViewFolder
{
    partial class UserGridForm
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
            this.UserDataGridView = new System.Windows.Forms.DataGridView();
            this.Read = new System.Windows.Forms.Button();
            this.CreateUpdate = new System.Windows.Forms.Button();
            this.Delete = new System.Windows.Forms.Button();
            this.Save = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.UserDataGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // UserDataGridView
            // 
            this.UserDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.UserDataGridView.Location = new System.Drawing.Point(12, 12);
            this.UserDataGridView.Name = "UserDataGridView";
            this.UserDataGridView.Size = new System.Drawing.Size(776, 385);
            this.UserDataGridView.TabIndex = 0;
            // 
            // Read
            // 
            this.Read.Location = new System.Drawing.Point(12, 403);
            this.Read.Name = "Read";
            this.Read.Size = new System.Drawing.Size(75, 23);
            this.Read.TabIndex = 1;
            this.Read.Text = "Загрузить";
            this.Read.UseVisualStyleBackColor = true;
            this.Read.Click += new System.EventHandler(this.Read_Click);
            // 
            // CreateUpdate
            // 
            this.CreateUpdate.Location = new System.Drawing.Point(93, 403);
            this.CreateUpdate.Name = "CreateUpdate";
            this.CreateUpdate.Size = new System.Drawing.Size(123, 23);
            this.CreateUpdate.TabIndex = 2;
            this.CreateUpdate.Text = "Добавить Изменить";
            this.CreateUpdate.UseVisualStyleBackColor = true;
            this.CreateUpdate.Click += new System.EventHandler(this.CreateUpdate_Click);
            // 
            // Delete
            // 
            this.Delete.Location = new System.Drawing.Point(222, 403);
            this.Delete.Name = "Delete";
            this.Delete.Size = new System.Drawing.Size(75, 23);
            this.Delete.TabIndex = 3;
            this.Delete.Text = "Удалить";
            this.Delete.UseVisualStyleBackColor = true;
            this.Delete.Click += new System.EventHandler(this.Delete_Click);
            // 
            // Save
            // 
            this.Save.Location = new System.Drawing.Point(303, 403);
            this.Save.Name = "Save";
            this.Save.Size = new System.Drawing.Size(75, 23);
            this.Save.TabIndex = 4;
            this.Save.Text = "Сохранить";
            this.Save.UseVisualStyleBackColor = true;
            this.Save.Click += new System.EventHandler(this.Save_Click);
            // 
            // UserGridForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 434);
            this.Controls.Add(this.Save);
            this.Controls.Add(this.Delete);
            this.Controls.Add(this.CreateUpdate);
            this.Controls.Add(this.Read);
            this.Controls.Add(this.UserDataGridView);
            this.Name = "UserGridForm";
            this.Text = "UserGridForm";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Dispose);
            ((System.ComponentModel.ISupportInitialize)(this.UserDataGridView)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView UserDataGridView;
        private System.Windows.Forms.Button Read;
        private System.Windows.Forms.Button CreateUpdate;
        private System.Windows.Forms.Button Delete;
        private System.Windows.Forms.Button Save;
    }
}