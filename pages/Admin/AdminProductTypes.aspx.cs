using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_Admin_AdminProductTypes : System.Web.UI.Page
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

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ProductTypeTypeModel model = new ProductTypeTypeModel();
        ProductType pt = CreateProductType();

        lblResult.Text = model.InsertProductType(pt);
    }
    private ProductType CreateProductType()
    {
        ProductType p = new ProductType();
        p.Name = txtName.Text;

        return p;
    }
}