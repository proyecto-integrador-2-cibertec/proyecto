package Datos;

import java.util.ArrayList;

import java.sql.*;

import Modelo.Comprar;
import Modelo.Paises;
import Modelo.Reserva;
import Modelo.Usuarios;
import Negocio.ComprarDAO;
import Negocio.ReservaDAO;
import utils.MySqlConexion;

public class MetodosComprar implements ComprarDAO{

	
	
	
	






@Override
public ArrayList<Comprar> ListarComprar() {
	ArrayList<Comprar> lista = new ArrayList<Comprar>();
	
	try {
		PreparedStatement psta = MySqlConexion.getConexion().prepareStatement("select * from comprar_pasajes");
		ResultSet rs = psta.executeQuery();
		
		while(rs.next()) {
			Comprar p = new Comprar(rs.getInt(1), rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getDouble(9),rs.getInt(10));
			lista.add(p);
		}
		
		
		
		
		
	} catch(Exception e) {}
	return lista;
}




@Override
public boolean RegistrarComprar(Comprar bean) {

	try  {
	        	
PreparedStatement preparedStatement = MySqlConexion.getConexion().prepareStatement( "insert into comprar_pasajes(id_pasajes_c,id_reserva_r, cod_vuelo, tipo_pasaje_r,codigo_pais,"
		+ " destino_c, fecha_salida_c,num_doc,precio,num_asientos) values (null,null,?,?,?,?,?,?,?,?)");

        
          //  preparedStatement.setInt(1, bean.getId_pasajes_c());
           // preparedStatement.setString(2, bean.getId_reserva_r());
            preparedStatement.setString(1, bean.getCod_vuelo());
            preparedStatement.setString(2, bean.getTipo_pasaje_r());
            preparedStatement.setString(3, bean.getCodigo_pais()); 
            preparedStatement.setString(4, bean.getDestino_c());
            preparedStatement.setString(5, bean.getFecha_salida_c());
            preparedStatement.setString(6, bean.getNum_doc());
            preparedStatement.setDouble(7, bean.getPrecio_c());
            preparedStatement.setInt(8, bean.getNum_asientos());
             
            preparedStatement.executeUpdate();
   
            System.out.println("  compra:exitosa " );   
        return true;
    } 
    catch (SQLException e) 
    {
        System.out.println("Error insertando  compra: " + e.getMessage());
        return false;
    }
	
	
		

	
}





	
}
