<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursales.aspx.cs" Inherits="TP8_GRUPO_11.ListadoSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ejercicio 2</title>
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


        .divBusqueda {
            margin: 15px auto;
            margin-bottom: 50px;
            display: flex;
            gap: 10px;
            height: 50px;
        }

        table {
    width: 100%;
    border-collapse: collapse;
    font-family: Arial, sans-serif;
    text-align: left;
    border-radius: 8px;
    overflow: hidden;
}

    th, td {
        padding: 12px;
        border-bottom: 1px solid #ddd;
    }

th {
    background-color: #007BFF;
    color: white;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

tr:hover {
    background-color: #ddd; 
    transition: 0.3s ease-in-out;
}
html {
    overflow-y: scroll;
}

.no-wrap-grid td,
.no-wrap-grid th {
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    max-width: 150px;
}
.no-wrap-grid td:nth-child(1),
.no-wrap-grid th:nth-child(1)
{
    width: 20px;
}
.no-wrap-grid td:nth-child(2),
.no-wrap-grid th:nth-child(2),
.no-wrap-grid td:nth-child(4),
.no-wrap-grid th:nth-child(4),
.no-wrap-grid td:nth-child(5),
.no-wrap-grid th:nth-child(5) {
    width: 150px;
}

.btn-custom {
    background-color: #007BFF;
    color: white;
    border: none;
    padding: 10px 20px;
    font-weight: bold;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.btn-custom:hover {
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
               <asp:TextBox ID="txtBusqueda" runat="server"></asp:TextBox>
               <asp:Button ID="btnFiltro" runat="server" OnClick="btnFiltro_Click" Text="Filtrar"  CssClass="btn-custom"/>
               <asp:Button ID="btnMostrarTodo" runat="server" OnClick="btnMostrarTodo_Click" Text="Mostrar todos"  CssClass="btn-custom"/>
        </p>
        <p>
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        </p>
        <h1>Listar Sucursal </h1>
                <asp:GridView ID="gvSucursales" runat="server">
                </asp:GridView>
        
    </header>
    </form>
</body>
</html>
