<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rSugerenciasWF.aspx.cs" Inherits="SugerenciasWF.Registro.rSugerenciasWF" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
         <div class="row">
             <div class="col">
                 <label>Id</label>
                 <asp:TextBox ID="TextBoxId" runat="server" Text="Id" CssClass="col" type="number"/>
                 <asp:Button Text="ButtonBuscar" runat="server" CssClass="btn btn-primary" OnClick="Unnamed1_Click" />
             </div>
        </div>

        <div class ="col">
            <label>Fecha</label>
            <asp:TextBox ID="TextBoxFecha"  TextMode="Date" runat="server" Text="Id" CssClass="col"/>
        </div>

           <div class ="col">
                <label>Descripcion</label>
                <asp:TextBox ID="TextBoxDescripcion" runat="server" Text="Id" CssClass="col"/>
            </div>

            <asp:Button ID="Limpiar" runat="server" Text="Limpiar" OnClick="Limpiar_Click" />
            <asp:Button ID="Guardar" runat="server" Text="Guardar" OnClick="Guardar_Click" />
            <asp:Button ID="Eliminar" runat="server" Text="Elimnar" OnClick="Eliminar_Click"/>

    </div>

</asp:Content>
