package Datos;

import java.util.ArrayList;

import java.sql.*;

import Modelo.Paises;
import Modelo.Reserva;
import Modelo.Usuarios;
import Negocio.ReservaDAO;
import utils.MySqlConexion;

public class MetodosReserva implements ReservaDAO{

	@Override
	public ArrayList<Reserva> ListarReserva() {
		
		ArrayList<Reserva> lista = new ArrayList<Reserva>();
		
		try {
			PreparedStatement psta = MySqlConexion.getConexion().prepareStatement("select * from Reservar_Vuelo");
			ResultSet rs = psta.executeQuery();
			
			while(rs.next()) {
				Reserva p = new Reserva(rs.getInt(1), rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
				lista.add(p);
			}
			
		} catch(Exception e) {}
		return lista;
	}

	
	
	
public boolean RegistrarReserva(Reserva bean) {
		
		
		try  {
			
			
		        	   System.out.println("ingreso");
	PreparedStatement preparedStatement = MySqlConexion.getConexion().prepareStatement("\r\n" + 
						"insert into Reservar_Vuelo (null,num_doc,nom_pasajero_r,tipo_pasaje_r,fecha_salida_r,codigo_pais_r,ciudad_origen_r,ciudad_destino_r)values(null,?,?,?,?,?,?,?)");

	        			
	           // preparedStatement.setInt(1, bean.getId_reserva_r());
	            preparedStatement.setString(2, bean.getNum_doc());
	            preparedStatement.setString(3, bean.getNom_pasajero_r());
	            preparedStatement.setString(4, bean.getTipo_pasaje_r());
	            preparedStatement.setString(5, bean.getFecha_salida_r());
	            preparedStatement.setString(6, bean.getCodigo_pais_r()); 
	            preparedStatement.setString(7, bean.getCiudad_origen_r());
	            preparedStatement.setString(8, bean.getCiudad_destino_r());
	             
	            preparedStatement.executeUpdate();
	            
	        	
	        
	        
            return true;
        } 
        catch (SQLException e) 
        {
            System.out.println("Error insertando al Reserva: " + e.getMessage());
            return false;
        }
		
		
			
	
	}



@Override
public ArrayList<Reserva> ListarTipo_Pasaje() {
	ArrayList<Reserva> lista = new ArrayList<Reserva>();
	
	try {
		PreparedStatement psta = MySqlConexion.getConexion().prepareStatement("select * from Tipo_Pasaje");
		ResultSet rs = psta.executeQuery();
		
		while(rs.next()) {
			Reserva p = new Reserva(rs.getInt(1), rs.getString(2));
			lista.add(p);
		}
		
	} catch(Exception e) {}
	return lista;
}





	
}
