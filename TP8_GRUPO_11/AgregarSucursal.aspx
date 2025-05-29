<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP8_GRUPO_11.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style>
        body {
            margin: 0 auto;
            width: 960px;
            padding: 10px;
        }
        .divHyperLinks {
            justify-content: center;
            display: flex;
            /*gap: 100px;*/
            text-align: center;
        }
            .divHyperLinks > a {
                text-decoration: none;
                color: white;
                font-size: 14px;
                font-weight: bolder;
                display: inline-block;
                background-color: #007BFF;
                padding: 7px 15px;
                border: 1px solid dodgerblue;
                cursor: pointer;
                opacity: 1; /* Default opacity */
                transition: opacity 0.3s ease; /* Smooth transition effect */
                font-family: Arial, sans-serif;
                width: 100%;
            }
            .divHyperLinks > a:hover 
            {
                opacity: 0.7;
                background-color: #0056b3;
            }
                        html {
    overflow-y: scroll;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="llbAgregar" runat="server" Text="Agregar Surcusal"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblNombre" runat="server" Text="Agregue su nombre"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server" style="margin-left: 26px; margin-top: 5px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ForeColor="#CC0000">Agregue Nombre</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" ForeColor="#CC0000">Agregue Descripcion</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblProvincia" runat="server" Text="Provincia"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Direccion"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ForeColor="#CC0000">Agregue Direccion</asp:RequiredFieldValidator>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAgregar" runat="server" Text="Agregar Surcusal" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
