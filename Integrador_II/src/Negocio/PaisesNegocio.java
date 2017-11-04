package Negocio;

import java.util.ArrayList;

import Datos.MetodosPaises;
import Modelo.Paises;

public class PaisesNegocio implements PaisesDAO{

	MetodosPaises metodo=new MetodosPaises();
	
	@Override
	public ArrayList<Paises> ListarPaises() {
		
		return metodo.ListarPaises();
	}
	
	

}
