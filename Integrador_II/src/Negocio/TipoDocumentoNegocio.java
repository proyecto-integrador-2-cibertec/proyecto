package Negocio;

import java.util.ArrayList;

import Datos.MetodosDocumento;
import Modelo.TipoDocumento;

public class TipoDocumentoNegocio implements TipoDocumentoDAO{

	MetodosDocumento metodo=new MetodosDocumento();
	
	@Override
	public ArrayList<TipoDocumento> ListarDocumentos() {
		
		return metodo.ListarDocumentos();
	}
	
	

}
