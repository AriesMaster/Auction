using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace auction
{
    // The rest of your code-behind file follows...
    public class CartItem
    {
        public string ProductName { get; set; }
        public decimal ProductPrice { get; set; }
    }
    public partial class _Default : Page
    {
       

        

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void AddToCartButton_Click(object sender, EventArgs e)
        {
            // Check if the Session variable for cart count exists
            if (Session["CartCount"] == null)
            {
                // If it doesn't exist, initialize it to 1
                Session["CartCount"] = 1;
            }
            else
            {
                // If it exists, increment the cart count by 1
                int cartCount = (int)Session["CartCount"];
                cartCount++;
                Session["CartCount"] = cartCount;
            }

           

                     List<CartItem> cartItems;

            if (Session["CartItems"] == null)
            {
                // If it doesn't exist, create a new list to store cart items
                cartItems = new List<CartItem>();
            }
            else
            {
                // If it exists, retrieve the existing cart items
                cartItems = (List<CartItem>)Session["CartItems"];
            }

            // Retrieve the selected product's name and price from the ListView
            ListViewItem item = ((Button)sender).NamingContainer as ListViewItem;
            string productName = ((Label)item.FindControl("Label4")).Text;
            decimal productPrice = Convert.ToDecimal(((Label)item.FindControl("Label2")).Text);

            // Create a new cart item and add it to the list
            CartItem cartItem = new CartItem
            {
                ProductName = productName,
                ProductPrice = productPrice
            };
            cartItems.Add(cartItem);

            // Update the Session variable with the updated cart items
            Session["CartItems"] = cartItems;

            
        }

        protected void CheckoutButton_Click(object sender, EventArgs e)
        {
            // Perform the checkout process here, and then reset the cart count to zero.
            Session["CartCount"] = 0;
            // You can also clear the cart items list if needed.
            Session["CartItems"] = null;
        }



    }
}