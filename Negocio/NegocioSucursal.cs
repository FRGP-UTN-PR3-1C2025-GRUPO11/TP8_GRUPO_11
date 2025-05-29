using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using Entidades;
using System.Data;

namespace Negocio
{
    public class NegocioSucursal
    {
        public DataTable getTabla()
        {
            DaoSucursal dao = new DaoSucursal();
            return dao.getTablaSucursales();
        }

        public Sucursal get(int id)
        {
            DaoSucursal dao = new DaoSucursal();
            Sucursal suc = new Sucursal();
            suc.setIdSucursal(id);
            return dao.getSucursal(suc);
        }

        public bool eliminarCategoria(int id)
        {
            //Validar id existente 
            DaoSucursal dao = new DaoSucursal();
            Sucursal suc = new Sucursal();
            suc.setIdSucursal(id);
            int op = dao.eliminarSucursal(suc);
            if (op == 1)
                return true;
            else
                return false;
        }

        public bool agregarCategoria(String nombre)
        {
            int cantFilas = 0;

            Sucursal suc = new Sucursal();
            suc.setNombreSucursal(nombre);

            DaoSucursal dao = new DaoSucursal();
            if (dao.existeSucursal(suc) == false)
            {
                cantFilas = dao.agregarSucursal(suc);
            }

            if (cantFilas == 1)
                return true;
            else
                return false;
        }


        public DataTable getProvincias()
        {
            DaoSucursal dao = new DaoSucursal();
            return dao.getTablaProvincias();
        }
    }
}

