using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using SICON.Dll;
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
		DriveSql LayerDll = new DriveSql();
		protected void Page_Load(object sender, EventArgs e)
        {
			LayerDll.CadeConx = ConfigurationManager.ConnectionStrings["SICONDBConnectionString"].ToString();
		}

		protected void btnRegis_Click1(object sender, EventArgs e)
		{
			SqlConnection cntemp = null;
			SqlDataReader caja = null;
			Boolean salida = false;

			string h = "";
			string name = txtName.Text;
			string apellidos = txtApell.Text;
			string pass = txtPass.Text;
			string usename = txtUserName.Text;

			string new_user = "insert into Usuario values ('" + usename + "', '" + pass + "','" + name + "','" 
				+ apellidos + "', 2);";
			cntemp = LayerDll.OpenConnection(ref h);

			string consul = "select * from Usuario where UserName ='" + usename + "';"; //consulta para evitar duplicacion de Username

			if (cntemp != null)
			{
				salida = LayerDll.OP_ModBD(cntemp, new_user, ref h);
				if (salida == true)
				{
					Message("Creacion de usuario correcta");
					Response.Redirect("Login.aspx");
				}
				else
				{
					Message("Surgio un error");
					cntemp.Close();
					cntemp.Dispose();
					Response.Redirect("Registro.aspx");
				}
			}
			else
			{
				Message("Error de conexion BD");
				Response.Redirect("Registro.aspx");
				cntemp.Close();
				cntemp.Dispose();
			}
			
			
		}
	}
}