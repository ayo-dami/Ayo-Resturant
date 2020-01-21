using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_about : System.Web.UI.Page
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
        FillPage();
    }

    private void FillPage()
    {
        AboutUsModel aboutUsModel = new AboutUsModel();
        aboutu aboutu = aboutUsModel.GetAboutus(1);

        lblText1.Text = aboutu.aboutText1;
        lblText2.Text = aboutu.aboutText2;
        img1.ImageUrl = aboutu.Image1;
        img2.ImageUrl = aboutu.Image2;
    }
}