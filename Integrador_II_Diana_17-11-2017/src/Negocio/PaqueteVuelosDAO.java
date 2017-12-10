package Negocio;

import java.util.ArrayList;

import Modelo.PaqueteVuelos;

 

public interface PaqueteVuelosDAO {
	
	public ArrayList<PaqueteVuelos> ListarPaqueteVuelos();
	public void RegistrarPaqueteVuelos(PaqueteVuelos datos);

}
