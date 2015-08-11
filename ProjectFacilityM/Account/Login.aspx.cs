using ProjectFacilityM.App_Bussiness;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectFacilityM.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogIn(object sender, EventArgs e)
        {

            if (IsValid)
            {

                if (UserBusiness.ValidateUser(Email.Text, Password.Text))
                {

                    int URol = UserBusiness.RolUser(Email.Text);

                    switch (URol)
                    {
                            // caso de estudiante
                        case 1:
                            //IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                            Session["usuario"] = Email.Text;

                            Response.Redirect("EstudentHome.aspx");
                            Email.Text = "";
                            Password.Text = "";
                            break;
                        case 2:
                            Response.Redirect("EstudentHome.aspx");
                            break;
                        case 3:
                            //Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}",
                            //                                Request.QueryString["ReturnUrl"],
                            //                                RememberMe.Checked),
                            //                  true);
                            // redireccionar a la pantalla pricipal de profesores
                            Response.Redirect("EstudentHome.aspx");
                            break;
                        //case 2:

                        //    break;

                    }

                }
                else
                {


                    FailureText.Text = "Usuario o clave incorrectos";
                    ErrorMessage.Visible = true;
                }
            
            
            }

        }


    }
}