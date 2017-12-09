package Negocio;

import java.util.ArrayList;

import Datos.MetodosCiudad;
import Datos.MetodosCotizar;
import Datos.MetodosPaises;
import Modelo.Cotizar;
import Modelo.Paises;
import Modelo.ciudad;

public class CiudadNegocio implements ciudadDAO{

	
MetodosCiudad metodo=new MetodosCiudad();
	

	@Override
	public ArrayList<ciudad> ListarCiudad(String cod) {
		// TODO Auto-generated method stub
		return metodo.ListarCiudad(cod);
	}

	

	
	
	

}
