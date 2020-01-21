using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

public partial class pages_ShoppingCart : System.Web.UI.Page
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
        string userId = User.Identity.GetUserId();
        GetPurchasesInCart(userId);


    }

    private void Delete_Item(object sender, EventArgs e)
    {
        
        Button selectedLink = (Button)sender;
        string link = selectedLink.ID.Replace("id", "");
        int cartId = Convert.ToInt32(link);

        CartModel model = new CartModel();
        model.DeleteCart(cartId);

        Response.Redirect("~/Pages/ShoppingCart.aspx");
        
    }

    private void ddlAmount_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList selectedList = (DropDownList)sender;
        int quantity = Convert.ToInt32(selectedList.SelectedValue);
        int cartId = Convert.ToInt32(selectedList.ID);

        CartModel model = new CartModel();
        model.UpdateQuantity(cartId, quantity);

        Response.Redirect("~/Pages/ShoppingCart.aspx");

    }



    private void GetPurchasesInCart(string userId)
    {
        CartModel model = new CartModel();
        double subTotal = 0;

        List<Cart> purchaseList = model.GetOrdersInCart(userId);
        CreateShopTable(purchaseList, out subTotal);

        double vat = subTotal * 0.21;
        double totalAmount = subTotal + vat + 15;

        litTotal.Text = "£ " + subTotal;
        litVat.Text = "£ " + vat;
        litTotalAmount.Text = "£ " + totalAmount;

    }

    private void CreateShopTable(List<Cart> purchaseList, out double subTotal)
    {
        subTotal = new Double();
        ProductModel model = new ProductModel();

        foreach(Cart cart in purchaseList)
        {
            Product product = model.GetProduct(cart.ProductID);

            ImageButton btnImage = new ImageButton
            {
                ImageUrl = string.Format("~/img/{0}", product.Image),
                PostBackUrl = string.Format("~/Pages/Product.aspx?id={0}", product.Id)
            };

            Button lnkDelete = new Button
            {

                Text = "Delete",
                PostBackUrl = string.Format("~/Pages/ShoppingCart.aspx?productId={0}", cart.ID),
                
                
                ID = "id" + cart.ID

            };
            Session["Workaround"] = 0;
            lnkDelete.Click += Delete_Item;

            int[] amount = Enumerable.Range(1, 20).ToArray();
            DropDownList ddlAmount = new DropDownList
            {
                DataSource = amount,
                AppendDataBoundItems = true,
                AutoPostBack = true,
                ID = cart.ID.ToString()
            };

            ddlAmount.DataBind();
            ddlAmount.SelectedValue = cart.Amount.ToString();
            ddlAmount.SelectedIndexChanged += ddlAmount_SelectedIndexChanged;

            Table table = new Table { CssClass = "cartTable" };
            TableRow a = new TableRow();
            TableRow b = new TableRow();

            TableCell a1 = new TableCell { RowSpan = 2, Width = 50};
            TableCell a2 = new TableCell
            {
                Text = string.Format("<h4>{0}</h4>{1}<br/>In Sock",
                product.Name, "Item No: " + product.Id),
                HorizontalAlign = HorizontalAlign.Left,
                Width = 350
            };
                
            TableCell a3 = new TableCell
            {
                Text ="Uint Price<hr/>"
            };
            TableCell a4 = new TableCell
            {
                Text = "Quantity<hr/>"
            };
            TableCell a5 = new TableCell
            {
                Text = "Item Total<hr/>"
            };
            TableCell a6 = new TableCell
            {
               //add
            };

            TableCell b1 = new TableCell { };
            TableCell b2 = new TableCell { Text = "£ " + product.Price };
            TableCell b3 = new TableCell { };
            TableCell b4 = new TableCell { Text = "£ " + Math.Round((cart.Amount * product.Price), 2 )};
            TableCell b5 = new TableCell { };
            TableCell b6 = new TableCell { };

            a1.Controls.Add(btnImage);
            a6.Controls.Add(lnkDelete);
            b3.Controls.Add(ddlAmount);

            a.Cells.Add(a1);
            a.Cells.Add(a2);
            a.Cells.Add(a3);
            a.Cells.Add(a4);
            a.Cells.Add(a5);
            a.Cells.Add(a6);

            b.Cells.Add(b1);
            b.Cells.Add(b2);
            b.Cells.Add(b3);
            b.Cells.Add(b4);
            b.Cells.Add(b5);
            b.Cells.Add(b6);

            table.Rows.Add(a);
            table.Rows.Add(b);

            pnlShoppingCart.Controls.Add(table);

            subTotal += (cart.Amount * product.Price);

        }
        Session["Workaround"] = 0;
        Session[User.Identity.GetUserId()] = purchaseList;
    }


}