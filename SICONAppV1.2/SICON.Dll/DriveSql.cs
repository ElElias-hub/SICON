using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace SICON.Dll
{
    public class DriveSql
    {
        public string CadeConx { get; set; }

        public SqlConnection OpenConnection(ref string Mensa)
        {
            SqlConnection conexion =
                new SqlConnection();
            conexion.ConnectionString = CadeConx;
            try
            {
                conexion.Open();
                Mensa = "Conexión exitosa";
            }
            catch (Exception w)
            {
                Mensa = "ERROR No se pudo conectar ala BD; " + w.Message;
                conexion = null;
            }
            return conexion;
        }

        public Boolean OP_ModBD(SqlConnection cone, string query, ref string me)
        {
            Boolean salida = false;
            SqlCommand carrito = new SqlCommand();
            if (cone != null)
            {
                carrito.Connection = cone;
                carrito.CommandText = query;
                try
                {
                    carrito.ExecuteNonQuery();
                    salida = true;
                    me = "Modificación Correcta";
                }
                catch (SqlException h)
                {
                    salida = false;
                    me = "ERROR: " + h.Message;
                }
                cone.Close();
            }
            else
            {
                salida = false;
                me = "No hay coneción";
            }
            return salida;
        }

        public SqlDataReader ConsultaDataReader(ref SqlConnection cone, string query, ref string me)
        {
            SqlDataReader Contenedor = null;

            SqlCommand car = new SqlCommand();
            if (cone != null)
            {
                car.Connection = cone;
                car.CommandText = query;
                try
                {
                    Contenedor = car.ExecuteReader();
                    me = "Consulta coreccta";
                }
                catch (Exception g)
                {
                    me = "ERROR " + g.Message;
                    Contenedor = null;
                }
            }
            else
            {
                me = "No hay conexción";
                Contenedor = null;
            }

            return Contenedor;
        }

        public System.Data.DataSet ConsultaDataSet(SqlConnection cone, string query, ref string me)
        {
            System.Data.DataSet cja = new System.Data.DataSet();
            SqlCommand car = new SqlCommand();
            SqlDataAdapter truck = new SqlDataAdapter();

            if (cone != null)
            {
                car.Connection = cone;
                car.CommandText = query;
                truck.SelectCommand = car;
                try
                {
                    truck.Fill(cja);
                    me = "Consulta Coreccta";
                }
                catch (Exception e)
                {
                    me = "ERROR " + e.Message;
                }
                cone.Close();
                cone.Dispose();
            }
            else
            {
                cja = null;
                me = "No hay conexión abierta";
            }
            return cja;
        }
    }
}
