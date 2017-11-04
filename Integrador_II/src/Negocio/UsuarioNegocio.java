package Negocio;

import Datos.MetodosUsuarios;
import Modelo.Usuarios;
import Modelo.Usuarios_Registrados;

public class UsuarioNegocio implements UsuarioDAO {
	
	MetodosUsuarios metodo = new MetodosUsuarios();

	@Override
	public boolean IniciarSesion(String correo, String password) {
		// TODO Auto-generated method stub
		return metodo.IniciarSesion(correo, password);
	}

	@Override
	public boolean RegistrarUsuarios(Usuarios_Registrados bean) {
		
		return metodo.RegistrarUsuarios(bean);
	}
	
	

}
