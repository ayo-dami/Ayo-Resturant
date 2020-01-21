using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {
       
        var user = Context.User.Identity;
       
        if (user.IsAuthenticated)
        {
          
            
            //litStatus.Text = Context.User.Identity.Name;

            lnkLogin.Visible = false;
            lnkRegister.Visible = false;

            litStatus.Visible = true;
            lnkLogout.Visible = true;

            
            CartModel model = new CartModel();
            string userId = HttpContext.Current.User.Identity.GetUserId();
          
            litStatus.Text = string.Format("{0} ({1})", Context.User.Identity.Name,
                model.GetAmountOfOrder(userId));
        }
        else
        {
            lnkLogin.Visible = true;
            lnkRegister.Visible = true;

            lnkLogout.Visible = false;
            litStatus.Visible = false;

        }
    }

    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        Session["Workaround"] = 0;
        var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
        authenticationManager.SignOut();

        Response.Redirect("~/Pages/Account/Login.aspx");
    }

}

