package Negocio;

import java.util.ArrayList;

import Modelo.Paises;
import Modelo.Reserva;
import Modelo.Usuarios;

public interface ReservaDAO {
	
	public ArrayList<Reserva> ListarReserva();
	public boolean RegistrarReserva(Reserva bean);
	public ArrayList<Reserva> ListarTipo_Pasaje();
	
	
}
