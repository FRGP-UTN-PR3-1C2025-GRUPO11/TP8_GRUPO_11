﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace TP8_GRUPO_11
{
    public partial class ListadoSucursales : System.Web.UI.Page
    {
        NegocioSucursal negocio = new NegocioSucursal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable sucursal = negocio.getTabla();
                gvSucursales.DataSource = sucursal;
                gvSucursales.DataBind();
            }
        }


        protected void btnFiltro_Click(object sender, EventArgs e)
        {
            DataTable data;
            if (txtBusqueda.Text != "")
            {
                data = negocio.getFiltro(txtBusqueda.Text);

                if (data.Rows.Count > 0)
                {
                    gvSucursales.DataSource = data;
                    gvSucursales.DataBind();
                    lblMen.Text = "";
                }
                else
                {
                    gvSucursales.DataSource = null;
                    gvSucursales.DataBind();
                    lblMen.Text = "No se encontró ninguna sucursal con ese ID.";
                }
            }

            txtBusqueda.Text = string.Empty;
        }

        protected void btnMostrarTodo_Click(object sender, EventArgs e)
        {
            DataTable sucursal = negocio.getTabla();
            gvSucursales.DataSource = sucursal;
            gvSucursales.DataBind();
        }
    }
}