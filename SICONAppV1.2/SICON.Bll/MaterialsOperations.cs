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
    public class MaterialsOperations
    {
        private DriveSql obj = new DriveSql();

        public MaterialsOperations()
        {
            obj.CadeConx = ConfigurationManager.ConnectionStrings["SICONDBConnectionString"].ToString();
        }

        public Boolean InsertCate(string name, ref string me)
        {
            Boolean sal = false;
            SqlConnection Car = null;
            Car = obj.OpenConnection(ref me);
            string query = string.Format("INSERT INTO Categoria(Categoria) VALUES ('{0}');", name);
            sal = obj.OP_ModBD(Car, query, ref me);

            return sal;
        }

        public List<int> Categorias(ref List<string> nombres, ref string mens)
        {

            List<int> ids = new List<int>();

            SqlConnection ct2 = null;

            SqlDataReader dr1 = null;

            ct2 = obj.OpenConnection(ref mens);
            if (ct2 != null)
            {

                dr1 = obj.ConsultaDataReader(ref ct2, "select IdCategoria,Categoria from Categoria;", ref mens);
                if (dr1 != null)
                {

                    nombres.Clear();
                    while (dr1.Read())
                    {
                        ids.Add((int)dr1[0]);
                        nombres.Add((string)dr1[1]);
                    }
                }

                ct2.Close();
                ct2.Dispose();

            }
            return ids;
        }

        public Boolean InsertMaterial(string id, string name, int cate, string prove,ref string me)
        {
            Boolean sal = false;
            SqlConnection Car = null;
            Car = obj.OpenConnection(ref me);
            string query = string.Format("INSERT INTO Material(IdMaterial,Nombre_Mat,Categoria,Proveedor) VALUES ('{0}','{1}',{2},'{3}');", id,name,cate,prove);
            sal = obj.OP_ModBD(Car, query, ref me);

            return sal;
        }

        public List<string> Materiales(ref List<string> nombres, ref string mens)
        {

            List<string> ids = new List<string>();

            SqlConnection ct2 = null;

            SqlDataReader dr1 = null;

            ct2 = obj.OpenConnection(ref mens);
            if (ct2 != null)
            {

                dr1 = obj.ConsultaDataReader(ref ct2, "select IdMaterial, Nombre_Mat from Material", ref mens);
                if (dr1 != null)
                {

                    nombres.Clear();
                    while (dr1.Read())
                    {
                        ids.Add((string)dr1[0]);
                        nombres.Add((string)dr1[1]);
                    }
                }

                ct2.Close();
                ct2.Dispose();

            }
            return ids;
        }
    }
}
