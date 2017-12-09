package Negocio;

import java.util.ArrayList;

import Modelo.Cotizar;
import Modelo.Paises;
import Modelo.Reserva;
import Modelo.Usuarios;
import Modelo.ciudad;

public interface ciudadDAO {
	
	public ArrayList<ciudad> ListarCiudad(String cod);

}
