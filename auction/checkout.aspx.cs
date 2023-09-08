using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace auction  // Ensure the namespace matches your project
{
    public partial class checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the Session variable for cart items exists
                List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;

                if (cartItems != null)
                {
                    decimal total = 0;

                    // Loop through the cart items and add them to ListBox1
                    foreach (CartItem item in cartItems)
                    {
                        ListBox1.Items.Add($"{item.ProductName}: R{item.ProductPrice}");
                        total += item.ProductPrice; // Calculate the total price
                    }

                    // Display the total price at the bottom of the ListBox
                    ListBox1.Items.Add($"Total: R{total}");
                    ListBox1.Items.Add($"Total Items: {cartItems.Count}");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Clear the items in ListBox1
            ListBox1.Items.Clear();

            // Optionally, clear the cart items from the session
            Session.Remove("CartItems");

            // Display a confirmation message in the ListBox
            ListBox1.Items.Add("Order confirmed. Thank you for your purchase!");

            // Display a confirmation message
            Label1.Text = "Order confirmed. Thank you for your purchase!";
        }
    }
}
