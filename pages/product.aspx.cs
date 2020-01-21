using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_product : System.Web.UI.Page
{
    void Page_PreInit(Object sender, EventArgs e)
    {
        string userName = HttpContext.Current.User.Identity.GetUserName();
        if (userName == "Admin")
        {
            MasterPageFile = "~/MasterPage2.master";
        }
        else
        {
            MasterPageFile = "~/MasterPage.master";
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Workaround"] = 0;
        FillPage();
    }

    private void FillPage()
    {
        Session["Workaround"] = 0;
        if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
        {
            Session["Workaround"] = 0;
            int id = Convert.ToInt32(Request.QueryString["id"]);
            ProductModel productModel = new ProductModel();
            Product product = productModel.GetProduct(id);

            lblPrice.Text = "Price per unit: £ " + product.Price;
            lblTitle.Text = product.Name;
            lblDescription.Text = product.Description;
            lblItemNr.Text = id.ToString();
            imgProduct.ImageUrl = "~/Img/" + product.Image;

            int[] amount = Enumerable.Range(1, 20).ToArray();
            ddlAmount.DataSource = amount;
            ddlAmount.AppendDataBoundItems = true;
            ddlAmount.DataBind();
        }
    }





    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Workaround"] = 0;
        if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
        {
            Session["Workaround"] = 0;
            string clientId = Context.User.Identity.GetUserId();

            if (clientId != null)
            {
                Session["Workaround"] = 0;
                int id = Convert.ToInt32(Request.QueryString["id"]);
                int amount = Convert.ToInt32(ddlAmount.SelectedValue);

                Session["Workaround"] = 0;
                Cart cart = new Cart
                {

                    Amount = amount,
                    ClientID = clientId,
                    DatePurchased = DateTime.Now,
                    IsInCart = true,
                    ProductID = id
                };
                Session["Workaround"] = 0;
                CartModel model = new CartModel();
                Session["Workaround"] = 0;

                lblResult.Text = model.InsertCart(cart);
            }
            else
            {
                Session["Workaround"] = 0;
                lblResult.Text = "Please log in to purchase items";
            }
        }
        Session["Workaround"] = 0;
    } 
}