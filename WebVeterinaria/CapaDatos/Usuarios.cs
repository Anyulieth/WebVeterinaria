using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace CapaDatos
{
    public class Usuarios
    {
        /// <summary>
        /// Metodo para Agregar la informacion de un usuario a la base de datos
        /// recibe como parametro un usuario de la capa de entidades.
        /// </summary>
        /// <param name="Usuario"></param>
        public void AgregarUsuario(CapaEntidades.Usuarios Usuario) 
        {
            Conexion aux = new Conexion();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = aux.conectar();
            cmd.Parameters.Add(new SqlParameter("@usuario", Usuario.Usuario));
            cmd.Parameters.Add(new SqlParameter("@clave", Usuario.Clave));
            cmd.CommandText = "InsertarUsuario";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            aux.conectar();
        }
        /// <summary>
        /// Metodo permite actualizar la contraseña del usuario
        /// recibe como parametro un usuario de la capa de entidades.
        /// </summary>
        /// <param name="Usuario"></param>
        public void ActualizarUsuario(CapaEntidades.Usuarios Usuario) 
        {
            Conexion aux = new Conexion();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = aux.conectar();
            cmd.Parameters.Add(new SqlParameter("@usuario", Usuario.Usuario));
            cmd.Parameters.Add(new SqlParameter("@clave", Usuario.Clave));
            cmd.CommandText = "ActualizarUsuario";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            aux.conectar();
        }
        /// <summary>
        /// Metodo para Eliminar la informacion de un usuario especifico en la base base de datos
        /// recibe como parametro la Cedula del usuario que se desea eliminar.
        /// </summary>
        /// <param name="Cedula"></param>
        public void EliminarUsuario(string Cedula)
        {
            Conexion aux = new Conexion();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = aux.conectar();
            cmd.Parameters.Add(new SqlParameter("@usuario", Cedula));
            cmd.CommandText = "EliminarUsuario";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            aux.conectar();
        }
        /// <summary>
        /// Metodo valida si el usuario existe y retorna la informacion del mismo.
        /// recibe como parametro un usuario de la capa de entidades.
        /// </summary>
        /// <returns></returns>
        public CapaEntidades.Usuarios BuscarUsuario(CapaEntidades.Usuarios Usuario)
        {
            CapaEntidades.Usuarios Usuarios = new CapaEntidades.Usuarios();
            Conexion aux = new Conexion();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = aux.conectar();
            cmd.Parameters.Add(new SqlParameter("@usuario", Usuario.Usuario));
            cmd.Parameters.Add(new SqlParameter("@clave", Usuario.Clave));
            cmd.CommandText = "BuscarUsuario";
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader Lector = cmd.ExecuteReader();
            if (Lector.Read())
            {
                Usuarios.Usuario = Lector["Usuario"].ToString();
                Usuarios.Clave = Lector["Clave"].ToString();
            }
            else
            {
                Usuarios = null;
            }
            aux.conectar();
            return Usuario;
        }
        /// <summary>
        /// Devuelve una lista con la informacion de todos los usuarios.
        /// </summary>
        /// <returns></returns>
        public List<CapaEntidades.Usuarios> ListarUsuarios()
        {
           
            List<CapaEntidades.Usuarios> Lista = new List<CapaEntidades.Usuarios>();
            Conexion aux = new Conexion();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = aux.conectar();
            cmd.CommandText = "ListarUsuarios";
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader Lector = cmd.ExecuteReader();
            while (Lector.Read())
            {
                CapaEntidades.Usuarios Usuario = new CapaEntidades.Usuarios();
                Usuario.Usuario = Lector["Usuario"].ToString();
                Usuario.Clave = Lector["Clave"].ToString();
                Lista.Add(Usuario);
            }
             aux.conectar();
            return Lista;
        }
    }
}
