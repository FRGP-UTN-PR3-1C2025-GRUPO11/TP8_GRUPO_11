using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


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
                ddlEj1.Items.Insert(0, new ListItem("-- Seleccionar--", "0"));
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Boolean estado = false;

            int selectedInt = int.Parse(ddlEj1.SelectedValue);

            string nombreSucursal = txtNombre.Text;
            string direccionSucursal = txtDireccion.Text;
            string descripcionSucursal = txtDescripcion.Text;
            int idProvincia = int.Parse(ddlEj1.SelectedValue);

            Regex nombreRegex = new Regex(@"^(?![0-9]+$)[a-zA-Z0-9\s]+$");
            Regex direccionRegex = new Regex(@"^(?![0-9]+$)[a-zA-Z0-9\s]+$");

            if (!nombreRegex.IsMatch(nombreSucursal))
            {
                lblErrorNom.Text = "El nombre debe contener texto y puede incluir números.";
                return;
            }
            else
            {
                lblErrorNom.Text = "";
            }

            if (!direccionRegex.IsMatch(direccionSucursal))
            {
                lblErrorDirec.Text = "La dirección debe contener texto y números.";
                return;
            }
            else
            {
                lblErrorDirec.Text = "";
            }


            estado = negocioSucursal.agregarSucursal(nombreSucursal, descripcionSucursal, idProvincia, direccionSucursal);

            if (estado == true)
            {
                respuesta.Text = "Se ha agregado exitosamente";
            }
            else
            {
                respuesta.Text = "No se agregó la sucursal";
            }

            DataTable dt = negocioSucursal.getProvincias();

            ddlEj1.DataSource = dt;
            ddlEj1.DataTextField = "DescripcionProvincia";
            ddlEj1.DataValueField = "Id_Provincia";
            ddlEj1.DataBind();
            limpiar();
            ddlEj1.SelectedIndex = 0;
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
            ddlEj1.SelectedIndex = 0;

        }
    }
}