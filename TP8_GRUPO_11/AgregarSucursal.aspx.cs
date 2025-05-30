using System;
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
    public partial class WebForm1 : System.Web.UI.Page
    {
        NegocioSucursal negocioSucursal = new NegocioSucursal();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        if (!IsPostBack)
            {

                DataTable dt = negocioSucursal.getProvincias();

                ddlEj1.DataSource = dt;
                ddlEj1.DataTextField = "DescripcionProvincia"; 
                ddlEj1.DataValueField = "Id_Provincia";    
                ddlEj1.DataBind();
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            NegocioSucursal nuevaSucursal = new NegocioSucursal();
            bool agregado = nuevaSucursal.agregarSucursal(txtNombre.Text, txtDescripcion.Text, int.Parse(ddlEj1.SelectedValue), txtDireccion.Text);

            if (agregado) {
                respuesta.Text = "Agregado con éxito.";
            }
            else
            {
                respuesta.Text = "Hubo un error.";
            }
            limpiar();
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            limpiar();
        }

        protected void limpiar()
        {
            txtNombre.Text = "";
            txtDescripcion.Text = "";
            txtDireccion.Text = "";

        }
    }
}