using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



namespace CapaDatos
{
    public class Conexion
    {
        /// <summary>
        /// Este medoto retorna una conexion a la base de datos.
        /// </summary>
        /// <returns></returns>
        public SqlConnection conectar()
        {

            string strConn;
            strConn = "Data Source=USER\\SQLSERVER;Initial Catalog=dbVeterinaria;Integrated Security=True";

            SqlConnection conn = new SqlConnection(strConn);
            try
            {
                if (conn.State.Equals(ConnectionState.Closed))
                    conn.Open();

                else

                    conn.Close();
            }
            catch (Exception ex)
            {
            }
            return conn;
        }
    }
}

