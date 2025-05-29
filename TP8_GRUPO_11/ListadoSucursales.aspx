<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursales.aspx.cs" Inherits="TP8_GRUPO_11.ListadoSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ejercicio 2</title>
    <style>
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
    </style>
</head>
<body>
    <form id="formularioEj2" runat="server">
    <header>
        <div class="divHyperLinks">
            <asp:HyperLink runat="server" Text="Agregar Sucursal" NavigateUrl="~/AgregarSucursal.aspx"></asp:HyperLink>
            <asp:HyperLink runat="server" Text="Listado de Sucursales" NavigateUrl="~/ListadoSucursales.aspx"></asp:HyperLink>
            <asp:HyperLink runat="server" Text="Eliminar Sucursal" NavigateUrl="~/EliminarSucursal.aspx"></asp:HyperLink>
        </div>
           <p>
               <asp:Label ID="lblBusqueda" runat="server" Text="Busqueda por surcusal"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:TextBox ID="txtBusqueda" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="btnFiltro" runat="server" OnClick="btnFiltro_Click" Text="Filtrar" />
&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p>
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        </p>
        <h1>Listar Sucursal
                <asp:GridView ID="gvSucursales" runat="server">
                </asp:GridView>
        </h1>
    </header>
    </form>
</body>
</html>
