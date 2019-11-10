using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace SICON.Pll.SICON
{
    public partial class Catalog1 : System.Web.UI.Page
    {
        public void mensanje(string mensaje)
        {
            Response.Write("<script type='text/javascript'>" + "alert('" + mensaje + "'); </script>");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            CerrarSesionBtn.Visible = false;
            UpdateBtn.Visible = false;

            if (Convert.ToInt32(Session["tipousu"]) != 1)
            {
                ControlBtn.Visible = false;
                //CerrarSesionBtn.Visible = true;
                //UpdateBtn.Visible = true;
            }
            if (Session["activo"] != null)
            {
                UserLbl.Text = "Hola " + Session["activo"].ToString();
                IniciarBtn.Visible = false;
                CerrarSesionBtn.Visible = true;
                UpdateBtn.Visible = true;

            }
        }

        protected void CerrarSesionBtn_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Remove("activo");
            Session.Remove("tipousu");
            Response.Redirect(@"../Login.aspx");
        }

        protected void ControlBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"../Dashboard.aspx");
        }

        protected void IniciarBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"../login.aspx");
        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"../EditProfile.aspx");
        }
    }
}