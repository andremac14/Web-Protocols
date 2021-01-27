using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Program3
{
    public class SQLDataClass
    {
        private const string ConStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + @"'J:\Prog4Database.mdf';" + "Integrated Security=True;Connect Timeout=30";
        private static System.Data.SqlClient.SqlDataAdapter prodAdapter;
        private static System.Data.SqlClient.SqlCommand prodCmd = new System.Data.SqlClient.SqlCommand();
        private static System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
        public static System.Data.DataTable product = new System.Data.DataTable("product");
        public static System.Data.DataTable user = new System.Data.DataTable("user");
        public static System.Data.DataTable checkout = new System.Data.DataTable("checkout");

        public static void setupProdAdapter()
        {
            con.ConnectionString = ConStr;
            prodCmd.Connection = con;
            prodCmd.CommandType = System.Data.CommandType.Text;
            prodCmd.CommandText = "Select * from product order by ProductID";

            prodAdapter = new System.Data.SqlClient.SqlDataAdapter(prodCmd);

            prodAdapter.FillSchema(product, System.Data.SchemaType.Source);

        }

        public static void setupcheckoutAdapter()
        {
            con.ConnectionString = ConStr;
            prodCmd.Connection = con;
            prodCmd.CommandType = System.Data.CommandType.Text;
            prodCmd.CommandText = "Select * from checkout order by productId";

            prodAdapter = new System.Data.SqlClient.SqlDataAdapter(prodCmd);

            prodAdapter.FillSchema(checkout, System.Data.SchemaType.Source);

        }

        public static void getAllProducts()
        {
            if (prodAdapter == null)
                setupProdAdapter();

            prodCmd.CommandText = "Select * from product order by ProductID";

            try
            {
                if (!(product == null))
                    product.Clear();
                prodAdapter.Fill(product);
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                con.Close();
            }
        }

        public static void getAllUsers()
        {
            if (prodAdapter == null)
            {
                setupProdAdapter();
            }
            prodCmd.CommandText = "Select * from user order by Id";

            try
            {
                if (!(user == null))
                    user.Clear();
                prodAdapter.Fill(user);
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                con.Close();
            }
        }

        public static void getAllCheckout()
        {
            if (prodAdapter == null)
            {
                setupProdAdapter();
            }
            prodCmd.CommandText = "Select * from checkout order by productId";

            try
            {
                if (!(user == null))
                    checkout.Clear();
                prodAdapter.Fill(checkout);
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                con.Close();
            }
        }

        public static void UpdateProduct(string theID, string newName, double newPrice, string newDesc)
        {
            prodCmd.CommandText = "Update product " +
                                  "Set ProductName = '" + newName + "', " +
                                  "UnitPrice = " + newPrice + ", " +
                                  "Description = '" + newDesc + "' " +
                                  "Where ProductID = '" + theID + "'";

            try
            {
                con.Open();
                prodCmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }


        public static void DeleteProduct(string theId)
        {
            prodCmd.CommandText = "Delete product " +
                                  "Where ProductID = '" + theId + "'";
            try
            {
                con.Open();
                prodCmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                con.Close();
            }
        }

        public static void AddProduct(string theID, string newName, double newPrice, string newDesc)
        {
            prodCmd.CommandText = "INSERT INTO product (ProductID, ProductName, UnitPrice, Description)" +
                                  "VALUES (" + theID + ", '" + newName + "', " + newPrice + ", '" + newDesc + "')";
            try
            {
                con.Open();
                prodCmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                con.Close();
            }
        }

        public static void CheckoutProduct(string productID, string productName, string quantity, string unitPrice, string Cost)
        {
            prodCmd.CommandText = "INSERT INTO checkout (productID, productName, Quantity, Unit Price, Cost)" +
                                  "VALUES (" + productID + ", '" + productName + "', " + ", '" + quantity + "', " + unitPrice + ", '" + Cost + "')";
            try
            {
                con.Open();
                prodCmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                con.Close();
            }
        }
    }


}
