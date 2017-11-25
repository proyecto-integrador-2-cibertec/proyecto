package Negocio;

import java.util.ArrayList;


import Datos.MetodosReserva;
import Modelo.Paises;
import Modelo.Reserva;
import Modelo.TipoDocumento;

public class ReservaNegocio implements ReservaDAO{

	MetodosReserva metodo=new MetodosReserva();
	
	

	@Override
	public ArrayList<Reserva> ListarReserva() {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public boolean RegistrarReserva(Reserva bean) {
		// TODO Auto-generated method stub
		return metodo.RegistrarReserva(bean);
	}



	@Override
	public ArrayList<Reserva> ListarTipo_Pasaje() {
		
		return metodo.ListarTipo_Pasaje();
	}






	

}
