using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using SICON.Bll;
using System.Data.SqlClient;
using System.Web.Security;
using System.Configuration;

namespace SICON.Pll
{
    public partial class Users : System.Web.UI.Page
    {
        public void Message(string mensaje)
        {
            Response.Write("<script type='text/javascript'>" + "alert('" + mensaje + "'); </script>");
        }
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void btnRegis_Click(object sender, EventArgs e)
        {
            try
            {

                UserOperations uo = new UserOperations();
                string j = "";
                uo.InsertUser(txtName.Text, txtApell.Text, txtPass.Text, txtUserName.Text, ref j);
                Response.Redirect("Users.aspx");
            }
            catch (Exception v)
            {
                Message(v.ToString());
            }
        }
    }
}