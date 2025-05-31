<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursales.aspx.cs" Inherits="TP8_GRUPO_11.EliminarSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ejercicio 3</title>
    <style>
        body {
            margin: 0 auto;
            width: 960px;
            padding: 10px;
        }        
        
        .divHyperLinks {
            display: flex;
            justify-content: center;
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


        .divEliminar {
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
        <header>
        <div class="divHyperLinks">
            <asp:HyperLink runat="server" Text="Agregar Sucursal" NavigateUrl="~/AgregarSucursal.aspx"></asp:HyperLink>
            <asp:HyperLink runat="server" Text="Listado de Sucursales" NavigateUrl="~/ListadoSucursales.aspx"></asp:HyperLink>
            <asp:HyperLink runat="server" Text="Eliminar Sucursal" NavigateUrl="~/EliminarSucursal.aspx"></asp:HyperLink>
        </div>
            <h1>Eliminar Sucursales</h1>
    </header>
    <form id="form1" runat="server">
        <div>
            <section>

                <div class="divEliminar">
                    <asp:Label ID="lblBusqueda" runat="server" Text="Ingresar Id sucursal"  style="width: 250px"></asp:Label>
                        <div style="margin-right: 100px">
                            <div>
                                <asp:TextBox ID="txtEliminar" runat="server"  Style="margin-right: 30px; width: 200px"></asp:TextBox>
                                <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar surcusales" />
                                <br />
                                <br />
                                <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
                                <asp:RegularExpressionValidator 
                        ID="revTxxEliminar" runat="server" 
                        ErrorMessage="Debe ser un ID Numerico" Display="Dynamic" 
                        ControlToValidate="txtEliminar" ValidationExpression="^[0-9]*$" 
                        Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                </div>
            </section>
        </div>
        <asp:Label ID="lblEliminado" runat="server"></asp:Label>
    </form>
</body>
</html>
