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
                    ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
                A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
                </p>
              
            </section>
            <section class="col-md-4" aria-labelledby="EdiciónTitle">
                <h2 id="EdiciónTitle">Historial de registros</h2>
                <p>
                    NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="EquiposInventarioTitle">
                <h2 id="EquiposInventarioTitle">Equipos en inventario</h2>
                <p>
                    You can easily find a web hosting company that offers the right mix of features and price for your applications.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
                </p>
            </section>
        </div>
    </main>

</asp:Content>
