package Datos;

import java.util.ArrayList;

import java.sql.*;
import Modelo.Paises;
import Modelo.Reserva;
import Negocio.PaisesDAO;
import utils.MySqlConexion;

public class MetodosPaises implements PaisesDAO{

	@Override
	public ArrayList<Paises> ListarPaises() {
		
		ArrayList<Paises> lista = new ArrayList<Paises>();
		
		try {
			PreparedStatement psta = MySqlConexion.getConexion().prepareStatement("select * from paises order by nombre_pais asc;");
			ResultSet rs = psta.executeQuery();
			
			while(rs.next()) {
				Paises p = new Paises(rs.getString(1), rs.getString(2));
				lista.add(p);
			}
			
			
			
			
			
		} catch(Exception e) {}
		return lista;
	}

	@Override
	public ArrayList<Paises> ListarCiudades(String cod) {
		// TODO Auto-generated method stub
ArrayList<Paises> lista = new ArrayList<Paises>();
		
		try {
			
			PreparedStatement psta = MySqlConexion.getConexion().prepareStatement("select nombre_ciudad from ciudades where codigo_pais='"+cod+"'");
			
			ResultSet rs = psta.executeQuery();
		
			while(rs.next()) {
				Paises p = new Paises(rs.getString("nombre_ciudad"));
				
				lista.add(p);
				System.out.println(p+"error");
			}
			
		
		} catch(Exception e) {
			System.out.println(e+"error");
		}
		return lista;
	}

	


	
}
