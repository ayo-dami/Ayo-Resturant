using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin.Security;



public partial class pages_Account_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        var userStore = new UserStore<IdentityUser>();

        userStore.Context.Database.Connection.ConnectionString =
            System.Configuration.ConfigurationManager.
            ConnectionStrings["StoreDBConnectionString"].ConnectionString;

        var manager = new UserManager<IdentityUser>(userStore);

        var user = new IdentityUser { UserName = txtUserName.Text };

        if (txtPassword.Text == txtConfirmPassword.Text)
        {
            try
            {
                IdentityResult result = manager.Create(user, txtPassword.Text);

                if (result.Succeeded)
                {
                    UserInfo userDetail = new UserInfo
                    {
                        Address = txtAddress.Text,
                        FirstName = txtFirstName.Text,
                        LastName = txtLastName.Text,
                        GUID = user.Id,
                        PostalCode = Convert.ToInt32(txtPostCode.Text)
                    };

                    UserInfoModel model = new UserInfoModel();
                    model.InsertUserInfo(userDetail);

                    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

                    var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                    authenticationManager.SignIn(new AuthenticationProperties(), userIdentity);
                    Response.Redirect("~/Index.aspx");
                }
                else
                {
                    litStatus.Text = result.Errors.FirstOrDefault();
                }
            }
            catch (Exception ex)
            {
                litStatus.Text = ex.ToString();
            }
        }
        else
        {
            litStatus.Text = "Password must match";
        }

    }
}