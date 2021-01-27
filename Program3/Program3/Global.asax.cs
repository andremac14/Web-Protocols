using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Program3
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            SQLDataClass.setupProdAdapter();

            Application["Prog2_ProductPrice"] = "";
            Application["Prog2_ProductQuantity"] = "";
            Application["Prog2_ProductID"] = "";
            Application["Prog2_Computed"] = false;
        }

        protected void Session_Start(object sender, EventArgs e)
        {

            //Prog3
            Application["Prog3_Index"] = 0;
            Application["Prog3_ID"] = "";
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}