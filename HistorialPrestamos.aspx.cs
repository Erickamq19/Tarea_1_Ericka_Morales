using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tarea_1_Ericka_Morales.Funciones;

namespace Tarea_1_Ericka_Morales
{
    public partial class HistorialPrestamos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Prestamos"] == null)
            {

                Session["Prestamos"] = new List<prestamo_equipo>();
            }

        }

        private void cargarHistorial() {
            List<prestamo_equipo> prestamos = (List<prestamo_equipo>)Session["Prestamos"];
            hiPrestamos.DataSource = prestamos;
            hiPrestamos.DataBind();

        }

        protected void btnHistorial_Click(object sender, EventArgs e)
        {
           cargarHistorial();

        }


    }
}