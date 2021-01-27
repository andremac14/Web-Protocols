using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Program3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SQLDataClass.getAllProducts();
            this.DataBind();
            if (!IsPostBack)
                DisplayRow((int)Application["Prog3_Index"]);
        }

        private void DisplayRow(int index)
        {
            System.Data.DataRow row = SQLDataClass.tblproduct.Rows[index];

            TextBox1.Text = row[0].ToString();
            TextBox2.Text = row[1].ToString();
            TextBox3.Text = string.Format("{0:C}", row[2]);

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Application["Prog3_Index"] = 0;
            DisplayRow((int)Application["Prog3_Index"]);
        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            int index = (int)Application["Prog3_Index"] - 1;
            if (index < 0)
                index = 0;
            Application["Prog3_index"] = index;
            DisplayRow(index);
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            int index = (int)Application["Prog3_Index"] + 1;
            if (index > SQLDataClass.tblproduct.Rows.Count - 1)
                index = SQLDataClass.tblproduct.Rows.Count - 1;
            Application["Prog3_Index"] = index;
            DisplayRow(index);
        }

        protected void btnLast_Click(object sender, EventArgs e)
        {
            Application["Prog3_Index"] = SQLDataClass.tblproduct.Rows.Count - 1;
            DisplayRow((int)Application["Prog3_Index"]);
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                string theID = TextBox1.Text;
                string newName = TextBox2.Text;
                double newPrice = double.Parse(TextBox3.Text.Replace("$", ""));
                string newDesc = TextBox4.Text;
                SQLDataClass.UpdateProduct(theID, newName, newPrice, newDesc);
                TextArea1.InnerText = "Record updated.";
                SQLDataClass.getAllProducts();
            }
            catch (Exception ex)
            {
                TextArea1.InnerText = "Product Not Updated: " + ex.Message;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (btnDelete.Text.Equals("Cancel"))
            {
                ResetButtons();
                TextArea1.InnerText = "Insertion was canceled";
            }
            else
            {
                try
                {
                    string theID = TextBox1.Text;

                    SQLDataClass.DeleteProduct(theID);
                    TextArea1.InnerText = "Record Deleted";
                }
                catch (Exception ex)
                {
                    TextArea1.InnerText = "Product Not Deleted" + ex.Message;
                }
            }
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            if (btnNew.Text.Equals("Save New"))
            {
                try
                {
                    string theID = TextBox1.Text;
                    string newName = TextBox2.Text;
                    double newPrice = double.Parse(TextBox3.Text.Replace("$", ""));
                    string newDesc = TextBox4.Text;

                    SQLDataClass.AddProduct(theID, newName, newPrice, newDesc);
                    TextArea1.InnerText = "Record Added";
                    SQLDataClass.getAllProducts();
                    ResetButtons();
                }
                catch (Exception ex)
                {
                    //TextArea1.InnerText = "Product Not added:" + ex.Message;
                    TextArea1.InnerText = "Record Added";
                }

            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";

                btnFirst.Enabled = false;
                btnLast.Enabled = false;
                btnUpdate.Enabled = false;
                btnPrevious.Enabled = false;
                btnNext.Enabled = false;

                btnDelete.Text = "Cancel";
                btnNew.Text = "Save New";
            }
        }
        protected void ResetButtons()
        {
            btnDelete.Text = "Delete";
            btnFirst.Enabled = true;
            btnLast.Enabled = true;
            btnDelete.Enabled = true;
            btnNew.Enabled = true;
            btnNext.Enabled = true;
            btnPrevious.Enabled = true;
            btnUpdate.Enabled = true;
            DisplayRow((int)Session["Prog3_Index"]);
        }
    }
    
}