using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace SICON.Pll
{
    public partial class Index : System.Web.UI.Page
    {
        public void mensanje(string mensaje)
        {
            Response.Write("<script type='text/javascript'>" + "alert('" + mensaje + "'); </script>");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["tipousu"]) != 1)
            {
                ControlBtn.Visible = false;
                
            }
            if (Session["activo"] != null)
            {
                UserLbl.Text = "Hola " + Session["activo"].ToString();
                IniciarBtn.Visible = false;
                RegistrarBtn.Visible = false;

            }
        }

        protected void CerrarSesionBtn_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Remove("activo");
            Session.Remove("tipousu");
            Response.Redirect("login.aspx");
        }

        protected void ControlBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }
    }
}