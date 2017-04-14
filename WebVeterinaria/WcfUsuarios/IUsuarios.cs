using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WcfUsuarios
{
    [ServiceContract]
    public interface IUsuarios
    {
        [OperationContract]
        void InsertarUsuario(CapaEntidades.Usuarios Usuario);
        [OperationContract]
        void ActualizarUsuario(CapaEntidades.Usuarios Usuario);
        [OperationContract]
        void EliminarUsuario(string Cedula);
        [OperationContract]
        CapaEntidades.Usuarios BuscarUsuario(CapaEntidades.Usuarios Usuario);
        [OperationContract]
        List<CapaEntidades.Usuarios> ListarUsuarios();
    }
}
