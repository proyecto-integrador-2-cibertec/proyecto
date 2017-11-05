package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Usuarios;
import Negocio.UsuarioNegocio;

/**
 * Servlet implementation class ServletUsuario
 */
@WebServlet("/ServletUsuario")
public class ServletUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	 String metodo = request.getParameter("metodo");
	 if(metodo.equals("ingresar")) {
		 ingresar(request,response);
	  }
	 if(metodo.equals("registrar_usuario")) {
		 registrar_usuario(request,response);
	  }
	}
	protected void ingresar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	  
		String usuario = request.getParameter("correo");
		String password = request.getParameter("password");
		
		UsuarioNegocio negocio = new UsuarioNegocio();
		
		if(negocio.IniciarSesion(usuario, password)) {
			request.getRequestDispatcher("index.html").forward(request, response);
		}
		else {
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
	protected void registrar_usuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String nombre = request.getParameter("nombre");
		String apellido= request.getParameter("apellido");
		String fecha_nacimiento = request.getParameter("fecha_nacimiento");
		String correo = request.getParameter("correo");
		String password = request.getParameter("password");
		String pais = request.getParameter("pais");
		String tipo_doc = request.getParameter("tipo_doc");
		int numero_doc = Integer.parseInt(request.getParameter("numero_doc"));

        //TODO implementar validación del formulario
		Usuarios bean =new Usuarios(nombre,apellido,fecha_nacimiento, correo, password,pais,tipo_doc,numero_doc);      
        UsuarioNegocio userDaoImpl = new UsuarioNegocio();
        
        boolean status = userDaoImpl.RegistrarUsuarios(bean);
        
        if(status)
        {
            System.out.println("Usuario registrado");
            request.getRequestDispatcher("login.html").forward(request, response);
        }
        else 
        {
            System.out.println("Usuario no registrado");
            
        }
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
