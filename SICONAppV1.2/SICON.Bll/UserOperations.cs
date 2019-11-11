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
    public class UserOperations
    {
        private DriveSql obj = new DriveSql();

        public UserOperations()
        {
            obj.CadeConx = ConfigurationManager.ConnectionStrings["SICONDBConnectionString"].ToString();
        }

        public Boolean InsertUser(string name, string apellidos, string pass, string usename, ref string me)
        {
            Boolean sal = false;
            SqlConnection Car = null;
            Car = obj.OpenConnection(ref me);
            string query = string.Format("INSERT INTO Usuario (UserName,PassWord,Nombre,Apellidos) VALUES ('{0}','{1}','{2}','{3}');", usename, pass,name,apellidos);
            sal = obj.OP_ModBD(Car, query, ref me);

            return sal;
        }

        public Boolean UpdateUser(string name, string pass, string apellidos, int tipo, string usu, ref string me)
        {
            Boolean sal = false;
            SqlConnection Car = null;
            Car = obj.OpenConnection(ref me);
            string query = string.Format("exec UpdateUser @Nombre='{0}' ,@Password='{1}' ,@Apellidos='{2}',@Tipo={3},@usu='{4}';", name,pass,apellidos,tipo,usu);
            sal = obj.OP_ModBD(Car, query, ref me);

            return sal;
        }

        public Boolean DeleteUser(string user, ref string me)
        {
            Boolean sal = false;
            SqlConnection Car = null;
            Car = obj.OpenConnection(ref me);
            string query = string.Format("DELETE FROM Usuario WHERE UserName='{0}';", user);
            sal = obj.OP_ModBD(Car, query, ref me);

            return sal;
        }

        public DataTable ViewUsers(ref string men)
        {
            SqlConnection temp3 = null;
            temp3 = obj.OpenConnection(ref men);
            DataSet caja = null;
            DataTable salida = null;
            string query = string.Format("Select * from usuario");

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
    }
}
