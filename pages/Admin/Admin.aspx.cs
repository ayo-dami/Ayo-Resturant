using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

public partial class pages_Admin_Admin : System.Web.UI.Page
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

    protected void grdProducts_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridViewRow row = grdProducts.Rows[e.NewEditIndex];

        int rowId = Convert.ToInt32(row.Cells[1].Text);
        Response.Redirect("~/Pages/Admin/AdminProducts.aspx?id=" + rowId);

    }

    protected void lbAddButton_Click(object sender, EventArgs e)
    {

    }
}