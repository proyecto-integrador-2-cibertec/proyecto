package Negocio;

import java.util.ArrayList;

import Datos.MetodosPaqueteVuelo;
import Modelo.PaqueteVuelos;

public class PaqueteVuelosNegocio implements PaqueteVuelosDAO{
	
	MetodosPaqueteVuelo metodo = new MetodosPaqueteVuelo();

	@Override
	public ArrayList<PaqueteVuelos> ListarPaqueteVuelos() {
	 
		return metodo.ListarPaqueteVuelos();
	}

	@Override
	public void RegistrarPaqueteVuelos(PaqueteVuelos datos) {
	 
		metodo.RegistrarPaqueteVuelos(datos);
	}

}
