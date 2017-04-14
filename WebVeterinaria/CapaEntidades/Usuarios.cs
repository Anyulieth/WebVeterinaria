using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization;

namespace CapaEntidades
{
    /*
      * La clase Usuarios es una representacion de la tabla Usuarios de la base de datos.
      * Ademas se establecen los contratos para poder enviar la informacion serializada
      * atraves de la red
      */
    [DataContract]
    public class Usuarios
    {
        /**Atributos de la clase Usuarios*/
        private string usuario;
        private string clave;
        /**Constructures de la clase Usuarios*/
        public Usuarios() { }
        public Usuarios(string usuario, string clave)
        {
            this.usuario = usuario;
            this.clave = clave;
        }

        /**Propiedades de la clase Usuarios*/
        [DataMember]
        public string Usuario
        {
            get { return usuario; }
            set { usuario = value; }
        }
        [DataMember]
        public string Clave
        {
            get { return clave; }
            set { clave = value; }
        }
    }
}
