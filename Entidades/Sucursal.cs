using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Sucursal
    {
        private int idSucursal;
        private String NombreSucursal;
        private String DescripcionSucursal;
        private int idProvinciaSucursal;
        private String DireccionSucursal;

        public Sucursal()
        { }
        public int getIdSucursal()
        {
            return idSucursal;
        }
        public void setIdSucursal(int IdSucursal)
        {
            idSucursal = IdSucursal;
        }
        public String getNombreSucursal()
        {
            return NombreSucursal;
        }
        public void setNombreSucursal(String nombreSucursal)
        {
            NombreSucursal = nombreSucursal;
        }
        public String getDescripcionSucursal()
        {
            return DescripcionSucursal;
        }
        public void setDescripcionSucursal(String descripcionSucursal)
        {
            DescripcionSucursal = descripcionSucursal;
        }
        public String getDireccionSucursal()
        {
            return DireccionSucursal;
        }
        public void setDireccionSucursal(String direccionSucursal)
        {
            DireccionSucursal = direccionSucursal;
        }
        public int getProvinciaSucursal()
        {
            return idProvinciaSucursal;
        }

        public void setProvinciaSucursal(int IdProvinciaSucursal)
        {
            idProvinciaSucursal = IdProvinciaSucursal;
        }
    }
}
