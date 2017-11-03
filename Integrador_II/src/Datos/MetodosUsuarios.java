package Datos;

import java.sql.*;

import Modelo.Usuarios;
import Negocio.UsuarioDAO;
import utils.MySqlConexion;

public class MetodosUsuarios implements UsuarioDAO {

	public boolean IniciarSesion(String correo, String password) {

		try {
			PreparedStatement psta = MySqlConexion.getConexion().prepareStatement("select * from usuarios where correo_usuario = ? && pass_usuario=?");
			psta.setString(1, correo);
			psta.setString(2, password);
			ResultSet rs = psta.executeQuery();
			
			if(rs.next()){  
	            String str1, str2;  
	            str1=rs.getString(5);  
	            str2=rs.getString(6);  
	            if(str1.equals(correo) && str2.equals(password)){  
	                return true;  
	            }  
	            else 
                    return false;  
	        }  
			
		} catch(Exception e) {}
		
		return false;
		
	}
	
	public void RegistrarUsuarios(Usuarios bean) {
		
		try {
			PreparedStatement psta = MySqlConexion.getConexion().prepareStatement(
					"insert into usuarios(id_usuario, nom_usuario, ape_usuario, fecha_nac, correo_usuario, pass_usuario, codigo_pais, codigo_doc, num_doc) values (null,?,?,?,?,?,?,?,?)");
			psta.setString(1, bean.getNombreUsuario());
			psta.setString(2, bean.getApellidoUsuario());
			psta.setString(3, bean.getFechaNacimiento());
			psta.setString(4, bean.getCorreo());
			psta.setString(5, bean.getPassword());
			psta.setString(6, bean.getCodigoPais());
			psta.setString(7, bean.getCodigoDocumento());
			psta.setInt(8, bean.getNumeroDocumento());
			psta.executeUpdate();
			
			
		} catch (Exception e) {
			
		}
	}
}
