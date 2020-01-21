using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Web;


public partial class pages_Account_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        
        UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();

        userStore.Context.Database.Connection.ConnectionString =
            System.Configuration.ConfigurationManager.
            ConnectionStrings["StoreDBConnectionString"].ConnectionString;

        UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

        var user = manager.Find(txtUserName.Text, txtPassword.Text);

        if(user != null)
        {
            Session["admin"] = txtUserName.Text;
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

            authenticationManager.SignIn(new AuthenticationProperties
            {
                IsPersistent = false
            }, userIdentity);

            Response.Redirect("~/Index.aspx");

                
        }
        else
        {
            litStatus.Text = "Invalid username or password";
        }
    }
    void BasePage_PreInit(object sender, EventArgs e)
    {
        if (IsAdmin())
        {
            MasterPageFile = "~/MasterPage2.master";
        }
        else
        {
            MasterPageFile = "~/MasterPage.master";
        }
    }

    private bool IsAdmin()
    {
        if (Session["admin"] != null)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}