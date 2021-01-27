using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Program3
{
    public class SQLDataClass
    {
        private const string ConStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + @"'J:\Prog3Database.mdf';" + "Integrated Security=True;Connect Timeout=30";
        private static System.Data.SqlClient.SqlDataAdapter prodAdapter;
        private static System.Data.SqlClient.SqlCommand prodCmd = new System.Data.SqlClient.SqlCommand();
        private static System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
        public static System.Data.DataTable tblproduct = new System.Data.DataTable("product");

        public static void setupProdAdapter()
        {
            con.ConnectionString = ConStr;
            prodCmd.Connection = con;
            prodCmd.CommandType = System.Data.CommandType.Text;
            prodCmd.CommandText = "Select * from product order by ProductID";

            prodAdapter = new System.Data.SqlClient.SqlDataAdapter(prodCmd);

            prodAdapter.FillSchema(tblproduct, System.Data.SchemaType.Source);

        }

        public static void getAllProducts()
        {
            if (prodAdapter == null)
                setupProdAdapter();

            prodCmd.CommandText = "Select * from product order by ProductID";

            try
            {
                if (!(tblproduct == null))
                    tblproduct.Clear();
                prodAdapter.Fill(tblproduct);
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

        public static void selectProduct()
        {
            if (prodAdapter == null)
                setupProdAdapter();

            prodCmd.CommandText = "Select ProductID from product order by ProductID";

            try
            {
                if (!(tblproduct == null))
                    tblproduct.Clear();
                prodAdapter.Fill(tblproduct);
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
            prodCmd.CommandText = "INSERT INTO product(ProductID, ProductName, UnitPrice, Description)" +
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
    }


}
