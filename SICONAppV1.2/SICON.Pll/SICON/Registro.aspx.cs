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

namespace SICON.Pll.SICON
{
    public partial class Registro1 : System.Web.UI.Page
    {
		public void Message(string mensaje)
		{
			Response.Write("<script type='text/javascript'>" + "alert('" + mensaje + "'); </script>");
		}
		
		protected void Page_Load(object sender, EventArgs e)
        {
			
		}

		protected void btnRegis_Click1(object sender, EventArgs e)
		{
            try
            {

                UserOperations uo = new UserOperations();
                string j = "";
                uo.InsertUser(txtName.Text, txtApell.Text, txtPass.Text, txtUserName.Text, ref j);
                Response.Redirect("../Login.aspx");
            }
            catch (Exception v)
            {
                Message(v.ToString());
            }
        }
	}
}