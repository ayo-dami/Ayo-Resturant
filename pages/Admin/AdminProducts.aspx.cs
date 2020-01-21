using Microsoft.AspNet.Identity;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_Admin_AdminProducts : System.Web.UI.Page
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
        if(!IsPostBack)
        {
            GetImages();

            if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                FillPage(id);
            }
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ProductModel productModel = new ProductModel();
        Product product = CreateProduct();

        if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            lblResult.Text = productModel.UpdateProduct(id, product);
        }
        else
        {
            lblResult.Text = productModel.InsertProduct(product);

        }


    }
    private void FillPage(int id)
    {
        ProductModel productModel = new ProductModel();
        Product product = productModel.GetProduct(id);

        txtDesc.Text = product.Description;
        txtName.Text = product.Name.ToString();
        txtPrice.Text = product.Price.ToString();

        ddlimage.SelectedValue = product.Image;
        ddlType.SelectedValue = product.TypeId.ToString();
    }

    private void GetImages()
    {
        try
        {
            string[] images = Directory.GetFiles(Server.MapPath("~/img/"));
            ArrayList imageList = new ArrayList();
            foreach (string image in images)
            {
                string imageName = image.Substring(image.LastIndexOf(@"\", StringComparison.Ordinal) + 1);
                imageList.Add(imageName);
            }

            ddlimage.DataSource = imageList;
            ddlimage.AppendDataBoundItems = true;
            ddlimage.DataBind();

        }
        catch (Exception e)
        {
            lblResult.Text = e.ToString();
        }
    }

    private Product CreateProduct()
    {
        Product product = new Product();

        product.Name = txtName.Text;
        product.TypeId = Convert.ToInt32(ddlType.SelectedValue);
        product.Price = Convert.ToDouble(txtPrice.Text);
        product.Description = txtDesc.Text;
        product.Image = ddlimage.SelectedValue;

        return product;

    }


}