package Negocio;

import java.util.ArrayList;

import Modelo.Paises;
import Modelo.Reserva;
import Modelo.Usuarios;

public interface ComprarPasajeDAO {
	
	public ArrayList<Reserva> ListarReserva();
	public boolean RegistrarReserva(Reserva bean);
	public boolean validarReserva(String s,String s2);
	public ArrayList<Reserva> ListarTipo_Pasaje();
	
	
}
