package Negocio;

import java.util.ArrayList;

import Modelo.Paises;

public interface PaisesDAO {
	
	public ArrayList<Paises> ListarPaises();
	public ArrayList<Paises> ListarCiudades(String cod);

}
