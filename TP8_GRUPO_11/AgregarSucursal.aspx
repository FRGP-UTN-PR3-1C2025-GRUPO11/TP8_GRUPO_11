﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP8_GRUPO_11.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ejercicio 1</title>
        <style>
        html {
            overflow-y: scroll;
        }
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
        #datosSucursal {
            display: flex;
            flex-direction: column;
            gap: 10px;
            margin-bottom: 15px;
        }
        .formElement {
            display: flex;
            justify-content: left;
            gap: 10px;
            flex-direction: row;
        }

        .formElement > select,
        .formElement > textarea,
        .formElement > input {
            width: 200px
        }

        .formElement > :nth-child(1) {
            width: 160px;
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
            <h1>Agregar Sucursal</h1>
    </header>
    <main>
    <form id="form1" runat="server">
        <div>
            <section>
                <div id="datosSucursal">
                     <%-- NOMBRE SUCURSAL --%>
                    <div id="divNombreSucursal" class="formElement">
                        <asp:Label ID="lblNombre" runat="server" Text="Agregue su nombre"></asp:Label>
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre">Agregue Nombre</asp:RequiredFieldValidator>
                        <asp:Label ID="lblErrorNom" runat="server"></asp:Label>
                    </div>

                    <%-- DESCRIPCION SUCURSAL --%>
                    <div id="divDescripcionSucursal" class="formElement">
                        <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion"></asp:Label>
                        <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion">Agregue Descripcion</asp:RequiredFieldValidator>
                    </div>

                    <%-- PROVINCIAS SUCURSAL --%>
                    <div id="divProvinciaSucursal" class="formElement">
                        <asp:Label ID="lblProvincia" runat="server" Text="Provincia"></asp:Label>
                        <asp:DropDownList ID="ddlEj1" runat="server">
                        </asp:DropDownList>
                    </div>

                    <%-- DIRECCION SUCURSAL --%>
                    <div id="DireccionSucursal" class="formElement">
                        <asp:Label ID="Label1" runat="server" Text="Direccion"></asp:Label>
                        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion">Agregue Direccion</asp:RequiredFieldValidator>
                        <asp:Label ID="lblErrorDirec" runat="server"></asp:Label>
                    </div>
                </div>
            </section>
            <div style="margin-left: 160px">
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" CssClass="btn-custom" OnClick="btnLimpiar_Click" CausesValidation="False" />
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar Sucursal" OnClick="btnAgregar_Click" CssClass="btn-custom" />
            </div>
            <div>
                <asp:Label ID="respuesta" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
        </main>
</body>
</html>
