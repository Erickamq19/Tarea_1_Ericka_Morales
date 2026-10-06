using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Tarea_1_Ericka_Morales.Funciones
{
    public class prestamo_equipo
    {
        public int Id { get; set; }
        public string Responsable { get; set; }
        public string NombreEquipo { get; set; }
        public string Identificador { get; set; }
        public DateTime Fecha_salida { get; set; }
        public DateTime Fecha_regreso { get; set; }
        public string NombreSolicitante { get; set; }
        public string Departamento { get; set; }
        public string Observaciones { get; set; }


    }
}