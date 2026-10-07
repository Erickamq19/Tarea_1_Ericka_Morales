<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tarea_1_Ericka_Morales._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="controlprestamosTitle">
            <h1 id="controlprestamosTitle">Control de préstamos de equipos</h1>
            <p class="lead">Bienvenido estimado usuario al sistema de registro y consulta de préstamos.</p>
            
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="RegistroTitle">
                <h2 id="RegistroTitle">Registro de préstamos</h2>
                <p>
                    Sección para realizar el registro de nuevos préstamos.
                </p>
              <a href="PantallaRegsitro.aspx" class="btn btn-primary">Registro de préstamos</a>
            </section>
            <section class="col-md-4" aria-labelledby="EdiciónTitle">
                <h2 id="EdiciónTitle">Historial de registros</h2>
                <p>
                    Consulte el historial de los préstamos realizados.
                </p>
                <p>
                    <a href="HistorialPrestamos.aspx" class="btn btn-primary">Ver historial de registros</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="EquiposInventarioTitle">
                <h2 id="EquiposInventarioTitle">Equipos en inventario</h2>
                <p>
                    Gestión de los equipos en inventario y su estado. 
                </p>
                <p>
                    <a href="ControlInventarrio.aspx" class="btn btn-primary">Gestionar inventario</a>
                </p>
            </section>
        </div>
    </main>

</asp:Content>
