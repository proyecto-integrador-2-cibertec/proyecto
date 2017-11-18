package Datos;

import java.util.ArrayList;

import java.sql.*;

import Modelo.Cotizar;
import Modelo.Paises;
import Negocio.CotizarDAO;
import Negocio.PaisesDAO;
import utils.MySqlConexion;

public class MetodosCotizar implements CotizarDAO{

	

	

	@Override
	public boolean RegistrarReserva(Cotizar bean) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public ArrayList<Cotizar> ListarTipo_Pasaje() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Cotizar> Listarcotizar() {
   ArrayList<Cotizar> lista = new ArrayList<Cotizar>();
		
		try {
			int t=0;
			PreparedStatement psta2 = MySqlConexion.getConexion().prepareStatement("select count(*) from cotizar");
			
			PreparedStatement psta = MySqlConexion.getConexion().prepareStatement("select * from cotizar");
			
			ResultSet rs2 = psta2.executeQuery();
			ResultSet rs = psta.executeQuery();
			
			while(rs2.next()) {
			  t = rs.getInt(1);
				
			}
			while(rs.next()) {
				Cotizar p = new Cotizar(rs.getInt(1), rs.getString(2),rs.getString(3), rs.getString(4),rs.getString(5), rs.getString(6),rs.getString(7),rs.getString(8),rs.getInt(9));
				lista.add(p);
			}
			
		} catch(Exception e) {
			
		}
		return lista;
	}

}
