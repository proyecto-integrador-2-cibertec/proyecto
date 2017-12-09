package Datos;

import java.util.ArrayList;

import java.sql.*;
import Modelo.Paises;
import Modelo.Reserva;
import Modelo.ciudad;
import Negocio.PaisesDAO;
import Negocio.ciudadDAO;
import utils.MySqlConexion;

public class MetodosCiudad implements ciudadDAO{

	

	@Override
	public ArrayList<ciudad> ListarCiudad(String cod) {
		ArrayList<ciudad> lista = new ArrayList<ciudad>();
try {
			PreparedStatement psta = MySqlConexion.getConexion().prepareStatement("select nombre_ciudad from ciudades where codigo_pais='"+cod+"'");
			
			ResultSet rs = psta.executeQuery();
		
			while(rs.next()) {
           ciudad p = new ciudad(rs.getString("nombre_ciudad"));
          
         
				lista.add(p);
			}
			
		} catch(Exception e) {
			System.out.println(e+"error");
		}
		return lista;
	}

	


	
}

