using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TP8_GRUPO_11
{
    public partial class EliminarSucursales : System.Web.UI.Page
    {
        NegocioSucursal negocioSucursal = new NegocioSucursal();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int numero;

            if (int.TryParse(txtEliminar.Text, out numero))
            {
                bool eliminar = negocioSucursal.eliminarSucursal(numero);
                if (eliminar)
                {
                    lblMensaje.Text = "Se eliminó la sucursal.";
                }
                else
                {
                    lblMensaje.Text = "NO se eliminó la sucursal.";
                }
            }

        }
    }
}