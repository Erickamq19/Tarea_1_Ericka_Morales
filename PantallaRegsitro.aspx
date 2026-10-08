<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PantallaRegsitro.aspx.cs" Inherits="Tarea_1_Ericka_Morales.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <main>
    
    <div class="row">
        <section class="col-md-4" aria-labelledby="RegistroTitle">
            <h1 id="RegistroTitle">Registro de préstamos</h1>
            <p>
                Para realizar un registro, por favor llenar la información que se solicita en el 
                siguiente formulario, cuando la información se encuentre completa, oprimir el botón registrar préstamo
                que se encuentra ubicado debajo del formulario. 
            </p>
         
        </section>
    </div>

        <div class="form-group">
            <label for="txtResponsable">Nombre del responsable del registro</label>
            <asp:TextBox ID="txtResponsable" runat="server" CssClass="form-control"></asp:TextBox>

        </div>

        <div class="form-group">
            <label for="txtEquipo">Equipo</label>
            <asp:TextBox ID="txtEquipo" runat="server" CssClass="form-control"></asp:TextBox>

        </div>

        <div class="form-group">
            <label for="txtIdentificador">Código de identificación</label>
            <asp:TextBox ID="txtIdentificador" runat="server" CssClass="form-control"></asp:TextBox>

        </div>
        
        <div class="form-group">
            <label for="txtFecha_salida">Ingrese la fecha de salida</label>
            <asp:TextBox ID="txtFecha_salida" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>

        </div>

        <div class="form-group">
            <label for="txtFecha_regreso">Ingrese la fecha de devolución</label>
            <asp:TextBox ID="txtFecha_regreso" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>

        </div>

        <div class="form-group">
            <label for="txtNombreSolicitante">Nombre del solicitante</label>
            <asp:TextBox ID="txtNombreSolicitante" runat="server" CssClass="form-control"></asp:TextBox>

        </div>

        <div class="form-group">
            <label for="txtDepartamento">Departamento</label>
            <asp:TextBox ID="txtDepartamento" runat="server" CssClass="form-control"></asp:TextBox>

        </div>

        <div class="form-group">
            <label for="txtObservaciones">Observaciones adicionales</label>
            <asp:TextBox ID="txtObservaciones" runat="server" CssClass="form-control"></asp:TextBox>

        </div>

        <br />
        <asp:Button ID="btnRegistro" runat="server" Text="Registrar préstamo" CssClass="btn btn-primary" OnClick="btnRegistrar_Click" UseSubmitBehavior="false"/>
        <br />
        <asp:Label ID="MensajeConfirmacion" runat="server"></asp:Label>
        <br />


</main>


    <script>
        $(document).ready(function(){ 

            var responsable = $('#<%= txtResponsable.ClientID %>');
            var equipo = $('#<%= txtEquipo.ClientID %>');
            var identificador = $('#<%= txtIdentificador.ClientID %>');
            var fechasalida = $('#<%= txtFecha_salida.ClientID %>');
            var fecharegreso = $('#<%= txtFecha_regreso.ClientID %>');
            var solicitante = $('#<%= txtNombreSolicitante.ClientID %>');
            var departamento = $('#<%= txtDepartamento.ClientID %>');

            $('#<%= btnRegistro.ClientID %>').click(function (e) {

                if (responsable.val().trim() === '' || equipo.val().trim() === '' || identificador.val().trim() === '' || fechasalida.val().trim() === '' ||
                    fecharegreso.val().trim() === '' || solicitante.val().trim() === '' || departamento.val().trim() === '') {

                    alert('Debe completar todos los campos correspondientes.');
                    e.preventDefault();
                    return false;


                };

            });
        });

    </script>

</asp:Content>
