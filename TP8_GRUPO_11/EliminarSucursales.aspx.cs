﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TP8_GRUPO_11
{
    public partial class EliminarSucursales : System.Web.UI.Page
    {
        int totalSucursalesEliminadas = 0;
        int sucursalesEliminadas = 0;
        NegocioSucursal negocioSucursal = new NegocioSucursal();

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int numero = int.Parse(txtEliminar.Text);
            string mensajeRespuesta = "";

            DataTable data = negocioSucursal.getFiltro(txtEliminar.Text);

            if (data.Rows.Count == 1)
            {
                bool eliminadoOk = negocioSucursal.eliminarSucursal(numero);

                if (eliminadoOk)
                {
                    int totalSucursalesEliminadas = Session["TotalEliminadas"] != null ? (int)Session["TotalEliminadas"] : 0;

                    totalSucursalesEliminadas++;

                    Session["TotalEliminadas"] = totalSucursalesEliminadas;

                    lblTotalEliminadas.Text = "Total de Sucursales Eliminadas: " + totalSucursalesEliminadas.ToString();

                    lblMensaje.Text = "Se eliminó la sucursal.";
                    mensajeRespuesta += "ID: " + data.Rows[0][0].ToString() + "     ";
                    mensajeRespuesta += "Nombre: " + data.Rows[0][1].ToString() + "     ";
                    mensajeRespuesta += "Dirección: " + data.Rows[0][3].ToString();
                    lblMensaje.Text += "<br />El id eliminado contiene lo siguiente: " + mensajeRespuesta;

                    string acumulado = Convert.ToString(Session["Eliminados"]);
                    acumulado += data.Rows[0][1].ToString() + "<br />";
                    Session["Eliminados"] = acumulado;
                }
                else
                {
                    lblMensaje.Text = "No se eliminó la sucursal.";
                }
            }
            else
            {
                lblMensaje.Text = "No existe la sucursal";
            }
        }


        protected void btnMostrarIdEliminado_Click(object sender, EventArgs e)
        {
            string acumulado = Convert.ToString(Session["Eliminados"]);
            if (!string.IsNullOrEmpty(acumulado))
            {
                lblIdEliminado.Text = acumulado;
            }
            else
            {
                lblIdEliminado.Text = "Todavía no se eliminó ninguna sucursal";
            }
        }
    }
}

