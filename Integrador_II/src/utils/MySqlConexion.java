package utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySqlConexion {
	
	public static Connection getConexion() {
		
		Connection cn = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cn = DriverManager.getConnection("jdbc:mysql://localhost/ProyectoIntegrador_II?user=root&password=mysql");
			
		} catch(Exception e) {}
		return cn;
		
	}

}
