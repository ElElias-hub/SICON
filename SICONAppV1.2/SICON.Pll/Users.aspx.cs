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
            ViewUser();
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

        public void ViewUser()
        {
            UserOperations uo = new UserOperations();
            string me = "";
            ViewUsers.DataSource = uo.ViewUsers(ref me);
            ViewUsers.DataBind();
        }

        protected void ViewUsers_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            UserOperations uo = new UserOperations();
            string me = "";

            ViewUsers.PageIndex = e.NewPageIndex;
            System.Data.DataTable tabla1 = null;
            tabla1 = uo.ViewUsers(ref me);
            ViewUsers.DataSource = tabla1;
            ViewUsers.DataBind();
        }

        protected void ViewUsers_SelectedIndexChanged(object sender, EventArgs e)
        {

            GridViewRow fila = ViewUsers.SelectedRow;
            lblId.Text = fila.Cells[1].Text+"  ";
            
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                UserOperations uo = new UserOperations();
                string j = "";
                uo.DeleteUser(lblId.Text, ref j);
                Response.Redirect("Users.aspx");
            }
            catch (Exception v)
            {
                Message(v.ToString());
            }
        }

        
    }
}