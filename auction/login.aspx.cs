using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace auction
{
    public partial class login : System.Web.UI.Page
    {
        string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\35027223\source\repos\auction\auction\auction\App_Data\signup.mdf;Integrated Security=True;Connect Timeout=30";

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string uid = emailTxt.Text;
                string pass = PasswordTxt.Text;

                using (SqlConnection conn = new SqlConnection(constr))
                {
                    conn.Open();

                    string userType = DropDownList1.SelectedValue;
                    string tableName = userType + "Table";

                    string qry = $"SELECT * FROM {tableName} WHERE Email = @Email AND Password = @Password";
                    SqlCommand cmd = new SqlCommand(qry, conn);
                    cmd.Parameters.AddWithValue("@Email", uid);
                    cmd.Parameters.AddWithValue("@Password", pass);

                    SqlDataReader sdr = cmd.ExecuteReader();

                    if (sdr.Read())
                    {
                        Label1.Visible = true;
                        Label1.Text = "Login Success......!!";
                        // Redirect based on user type
                        switch (userType)
                        {
                            case "Admin":
                                Response.Redirect("Admin.aspx");
                                break;
                            case "Buyer":
                                Response.Redirect("default.aspx");
                                break;
                            case "Seller":
                                Response.Redirect("productsupload.aspx");
                                break;
                        }
                    }
                    else
                    {
                        Label1.Visible = true;
                        Label1.Text = "Email & Password Is not correct. Try again..!!";
                    }
                }
            }
            catch (Exception ex)
            {
                Label1.Visible = true;
                Label1.Text = "An error occurred while logging in. Please try again later.";
                // Log the exception for debugging purposes
                // You can use a logging framework like log4net or simply write to a log file
                // Example: Log.Error(ex);
            }
        }
    }
}
