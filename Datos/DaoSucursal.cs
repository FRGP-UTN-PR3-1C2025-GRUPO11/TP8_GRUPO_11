using Entidades;
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
            sucursal.setNombreSucursal(tabla.Rows[0][1].ToString());
            sucursal.setDescripcionSucursal(tabla.Rows[0][2].ToString());
            sucursal.setProvinciaSucursal(Convert.ToInt32(tabla.Rows[0][3].ToString()));
            sucursal.setDireccionSucursal(tabla.Rows[0][4].ToString());
            return sucursal;
        }

        public Boolean existeSucursal(Sucursal sucursal)
        {
            string consulta = "SELECT * FROM SUCURSAL WHERE ID_SUCURSAL='" + sucursal.getIdSucursal() + "'";
            return ds.existe(consulta);
        }

        public DataTable getTablaSucursales()
        {
            DataTable tabla = ds.ObtenerTabla("Sucursal", @"
           SELECT 
            Sucursal.NombreSucursal AS [Nombre],
            Sucursal.DescripcionSucursal AS [Descripcion],
            Provincia.DescripcionProvincia AS [Provincia],
            Sucursal.DireccionSucursal AS [Direccion]
            FROM Sucursal
            INNER JOIN Provincia ON Sucursal.Id_ProvinciaSucursal = Provincia.Id_Provincia");
            return tabla;
        }

        private void ArmarParametrosSucursalAgregar(ref SqlCommand Comando, Sucursal sucursal)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@NombreSucursal", SqlDbType.VarChar);
            SqlParametros.Value = sucursal.getNombreSucursal();
            SqlParametros = Comando.Parameters.Add("@DescripcionSucursal", SqlDbType.VarChar);
            SqlParametros.Value = sucursal.getDescripcionSucursal();
            SqlParametros = Comando.Parameters.Add("@Id_ProvinciaSucursal", SqlDbType.Int);
            SqlParametros.Value = sucursal.getProvinciaSucursal();
            SqlParametros = Comando.Parameters.Add("@DireccionSucursal", SqlDbType.VarChar);
            SqlParametros.Value = sucursal.getDireccionSucursal();
        }

        public int agregarSucursal(Sucursal sucursal)
        {
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

        public int eliminarSucursal(Sucursal sucursal)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosSucursalEliminar(ref comando, sucursal);
            return ds.EjecutarProcedimientoAlmacenado(comando, "SP_EliminarSucursal");
        }

        public DataTable getTablaProvincias()
        {
            DataTable tabla = ds.ObtenerTabla("Provincia", "SELECT * FROM Provincia");
            return tabla;
        }
        public DataTable getTablaFiltrar(string idSucursal)
        {
            DataTable tabla = ds.ObtenerTabla("Sucursal", @"SELECT S.Id_Sucursal AS [Id], " +
                            "S.NombreSucursal AS [Nombre], " +
                            "S.DescripcionSucursal AS [Descripción]," +
                            "P.DescripcionProvincia as [Provincia] ," +
                            "S.DireccionSucursal as [Dirección] FROM SUCURSAL AS [S]" +
                            "INNER JOIN PROVINCIA AS [P] ON S.Id_ProvinciaSucursal = P.Id_Provincia WHERE S.Id_Sucursal = " + idSucursal);
            return tabla;
        }

    }
}
