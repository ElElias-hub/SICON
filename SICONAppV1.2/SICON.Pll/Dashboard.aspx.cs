using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace SICON.Pll
{
    public partial class Dashboard : System.Web.UI.Page
    {
        public void mensanje(string mensaje)
        {
            Response.Write("<script type='text/javascript'>" + "alert('" + mensaje + "'); </script>");
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            
            if (Session["activo"] != null)
            {
                UserLbl.Text = "¡"+Session["activo"].ToString();
                CerrarSesionBtn.Visible = true;
                UpdateBtn.Visible = true;

            }
        }

        protected void CerrarSesionBtn_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Remove("activo");
            Session.Remove("tipousu");
            Response.Redirect(@"Login.aspx");
        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"EditProfile.aspx");
        }
    }
}