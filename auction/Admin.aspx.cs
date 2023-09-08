using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace auction
{
    public partial class Admin : System.Web.UI.Page
    {

        string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\35027223\source\repos\auction\auction\auction\App_Data\Products.mdf;Integrated Security=True";
        string connectionstr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\35027223\source\repos\auction\auction\auction\App_Data\signup.mdf;Integrated Security=True;Connect Timeout=30";
        public SqlConnection conn;
        public DataSet ds;
        public SqlDataAdapter adapter;

        public void DisplayListProducts()
        {
            try
            {
                SqlCommand command;
                string sql;
                conn = new SqlConnection(constr);
                adapter = new SqlDataAdapter();
                ds = new DataSet();

                conn.Open();

                // Specify the columns you want to retrieve, excluding ProductImage
                sql = @"SELECT Id, ProductName, ProductSize, ProductType, ProductPrice FROM ProductsUpload";

                command = new SqlCommand(sql, conn);
                adapter.SelectCommand = command;

                adapter.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind(); // Binding is required for web apps

                conn.Close();

            }
            catch (SqlException)
            {

                Label1.Text = "Error opening the database ";
            }


            try
            {
                SqlCommand command;
                string sql;
                conn = new SqlConnection(connectionstr);
                adapter = new SqlDataAdapter();
                ds = new DataSet();

                conn.Open();


                sql = @"SELECT * FROM BuyerTable";


                command = new SqlCommand(sql, conn);
                adapter.SelectCommand = command;

                adapter.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind(); //Binding is required for web apps

                conn.Close();
            }
            catch (SqlException)
            {

                Label1.Text = "Error opening the database ";
            }

            try
            {
                SqlCommand command;
                string sql;
                conn = new SqlConnection(connectionstr);
                adapter = new SqlDataAdapter();
                ds = new DataSet();

                conn.Open();


                sql = @"SELECT * FROM SellerTable";


                command = new SqlCommand(sql, conn);
                adapter.SelectCommand = command;

                adapter.Fill(ds);
                GridView3.DataSource = ds;
                GridView3.DataBind(); //Binding is required for web apps

                conn.Close();
            }
            catch (SqlException)
            {

                Label1.Text = "Error opening the database ";
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayListProducts();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(constr);
                conn.Open();

                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Delete from ProductsUpload Where ProductName = '" + TextBox1.Text + "'";
                cmd.ExecuteNonQuery();

                TextBox1.Text = "";
                Label1.Text = "Successfully deleted from the the list";

                conn.Close();

                DisplayListProducts();
            }
            catch (SqlException)
            {
                Label1.Text = "Error opening the database";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(connectionstr);
                conn.Open();

                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Delete from BuyerTable Where FirstName = '" + TextBox2.Text + "'";
                cmd.ExecuteNonQuery();

                TextBox2.Text = "";
                Label1.Text = "Successfully deleted from the the list";

                conn.Close();
                DisplayListProducts();

            }
            catch (SqlException)
            {
                Label1.Text = "Error opening the database";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(connectionstr);
                conn.Open();

                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Delete from SellerTable Where FirstName = '" + TextBox3.Text + "'";
                cmd.ExecuteNonQuery();

                TextBox3.Text = "";
                Label1.Text = "Successfully deleted from the the list";

                conn.Close();

                DisplayListProducts();
            }
            catch (SqlException)
            {
                Label1.Text = "Error opening the database";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}