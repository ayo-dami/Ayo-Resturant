using Microsoft.AspNet.Identity;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_Admin_UpdateNews : System.Web.UI.Page
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
  

    private void FillPage(int id)
    {
        NewsModel news = new NewsModel();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }


    protected void grdNews_RowEditing1(object sender, GridViewEditEventArgs e)
    {


    }

}