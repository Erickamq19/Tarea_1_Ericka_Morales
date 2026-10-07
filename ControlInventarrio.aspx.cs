using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tarea_1_Ericka_Morales.Funciones;


namespace Tarea_1_Ericka_Morales
{
    public partial class ControlInventarrio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Prestamos"] == null)
            {

                Session["Prestamos"] = new List<prestamo_equipo>();
            }

            cargarInventario();
            Mostrar();
            

        }

        private void cargarInventario()
        {
            if (Session["Inventario"] == null)
            {

                List<inventario_equipos> inventario = new List<inventario_equipos>
                {
                    new inventario_equipos
                    {
                        Id = 1,
                        NombreEquipo = "Laptop Dell Latitude 5420",
                        Identificador = "00001",
                        Departamento = "Administración",
                        Observaciones = "Equipo para uso administrativo"
                    },

                    new inventario_equipos
                    {
                        Id = 2,
                        NombreEquipo = "Laptop HP ProBook 450",
                        Identificador = "00002",
                        Departamento = "Recursos Humanos",
                        Observaciones = "Tiene pequeños defectos en la pantalla"
                    },

                    new inventario_equipos
                    {
                        Id = 3,
                        NombreEquipo = "Laptop Lenovo ThinkPad E14",
                        Identificador = "00003",
                        Departamento = "Contabilidad",
                        Observaciones = "Viene con estuche incluido"
                    }
                };

                Session["Inventario"] = inventario;
            }

        }

        private void Mostrar()
        {
            List <inventario_equipos> inventario = (List<inventario_equipos>)Session["Inventario"];

            foreach (inventario_equipos equipo in inventario)
            {
                equipo.Estado = DetEstado(equipo.Identificador);
                
            }
            crInventario.DataSource = inventario;
            crInventario.DataBind();

        }
        private string DetEstado(string identificador)
        {
            List<prestamo_equipo> prestamos = (List<prestamo_equipo>)Session["Prestamos"];
            foreach (prestamo_equipo prestamo in prestamos)
            {
                if (prestamo.Identificador == identificador && DateTime.Today >= prestamo.Fecha_salida && DateTime.Today <= prestamo.Fecha_regreso)
                {
                    return "Prestado";
                }
            }

            return "Disponible";
            
        }
    }
}