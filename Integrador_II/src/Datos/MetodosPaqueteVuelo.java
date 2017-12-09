package Datos;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import utils.MySqlConexion;

import Modelo.PaqueteVuelos;
import Negocio.PaqueteVuelosDAO;
 

 

public class MetodosPaqueteVuelo implements PaqueteVuelosDAO{
	
public ArrayList<PaqueteVuelos> ListarPaqueteVuelos() {
		
		ArrayList<PaqueteVuelos> datos = new ArrayList<PaqueteVuelos>();
		
		Connection Cn = MySqlConexion.getConexion();
		
		try{
			CallableStatement csta = Cn.prepareCall("CALL listarPaquetes()");
			
			ResultSet rs = csta.executeQuery();
			
			while (rs.next()) {
				
				PaqueteVuelos am = new PaqueteVuelos(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getDouble(7), rs.getInt(8));
			
				datos.add(am);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return datos;
		
	}
	

public void RegistrarPaqueteVuelos(PaqueteVuelos datos) {
	
	Connection Cn = MySqlConexion.getConexion();
	
	try {
		
		CallableStatement csta = Cn.prepareCall("CALL InsertarPaquetes(?,?,?,?,?,?,?,?)");
		
		csta.setString(1, datos.getCod_vuelo());
		csta.setString(2, datos.getOrigen());
		csta.setString(3, datos.getDestino());
		csta.setString(4, datos.getHora_salida());
		csta.setString(5, datos.getHora_llegada());
		csta.setString(6, datos.getTipo_vuelo());
		csta.setDouble(7, datos.getPrecio());
		csta.setInt(8, datos.getNum_asientos());
		
		csta.executeQuery();
				
	} catch (Exception e) {
		e.printStackTrace();
	}
	
}

}
