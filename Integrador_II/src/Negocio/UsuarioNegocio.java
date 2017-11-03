package Negocio;

import Datos.MetodosUsuarios;
import Modelo.Usuarios;

public class UsuarioNegocio implements UsuarioDAO {
	
	MetodosUsuarios metodo = new MetodosUsuarios();

	@Override
	public boolean IniciarSesion(String correo, String password) {
		// TODO Auto-generated method stub
		return metodo.IniciarSesion(correo, password);
	}

	@Override
	public void RegistrarUsuarios(Usuarios bean) {
		metodo.RegistrarUsuarios(bean);
		
	}
	
	

}
