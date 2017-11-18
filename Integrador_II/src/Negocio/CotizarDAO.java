package Negocio;

import java.util.ArrayList;

import Modelo.Cotizar;
import Modelo.Paises;
import Modelo.Reserva;
import Modelo.Usuarios;

public interface CotizarDAO {
	
	public ArrayList<Cotizar> Listarcotizar();
	public boolean RegistrarReserva(Cotizar bean);
	
	public ArrayList<Cotizar> ListarTipo_Pasaje();
	
}
