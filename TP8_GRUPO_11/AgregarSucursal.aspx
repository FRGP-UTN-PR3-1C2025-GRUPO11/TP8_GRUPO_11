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
        </div>
    </form>
</body>
</html>
