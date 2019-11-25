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
    public class ProviderOperations
    {
        private DriveSql obj = new DriveSql();

        public ProviderOperations()
        {
            obj.CadeConx = ConfigurationManager.ConnectionStrings["SICONDBConnectionString"].ToString();
        }

        public Boolean InsertProvider(string name, string agen,string tel,string email, string id, ref string me)
        {
            Boolean sal = false;
            SqlConnection Car = null;
            Car = obj.OpenConnection(ref me);
            string query = string.Format("INSERT INTO Proveedor(IdProveedor,NombreP,Agente,Telefono,Email) VALUES ('{0}','{1}','{2}','{3}','{4}');",id,name,agen,tel,email );
            sal = obj.OP_ModBD(Car, query, ref me);

            return sal;
        }

        public List<string> Proveedores(ref List<string> nombres, ref string mens)
        {

            List<string> ids = new List<string>();

            SqlConnection ct2 = null;

            SqlDataReader dr1 = null;

            ct2 = obj.OpenConnection(ref mens);
            if (ct2 != null)
            {

                dr1 = obj.ConsultaDataReader(ref ct2, "select IdProveedor, NombreP from Proveedor;", ref mens);
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
