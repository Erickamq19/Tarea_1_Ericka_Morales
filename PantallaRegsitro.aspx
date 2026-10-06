<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PantallaRegsitro.aspx.cs" Inherits="Tarea_1_Ericka_Morales.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <main>
    
    <div class="row">
        <section class="col-md-4" aria-labelledby="RegistroTitle">
            <h1 id="RegistroTitle">Registro de préstamos</h1>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
          <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
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


</main>

</asp:Content>
