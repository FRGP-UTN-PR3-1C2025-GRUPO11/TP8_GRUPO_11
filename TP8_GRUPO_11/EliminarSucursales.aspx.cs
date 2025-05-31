using System;
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
        NegocioSucursal negocioSucursal = new NegocioSucursal();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int numero = int.Parse(txtEliminar.Text);


            string eliminado = "";

            DataTable data = negocioSucursal.getFiltro(txtEliminar.Text);



            foreach (DataRow row in data.Rows)
            {
                eliminado += "ID: " + row["Id"] + "     ";
                eliminado += "Nombre: " + row["Nombre"] + "     ";
                eliminado += "Dirección: " + row["Dirección"] ;

            }
            lblEliminado.Text = "El id eliminado contiene lo siguiente:" + eliminado;

        


            bool eliminar = negocioSucursal.eliminarSucursal(numero);
                if (eliminar)
                {
                    lblMensaje.Text = "Se eliminó la sucursal.";
                }
                else
                {
                    lblMensaje.Text = "NO se eliminó la sucursal.";
                    lblEliminado.Text = "";
                }

           

            txtEliminar.Text = "";
        }
    }
}

