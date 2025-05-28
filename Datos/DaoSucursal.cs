using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class DaoSucursal
    {
        AccesoDatos ds = new AccesoDatos();
        public Sucursal getSucursal(Sucursal sucursal)
        {
            DataTable tabla = ds.ObtenerTabla("SUCURSAL", "SELECT * FROM SUCURSAL WHERE ID_SUCURSAL =" + sucursal.getIdSucursal());
            sucursal.setIdSucursal(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            sucursal.setNombreSucursal(tabla.Rows[0][1].ToString());
            sucursal.setDescripcionSucursal(tabla.Rows[0][2].ToString());
            return sucursal;
        }

        public Boolean existeSucursal(Sucursal sucursal)
        {
            string consulta = "SELECT * FROM SUCURSAL WHERE ID_SUCURSAL='" + sucursal.getNombreSucursal() + "'";
            return ds.existe(consulta);
        }

        public DataTable getTablaSucursales()
        {
            // List<Sucursal> lista = new List<Sucursal>();
            DataTable tabla = ds.ObtenerTabla("Sucursal", "SELECT * FROM SUCURSAL");
            return tabla;
        }

        public int eliminarSucursal(Sucursal sucursal)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosSucursalEliminar(ref comando, sucursal);
            return ds.EjecutarProcedimientoAlmacenado(comando, "SP_EliminarSucursal");
        }


        public int agregarSucursal(Sucursal sucursal)
        {

            sucursal.setId_Sucursal(ds.ObtenerMaximo("SELECT max(id_Sucursal) FROM Sucursal") + 1);
            SqlCommand comando = new SqlCommand();
            ArmarParametrosSucursalAgregar(ref comando, sucursal);
            return ds.EjecutarProcedimientoAlmacenado(comando, "SP_AgregarSucursal");
        }

        private void ArmarParametrosSucursalEliminar(ref SqlCommand Comando, Sucursal sucursal)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDSUCURSAL", SqlDbType.Int);
            SqlParametros.Value = sucursal.getIdSucursal();
        }

        private void ArmarParametrosSucursalAgregar(ref SqlCommand Comando, Sucursal sucursal)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDSUCURSAL", SqlDbType.Int);
            SqlParametros.Value = sucursal.getIdSucursal();
            SqlParametros = Comando.Parameters.Add("@NOMBRESUCURSAL", SqlDbType.VarChar);
            SqlParametros.Value = sucursal.getNombreSucursal();
        }
    }
}
