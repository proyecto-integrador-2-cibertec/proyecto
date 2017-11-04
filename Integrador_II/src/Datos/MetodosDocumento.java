package Datos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Modelo.TipoDocumento;
import Negocio.TipoDocumentoDAO;
import utils.MySqlConexion;

public class MetodosDocumento implements TipoDocumentoDAO {

	@Override
	public ArrayList<TipoDocumento> ListarDocumentos() {
		
		ArrayList<TipoDocumento> lista = new ArrayList<TipoDocumento>();
		try {
			PreparedStatement psta = MySqlConexion.getConexion().prepareStatement("select * from tipo_documento");
			ResultSet rs = psta.executeQuery();
			
			while(rs.next()) {
				TipoDocumento t = new TipoDocumento(rs.getString(1), rs.getString(2));
				lista.add(t);
			}
			
		} catch(Exception e) {}
		return lista;
	}

}
