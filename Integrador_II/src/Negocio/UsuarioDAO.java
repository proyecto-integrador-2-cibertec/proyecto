package Negocio;

import Modelo.Usuarios;

public interface UsuarioDAO  {
	
	public boolean IniciarSesion(String correo, String password);
	public void RegistrarUsuarios(Usuarios bean);
	

}
