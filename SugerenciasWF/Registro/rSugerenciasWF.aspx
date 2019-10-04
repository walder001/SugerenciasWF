<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rSugerenciasWF.aspx.cs" Inherits="SugerenciasWF.Registro.rSugerenciasWF" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container btn-group-toggle">

        <ul class="nav justify-content-center bg-success">
            <li class="nav-item">
                <h5 class="text-light">Registro</h5>
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"></a>
            </li>
        </ul>
        <div class="row">
            <div class="col">
                <div class="form-label-group form-control-lg">
                    <label for="LabelFecha" class="col-4 offset-md-8"><strong>Fecha</strong></label>
                    <asp:TextBox ID="TextBoxFecha" runat="server" TextMode="Date" CssClass="col-md-4 offset-md-8" />
                </div>

            </div>

        </div>
        <br />
        <br />

        <div class="row">
            <div class="col">
                <div class="form-label-group form-control-lg">
                    <label for="LabelId" class="col-md-1"> <strong>Id</strong></label>
                    <asp:TextBox ID="TextBoxId" runat="server" Text="0" type="number" CssClass="col-md-7" />
                    <asp:Button Text="Buscar" runat="server" CssClass="btn btn-primary col-md-3 offset-0" OnClick="Buscar_Click" />
                </div>
            </div>
        </div>
        <br />

        <div class="row">
            <div class="col">
                <div class="form-label-group form-control-lg">
                    <p class="text-center"> <strong>Descripcion</strong></p>
                    <asp:TextBox ID="TextBoxDescripcion" runat="server" TextMode="MultiLine" paceholder="Descripcion" CssClass="col-md-12 " />
                </div>
            </div>
        </div>
        <br />
        <br />`
        <hr />


        <div class="col">
            <asp:Button ID="Button1" runat="server" Text="Limpiar" class=" btn btn-primary col-sm-2 offset-3" OnClick="Limpiar_Click" />
            <asp:Button ID="Button2" runat="server" Text="Guardar" class=" btn btn-success col-sm-2 " OnClick="Guardar_Click" />
            <asp:Button ID="Button3" runat="server" Text="Elimnar" class=" btn btn-danger col-sm-2 " OnClick="Eliminar_Click" />
        </div>

    </div>
</asp:Content>
