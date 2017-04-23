using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization;

namespace CapaEntidades
{
    [DataContract]
    public class Veterinarios
    {
        private string idVeterinario;
        private string nombre;
        private string apellidos;
        private string direccion;
        private string telefono;

        public Veterinarios() { }
        public Veterinarios(string idVeterinario, string nombre, string apellidos,
                            string direccion, string telefono)
        {
            this.idVeterinario = idVeterinario;
            this.nombre = nombre;
            this.apellidos = apellidos;
            this.direccion = direccion;
            this.telefono = telefono;
        }

        [DataMember]
        public string IdVeterinario
        {
            get
            {
                return idVeterinario;
            }

            set
            {
                idVeterinario = value;
            }
        }

        [DataMember]
        public string Nombre
        {
            get
            {
                return nombre;
            }

            set
            {
                nombre = value;
            }
        }

        [DataMember]
        public string Apellidos
        {
            get
            {
                return apellidos;
            }

            set
            {
                apellidos = value;
            }
        }

        [DataMember]
        public string Direccion
        {
            get
            {
                return direccion;
            }

            set
            {
                direccion = value;
            }
        }

        [DataMember]
        public string Telefono
        {
            get
            {
                return telefono;
            }

            set
            {
                telefono = value;
            }
        }

    }
}
