package Negocio;

import java.util.ArrayList;

import Datos.MetodosComprar;
import Datos.MetodosReserva;
import Modelo.Comprar;
import Modelo.Paises;
import Modelo.Reserva;
import Modelo.TipoDocumento;

public class ComprarNegocio implements ComprarDAO{

	MetodosComprar metodo=new MetodosComprar();
	
	


	@Override
	public ArrayList<Comprar> ListarComprar() {
		// TODO Auto-generated method stub
		return metodo.ListarComprar();
	}



	@Override
	public boolean RegistrarComprar(Comprar bean) {
		// TODO Auto-generated method stub
		return metodo.RegistrarComprar(bean);
	}






	

}
