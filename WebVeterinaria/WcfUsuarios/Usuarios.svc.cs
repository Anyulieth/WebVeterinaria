using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WcfUsuarios
{
    public class Usuarios : IUsuarios
    {
        public void InsertarUsuario(CapaEntidades.Usuarios Usuario)
        {
                CapaNegocio.Usuarios ObjUsuario = new CapaNegocio.Usuarios();
                ObjUsuario.InsertarUsuario(Usuario);
        }

        public void ActualizarUsuario(CapaEntidades.Usuarios Usuario)
        {
            CapaNegocio.Usuarios ObjUsuario = new CapaNegocio.Usuarios();
            ObjUsuario.ActualizarUsuario(Usuario);
        }

        public void EliminarUsuario(string Cedula)
        {
            CapaNegocio.Usuarios ObjUsuario = new CapaNegocio.Usuarios();
            ObjUsuario.EliminarUsuario(Cedula);
        }

        public CapaEntidades.Usuarios BuscarUsuario(CapaEntidades.Usuarios Usuario)
        {
            CapaNegocio.Usuarios ObjUsuario = new CapaNegocio.Usuarios();
            return ObjUsuario.BuscarUsuario(Usuario);
        }

        public List<CapaEntidades.Usuarios> ListarUsuarios()
        {
            CapaNegocio.Usuarios ObjUsuario = new CapaNegocio.Usuarios();
            return ObjUsuario.ListarUsuarios();
        }
    }
}
