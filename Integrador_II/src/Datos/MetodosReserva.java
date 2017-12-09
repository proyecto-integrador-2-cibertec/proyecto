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
				Reserva p = new Reserva(rs.getInt(1), rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getDouble(8),rs.getInt(9));
				lista.add(p);
			}
			
		} catch(Exception e) {}
		return lista;
	}

	
	
	
public boolean RegistrarReserva(Reserva bean) {
		
		
		try  {
			
			
		        	
	PreparedStatement preparedStatement = MySqlConexion.getConexion().prepareStatement("\r\n" + 
						"insert into Reservar_Vuelo (id_reserva_r,num_doc,nom_pasajero_r,tipo_pasaje_r,fecha_salida_r,codigo_pais_r,ciudad_origen_r,precio,asientos)values(null,?,?,?,?,?,?,?,?)");

	        			
	        //   preparedStatement.setInt(1, bean.getId_reserva_r());
	            preparedStatement.setString(1, bean.getNum_doc());
	            preparedStatement.setString(2, bean.getNom_pasajero_r());
	            preparedStatement.setString(3, bean.getTipo_pasaje_r());
	            preparedStatement.setString(4, bean.getFecha_salida_r());
	            preparedStatement.setString(5, bean.getCodigo_pais_r()); 
	            preparedStatement.setString(6, bean.getCiudad_origen_r());
	            preparedStatement.setDouble(7, bean.getPrecio());
	            preparedStatement.setInt(8, bean.getNumero());
	             
	            preparedStatement.executeUpdate();
	            
	        	
	        
	        
            return true;
        } 
        catch (SQLException e) 
        {
            System.out.println("Error insertando  Reserva: " + e.getMessage());
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




@Override
public boolean validarReserva(String dni, String correo) {
	
	try  {

		Connection con = new MySqlConexion().getConexion();
        Statement stm = con.createStatement();
        ResultSet rs = stm.executeQuery("select * from usuarios  where  num_doc='"+dni+"' or correo_usuario='"+correo+"'");
       
        
        int c=0;
          if(rs.next()) {
        	  c=rs.getInt(1);}
        
        	if (c>1) {
        		   System.out.println("Usuario  true");
        		return true; 
        	}else {
        	
        		
	        	rs.close();
	        	stm.close();
	        	
        	}
        	
        	
        	System.out.println("Usuario  false");
        	
        	return false;
    		 
        
        
    } 
    catch (SQLException e) 
    {
        System.out.println("Error insertando  Reserva: " + e.getMessage());
        return false;
    }
	
	
		
}





	
}
