using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;


public partial class pages_index : System.Web.UI.Page
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
        NewsModel newsModel = new NewsModel();
        news news = newsModel.GetNews(1);



        imgNews.ImageUrl = news.image;
        lblNews.Text = news.news1;
    }

    

}