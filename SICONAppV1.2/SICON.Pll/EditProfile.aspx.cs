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
    public partial class EditProfile : System.Web.UI.Page
    {
        public void Message(string mensaje)
        {
            Response.Write("<script type='text/javascript'>" + "alert('" + mensaje + "'); </script>");
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            try
            {
                UserOperations uo = new UserOperations();
                string j = "";
                uo.UpdateUser(txtName.Text, txtPass.Text, txtApe.Text, Convert.ToInt32(Session["tipousu"]), Session["activo"].ToString(), ref j);

                FormsAuthentication.SignOut();
                Session.Remove("activo");
                Session.Remove("tipousu");
                Response.Redirect(@"../Login.aspx");
            }
            catch (Exception v)
            {
                Message(v.ToString());
            }
        }
    }
}