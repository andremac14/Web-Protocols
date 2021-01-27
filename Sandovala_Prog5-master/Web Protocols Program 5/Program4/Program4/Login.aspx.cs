using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Program3
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SQLDataClass.getAllUsers();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("MasterPage.aspx");

            //try
            //{
            //    for (int i = 0; i < SQLDataClass.user.Rows.Count; i++)
            //    {
            //        if (SQLDataClass.user.Rows[i][0].ToString().Equals(TextBox1.Text.ToString())
            //            && SQLDataClass.user.Rows[i][1].ToString().Equals(TextBox2.Text.ToString()))
            //        {
            //           // Label5.Visible = false;
            //            Response.Redirect("MasterPage.aspx");
            //        }
            //        else
            //        {
                        
            //            //Label5.Visible = true;
            //        }
            //    }
            //}
            //catch (Exception ex)
            //{
            //    throw ex;
            //}
        }
    }
}