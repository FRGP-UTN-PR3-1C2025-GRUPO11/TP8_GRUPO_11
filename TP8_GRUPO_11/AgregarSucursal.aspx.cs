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
    }
}