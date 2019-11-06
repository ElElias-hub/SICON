using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SICON.Dll;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;
using System.Configuration;

namespace SICON.Pll
{
    public partial class Login : System.Web.UI.Page
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

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection cntemp = null;
            SqlDataReader caja = null;

            string h = "";
            string usus = txtUser.Text;
            string clave = txtPasw.Text;

            string consul = "select UserName, [PassWord], Nombre, TypeUser " +
                "from Usuario Where UserName='" + usus + "' and [PassWord]='" + clave + "' ;";
            cntemp = LayerDll.OpenConnection(ref h);

            if (cntemp != null)
            {
                caja = LayerDll.ConsultaDataReader(ref cntemp, consul, ref h);
                if (caja != null)
                {
                    if (caja.Read())
                    {
                        Session["activo"] = caja[2].ToString();
                        Session["tipousu"] = caja[3].ToString();
                        if ((usus == caja[0].ToString()) && (clave == caja[1].ToString()))
                        {//si es valido
                            FormsAuthentication.SetAuthCookie(usus, false);

                            Response.Redirect("SICON/Index.aspx");
                        }
                        else
                        {
                            Message("Usuario o password incorrecta");
                            Response.Redirect("Login.aspx");
                            caja.Close();
                            cntemp.Close();
                            cntemp.Dispose();
                        }
                    }
                    else
                    {
                        Message("Usuario o password incorrecta");
                        Response.Redirect("Login.aspx");
                        caja.Close();
                        cntemp.Close();
                        cntemp.Dispose();
                    }
                }
                else
                {
                    Message("Usuario o password incorrecta");
                    Response.Redirect("Login.aspx");
                    caja.Close();
                    cntemp.Close();
                    cntemp.Dispose();
                }
            }
            else
            {
                Message("Usuario o password incorrecta");
                Response.Redirect("Login.aspx");
            }
        }
    }
}