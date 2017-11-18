package Negocio;

import java.util.ArrayList;

import Datos.MetodosCotizar;
import Datos.MetodosPaises;
import Modelo.Cotizar;
import Modelo.Paises;

public class CotizarNegocio implements CotizarDAO{

	MetodosCotizar metodo=new MetodosCotizar();

	@Override
	public ArrayList<Cotizar> Listarcotizar() {
		// TODO Auto-generated method stub
		return metodo.Listarcotizar();
	}

	@Override
	public boolean RegistrarReserva(Cotizar bean) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public ArrayList<Cotizar> ListarTipo_Pasaje() {
		// TODO Auto-generated method stub
		return null;
	}
	

	
	

}
