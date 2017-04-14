using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocio
{
    public class Usuarios
    {
        public void InsertarUsuario(CapaEntidades.Usuarios Usuario)
        {
            CapaDatos.Usuarios ObjUsuario = new CapaDatos.Usuarios();
            ObjUsuario.AgregarUsuario(Usuario);
        }
        public void ActualizarUsuario(CapaEntidades.Usuarios Usuario)
        {
            CapaDatos.Usuarios ObjUsuario = new CapaDatos.Usuarios();
            ObjUsuario.ActualizarUsuario(Usuario);
        }
        public void EliminarUsuario(string Cedula)
        {
            CapaDatos.Usuarios ObjUsuario = new CapaDatos.Usuarios();
            ObjUsuario.EliminarUsuario(Cedula);
        }

        public CapaEntidades.Usuarios BuscarUsuario(CapaEntidades.Usuarios Usuario) 
        {
            CapaDatos.Usuarios ObjUsuario = new CapaDatos.Usuarios();
            return ObjUsuario.BuscarUsuario(Usuario);
        }
        public List<CapaEntidades.Usuarios> ListarUsuarios()
        {
            CapaDatos.Usuarios ObjUsuario = new CapaDatos.Usuarios();
            return ObjUsuario.ListarUsuarios();
        }

    }
}
