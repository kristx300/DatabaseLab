using DatabaseForms.DataGridViewFolder;
using System;
using System.Windows.Forms;

namespace DatabaseForms
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        private void Button1_Click(object sender, EventArgs e)
        {
            using (UserGridForm ugf = new UserGridForm())
            {
                ugf.ShowDialog();
            }
        }

        private void Button2_Click(object sender, EventArgs e)
        {
            using (ProductGridForm pgf = new ProductGridForm())
            {
                pgf.ShowDialog();
            }
        }

        private void Button3_Click(object sender, EventArgs e)
        {
            using (DeliveryGridForm dgf = new DeliveryGridForm())
            {
                dgf.ShowDialog();
            }
        }

        private void Button4_Click(object sender, EventArgs e)
        {
            using (OrderGridForm ogf = new OrderGridForm())
            {
                ogf.ShowDialog();
            }
        }

        private void Button5_Click(object sender, EventArgs e)
        {
            using (UniversalGridView.UniversalGridView ugf = new UniversalGridView.UniversalGridView())
            {
                ugf.ShowDialog();
            }
        }
    }
}