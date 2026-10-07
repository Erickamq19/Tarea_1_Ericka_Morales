using Microsoft.Ajax.Utilities;
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
            if (Session["Prestamos"] == null)
            {

                Session["Prestamos"] = new List<prestamo_equipo>();



            }

        }


        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            DateTime Fecha_salida1;
            DateTime Fecha_regreso1;

            if (!DateTime.TryParse(txtFecha_salida.Text, out Fecha_salida1) || !DateTime.TryParse(txtFecha_regreso.Text, out Fecha_regreso1))
            {

                MensajeConfirmacion.Text = "Por favor ingresar las fechas en un formato válido";
                return;

            }

            if (Fecha_salida1 < Fecha_regreso1)
            {
                MensajeConfirmacion.Text = "Ingrese valores válidos como fecha";

            }


            if (string.IsNullOrWhiteSpace(txtResponsable.Text) || string.IsNullOrWhiteSpace(txtEquipo.Text) ||
                string.IsNullOrWhiteSpace(txtIdentificador.Text) || string.IsNullOrWhiteSpace(txtFecha_salida.Text) || 
                string.IsNullOrWhiteSpace(txtFecha_regreso.Text) ||
                string.IsNullOrWhiteSpace(txtNombreSolicitante.Text) || string.IsNullOrWhiteSpace(txtDepartamento.Text) ||
                string.IsNullOrWhiteSpace(txtDepartamento.Text))
            {
                MensajeConfirmacion.Text = "Por favor, complete todos los campos que se le solicita";
                return;
                
            }

            List<prestamo_equipo> prestamos = (List<prestamo_equipo>)Session["Prestamos"];

            prestamo_equipo nuevoprestamo = new prestamo_equipo
            {

                Id = prestamos.Count + 1,
                Responsable = txtResponsable.Text.Trim(),
                NombreEquipo = txtEquipo.Text.Trim(),  
                Identificador = txtIdentificador.Text.Trim(),
                Fecha_salida = Fecha_salida1,
                Fecha_regreso = Fecha_regreso1,
                NombreSolicitante = txtNombreSolicitante.Text.Trim(),
                Departamento = txtDepartamento.Text.Trim(),
                Observaciones = txtObservaciones.Text.Trim()

            };

            prestamos.Add(nuevoprestamo);
            Session["Prestamos"] = prestamos;
            MensajeConfirmacion.Text = "Préstamo registrado exitosamente";

        }
    }

}