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
    }
}