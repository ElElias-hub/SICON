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
    public partial class Materials : System.Web.UI.Page
    {
        public void Message(string mensaje)
        {
            Response.Write("<script type='text/javascript'>" + "alert('" + mensaje + "'); </script>");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Proveedores();
            Categorias();
        }

        List<string> misidsl = null;
        List<string> misnombresl = new List<string>();

        public void Proveedores()
        {
            ProviderOperations po = new ProviderOperations();
            string ca = "";
            misidsl = po.Proveedores(ref misnombresl, ref ca);

            dplProveedor.Items.Clear();
            foreach (string m in misnombresl)
            {
                dplProveedor.Items.Add(m);
            }
            dplProveedor.SelectedIndex = 0;
            Session["Proveedores"] = misidsl;
        }

        List<int> misids = null;
        List<string> misnombres = new List<string>();

        public void Categorias()
        {
            MaterialsOperations mo = new MaterialsOperations();
            string ca = "";
            misids = mo.Categorias(ref misnombres, ref ca);

            dplCategoria.Items.Clear();
            foreach (string m in misnombres)
            {
                dplCategoria.Items.Add(m);
            }
            dplCategoria.SelectedIndex = 0;
            Session["Categorias"] = misids;
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
                MaterialsOperations mo = new MaterialsOperations();
                string j = "";
                mo.InsertCate(txtCateg.Text, ref j);
                Response.Redirect("Materials.aspx");
            }
            catch (Exception v)
            {
                Message(v.ToString());
            }
        }

        protected void btnNewMat_Click(object sender, EventArgs e)
        {
            try
            {
                MaterialsOperations mo = new MaterialsOperations();
                string j = "";
                mo.InsertMaterial(txtFolio.Text, txtMaterial.Text, misids[dplCategoria.SelectedIndex], misidsl[dplProveedor.SelectedIndex], ref j);
                Response.Redirect("Materials.aspx");
            }
            catch (Exception v)
            {
                Message(v.ToString());
            }
        }
    }
}