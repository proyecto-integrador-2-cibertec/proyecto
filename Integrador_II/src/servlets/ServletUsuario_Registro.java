package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Usuarios_Registrados;
import Negocio.UsuarioNegocio;
import utils.MySqlConexion;

/**
 * Servlet implementation class ServletUsuario
 * WebServlet(name = "Registro", urlPatterns = {"/register"})
 */


@WebServlet("/ServletUsuario")
public class ServletUsuario_Registro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletUsuario_Registro() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	 String metodo = request.getParameter("registrar_usuario");
	
	 if(metodo.equals("registrar_usuario")) {
		 registrar_usuario(request,response);
	  }
	 
	 
	 
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	
	
	
	
	protected void registrar_usuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String correo = request.getParameter("correo");
		String password = request.getParameter("password");
		String nombre = request.getParameter("nombre");
		String apellido= request.getParameter("apellido");
		String fecha_nacimiento = request.getParameter("fecha_nacimiento");
		String pais = request.getParameter("pais");
		String tipo_doc = request.getParameter("tipo_doc");
		String numero_doc = request.getParameter("numero_doc");

        //TODO implementar validación del formulario
		Usuarios_Registrados bean =new Usuarios_Registrados(correo,password,nombre,apellido,fecha_nacimiento,pais,tipo_doc,numero_doc);
		 
        MySqlConexion con = new MySqlConexion();
      
        UsuarioNegocio userDaoImpl = new UsuarioNegocio();
        
        
        
		
		
		boolean status = userDaoImpl.RegistrarUsuarios(bean);
        
        if(status)
        {
            System.out.println("Usuario registrado");
        }
        else 
        {
            System.out.println("Usuario no registrado");
        }
	/*	if(negocio.RegistrarUsuarios(bean);) {
			request.getRequestDispatcher("index.html").forward(request, response);
		}
		else {
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}*/
		
	}
	
	
	
	
	        
	         
	        
	    
}
