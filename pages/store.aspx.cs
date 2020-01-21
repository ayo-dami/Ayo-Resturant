using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
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
    private bool button1WasClicked = false;
    private bool button2WasClicked = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            FillPage();
        }

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        
        button1WasClicked = true;
        search();

    }
    protected void btnShowAll_Click(object sender, EventArgs e)
    {
        button2WasClicked = true;
        FillPage();
    }
    private void search()
    {
        ProductModel productModel = new ProductModel();
        List<Product> products = productModel.GetProductsByName(txtSearch.Text );

        String userinput = txtSearch.Text;
        String checkProduct = productModel.GetProductsByName("Mocha").ToString();
      

        if (products != null)
        {

            foreach (Product product in products)
            {
                Panel productPanel = new Panel();
                ImageButton imageButton = new ImageButton();
                Label lblName = new Label();
                Label lblPrice = new Label();

                imageButton.ImageUrl = "~/img/" + product.Image;
                imageButton.CssClass = "productImage";
                imageButton.PostBackUrl = "~/Pages/Product.aspx?id=" + product.Id;

                lblName.Text = product.Name;
                lblName.CssClass = "productName";

                lblPrice.Text = "£" + product.Price;
                lblPrice.CssClass = "productPrice";

                productPanel.Controls.Add(imageButton);
                productPanel.Controls.Add(new Literal { Text = "<br />" });
                productPanel.Controls.Add(lblName);
                productPanel.Controls.Add(new Literal { Text = "<br />" });
                productPanel.Controls.Add(lblPrice);

                pnlProducts.Controls.Add(productPanel);
            }
            
        }
     else
        {
            pnlProducts.Controls.Add(new Literal { Text = "No products found!" });
        }

    }

    private void FillPage()
    {
        ProductModel productModel = new ProductModel();
        List<Product> productsAll = productModel.GetAllProducts();

        if (productsAll != null)
        {
            foreach(Product product in productsAll)
            {
                Panel productPanel = new Panel();
                ImageButton imageButton = new ImageButton();
                Label lblName = new Label();
                Label lblPrice = new Label();

                imageButton.ImageUrl = "~/img/" + product.Image;
                imageButton.CssClass = "productImage";
                imageButton.PostBackUrl = "~/Pages/Product.aspx?id=" + product.Id;

                lblName.Text = product.Name;
                lblName.CssClass = "productName";

                lblPrice.Text = "£" + product.Price;
                lblPrice.CssClass = "productPrice";

                productPanel.Controls.Add(imageButton);
                productPanel.Controls.Add(new Literal { Text = "<br />" });
                productPanel.Controls.Add(lblName);
                productPanel.Controls.Add(new Literal { Text = "<br />" });
                productPanel.Controls.Add(lblPrice);

                pnlProducts.Controls.Add(productPanel);
            }
        }

        else
        {
            pnlProducts.Controls.Add(new Literal { Text = "No products found!" });
        }
    }



    
}