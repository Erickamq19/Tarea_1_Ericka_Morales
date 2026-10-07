<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HistorialPrestamos.aspx.cs" Inherits="Tarea_1_Ericka_Morales.HistorialPrestamos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="container">
        <div class="row">
            <section class="col-md-4" aria-labelledby="HistorialTitle">
                <h2 id="HistorialTitle">Historial de Registros</h2>
                
            </section>
          
        </div>

        <asp:UpdatePanel ID="actuHistorial" runat="server">
            <ContentTemplate>
                <div class="table-responsive">
                    <asp:GridView ID="hiPrestamos" runat="server" AutoGenerateColumns="false" CssClass=" table table-striped table-bordered">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="ID" />
                            <asp:BoundField DataField="Responsable" HeaderText="Responsable" />
                            <asp:BoundField DataField="NombreEquipo" HeaderText="Equipo" />
                            <asp:BoundField DataField="Identificador" HeaderText="Identificador" />
                            <asp:BoundField DataField="Fecha_salida" HeaderText="Fecha de salida" DataFormatString="{0:dd/MM/yyyy}" />
                            <asp:BoundField DataField="Fecha_regreso" HeaderText="Fecha de regreso" DataFormatString="{0:dd/MM/yyyy}" />
                            <asp:BoundField DataField="NombreSolicitante" HeaderText="Nombre del solicitante" />
                            <asp:BoundField DataField="Departamento" HeaderText="Departamento al que pertenece" />
                            <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" />

                        </Columns>

                    </asp:GridView>

                </div>

                
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnHistorial" EventName="Click" />
            </Triggers>

        </asp:UpdatePanel>
        
         <asp:Button ID="btnHistorial" runat="server" Text="RecargarHistorial" CssClass="btn btn-primary" OnClick="btnHistorial_Click" UseSubmitBehavior="false" />
            <br />
    </main>

</asp:Content>
