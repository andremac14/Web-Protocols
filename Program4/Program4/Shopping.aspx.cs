using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Program3
{
    public partial class Shopping : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SQLDataClass.getAllProducts();
            this.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CalculateTotals();


            Application["Prog2_ProductPrice"] = txtPrice.Text;
            Application["Prog2_ProductQuantity"] = txtQuantity.Text;
            Application["Prog2_ProductID"] = txtID.Text;
            Application["Prog2_Computed"] = true;


            txtID.ReadOnly = true;
            txtPrice.ReadOnly = true;
            txtQuantity.ReadOnly = true;
        }

        void CalculateTotals()
        {
            Double taxRate = .055;


            Double Price = Double.Parse(txtPrice.Text);
            int intQuantity = int.Parse(txtQuantity.Text);


            Double subtotal = Price * (Double)intQuantity;
            Double tax = subtotal * taxRate;
            Double grandTotal = subtotal + tax;



            txtSubTotal.Text = String.Format("{0:C}", subtotal);
            txtTax.Text = String.Format("{0:C}", tax);
            txtGrandTotal.Text = String.Format("{0:C}", grandTotal);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtID.Text = "";
            txtPrice.Text = "";
            txtSubTotal.Text = "";
            txtQuantity.Text = "";
            txtTax.Text = "";
            txtGrandTotal.Text = "";
            TextBox2.Text = "";

            txtID.ReadOnly = false;
            txtPrice.ReadOnly = false;
            txtQuantity.ReadOnly = false;
            Application["Prog2_Computed"] = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string a = SQLDataClass.product.Rows[0][0].ToString();
            int b = SQLDataClass.product.Rows.Count;
            string f = SQLDataClass.product.Rows[1].ToString();
            try
            {

                for (int i = 0; i < b; i++)
                {
                    if (SQLDataClass.product.Rows[i][0].ToString() == txtID.Text)
                    {
                        TextBox2.Text = SQLDataClass.product.Rows[i][1].ToString();
                        txtPrice.Text = SQLDataClass.product.Rows[i][2].ToString();
                    }
                }

            }
            catch (Exception ex)
            {

            }
        }
    }
}