using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectFacilityM.Account
{
    public partial class EstudentHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] != null)
            {

                lblUser.Text = Session["usuario"].ToString();

            }

        }

        public void LogOut() {

            if (Session["usuario"]!=null)
            {

                Session["usuario"]=null;

            }
        
        }
    }
}