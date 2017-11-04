package Negocio;

import Modelo.Usuarios;
import Modelo.Usuarios_Registrados;

public interface UsuarioDAO  {
	
	public boolean IniciarSesion(String correo, String password);
	public boolean RegistrarUsuarios(Usuarios_Registrados bean);
	
	
}
