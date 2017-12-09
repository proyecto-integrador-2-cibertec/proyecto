package Negocio;

import java.util.ArrayList;

import Modelo.Comprar;
import Modelo.Cotizar;
import Modelo.Paises;
import Modelo.Reserva;
import Modelo.Usuarios;
import Modelo.ciudad;

public interface ComprarDAO {
	
	public ArrayList<Comprar> ListarComprar();	
	public boolean RegistrarComprar(Comprar bean);
	
}
