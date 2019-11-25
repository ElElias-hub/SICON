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
using System.Drawing;

namespace SICON.Pll
{
    public partial class NewProduct : System.Web.UI.Page
    {
        public void mensanje(string mensaje)
        {
            Response.Write("<script type='text/javascript'>" + "alert('" + mensaje + "'); </script>");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Materiales();
        }

        List<string> misids = null;
        List<string> misnombres = new List<string>();

        public void Materiales()
        {
            MaterialsOperations mo = new MaterialsOperations();
            string ca = "";
            misids = mo.Materiales(ref misnombres, ref ca);

            dplMaterial.Items.Clear();
            foreach (string m in misnombres)
            {
                dplMaterial.Items.Add(m);
            }
            dplMaterial.SelectedIndex = 0;
            Session["Materiales"] = misids;
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

        }

        protected void fupImgP_DataBinding(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Tamanio = fupImgP.PostedFile.ContentLength;
            byte[] imagenOriginal = new byte[Tamanio];

            fupImgP.PostedFile.InputStream.Read(imagenOriginal, 0, Tamanio);
            Bitmap imagenOriginalBinary = new Bitmap(fupImgP.PostedFile.InputStream);

            string imagenUrl64 = "data:image/jpg;base64," + Convert.ToBase64String(imagenOriginal);
            imgPreview.ImageUrl = imagenUrl64;

            ProductOperations po = new ProductOperations();
            string j = "";
            po.InsertMaterial(txtFolio.Text, txtName.Text, txtDesc.Text, Convert.ToSingle(txtPre.Text), imagenOriginal.ToString(), Convert.ToSingle(txtLarg.Text), Convert.ToSingle(txtAncho.Text), Convert.ToSingle(txtAlto.Text), misids[dplMaterial.SelectedIndex], ref j);

        }
    }
}