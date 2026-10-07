<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ControlInventarrio.aspx.cs" Inherits="Tarea_1_Ericka_Morales.ControlInventarrio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main class="container">
        <div class="row">
            <section class="col-md-4" aria-labelledby="InventarioTitle">
                <h2 id="InventarioTitle">Equipo en inventario</h2>

            </section>

        </div>
            <ContentTemplate>
                <div class="table-responsive">
                    <asp:GridView ID="crInventario" runat="server" AutoGenerateColumns="false" CssClass=" table table-striped table-bordered">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="ID" />
                            <asp:BoundField DataField="NombreEquipo" HeaderText="Equipo" />
                            <asp:BoundField DataField="Identificador" HeaderText="Identificador" />
                            <asp:BoundField DataField="Departamento" HeaderText="Departamento al que pertenece" />
                            <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" />
                            <asp:BoundField DataField="Estado" HeaderText="Estado" />

                        </Columns>

                    </asp:GridView>

                </div>


            </ContentTemplate>

        <br />
    </main>
</asp:Content>
