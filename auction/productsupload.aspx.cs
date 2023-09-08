using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace auction
{
    public partial class productsupload : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\35027223\source\repos\auction\auction\auction\App_Data\Products.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void backBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void mangeProductsbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("productsManagement.aspx");
        }

        protected void UploadBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload1.HasFile)
                {
                    string fileName = System.IO.Path.GetFileName(FileUpload1.FileName);
                    string filePath = Server.MapPath("~/productsImage/") + fileName;

                    FileUpload1.SaveAs(filePath);

                    using (SqlConnection sqlcon = new SqlConnection(connectionstring))
                    {
                        sqlcon.Open();
                        string query = "INSERT INTO ProductsUpload (ProductName, ProductSize, ProductType, ProductPrice, ProductImage) VALUES(@ProductName, @ProductSize, @ProductType, @ProductPrice, @ProductImage)";
                        SqlCommand sqlCommand = new SqlCommand(query, sqlcon);

                        sqlCommand.Parameters.AddWithValue("@ProductName", txtproductname.Text);
                        sqlCommand.Parameters.AddWithValue("@ProductSize", txtproductsize.Text);
                        sqlCommand.Parameters.AddWithValue("@ProductType", txtproducttype.Text);
                        sqlCommand.Parameters.AddWithValue("@ProductPrice", txtproductprice.Text);
                        sqlCommand.Parameters.AddWithValue("@ProductImage", "productsImage/" + fileName);

                        sqlCommand.ExecuteNonQuery();
                        sqlcon.Close();
                    }

                    Response.Write("<script>alert('Add successful');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Please select a file to upload.');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Add failed. " + ex.Message + "');</script>");
            }
        }
    }
}
