using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tarea_1_Ericka_Morales.Funciones;

namespace Tarea_1_Ericka_Morales
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Prestamos"] == null) {

                Session["Prestamos"] = new List<prestamo_equipo>();
            
            
            
            }

        }


        protected void btnRegistrar_Click(object sender, EventArgs e)
        {

        }
    }

}