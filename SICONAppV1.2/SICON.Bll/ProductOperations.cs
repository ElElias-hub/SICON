using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using SICON.Dll;

namespace SICON.Bll
{
    public class ProductOperations
    {
        private DriveSql obj = new DriveSql();

        public ProductOperations()
        {
            obj.CadeConx = ConfigurationManager.ConnectionStrings["SICONDBConnectionString"].ToString();
        }

        public DataTable BuscarProductos(ref string men)
        {
            SqlConnection temp3 = null;
            temp3 = obj.OpenConnection(ref men);
            DataSet caja = null;
            DataTable salida = null;
            string query = string.Format("select * from diseño;");

            if (temp3 != null)
            {
                caja = obj.ConsultaDataSet(temp3, query, ref men);
                if (obj != null)
                {
                    salida = caja.Tables[0];
                }
            }
            return salida;
        }

        public Boolean InsertMaterial(string id, string name, string desc, float pre, string img, float la, float anch, float alt, string mat, ref string me)
        {
            Boolean sal = false;
            SqlConnection Car = null;
            Car = obj.OpenConnection(ref me);
            string query = string.Format("INSERT INTO Diseño(IdDiseño,Nombre,Descripcion,Precio,Imagen,Largo,Ancho,Alto,Material) VALUES ('{0}','{1}','{2}',{3},'{4}',{5},{6},{7},'{8}');", id, name, desc, pre, img, la, anch, alt, mat);
            sal = obj.OP_ModBD(Car, query, ref me);

            return sal;
        }
    }
    
}
