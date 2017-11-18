package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Reserva;
import Modelo.Usuarios;
import Negocio.CotizarNegocio;
import Negocio.ReservaNegocio;
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
	 if(metodo.equals("registrar_reserva")) {
		 registrar_reserva(request,response);
	  }
	 if(metodo.equals("listar_cotizar")) {
		 listar_cotizar(request,response);
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
            request.getRequestDispatcher("Registro_Cliente.html").forward(request, response);
        }
        else 
        {
        	request.getRequestDispatcher("error2.jsp").forward(request, response);
          
           
            
        }
		
	}

	
	protected void registrar_reserva(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	try {
		
		String nombre="R0003";
	//	String nombre = request.getParameter("Idre");
		String apellido= request.getParameter("numero_r");
		String fecha_nacimiento = request.getParameter("nombre_r");
		String correo = request.getParameter("tipo_r");
		String password = request.getParameter("fechas_r");
		String pais = request.getParameter("pais_r");
		String tipo_doc = request.getParameter("ciudado_r");
		String tipo_doc2 = request.getParameter("ciudadf_r");
	//	int numero_doc = Integer.parseInt(request.getParameter("numero_doc"));

        //TODO implementar validación del formulario
		Reserva bean =new Reserva(nombre,apellido,fecha_nacimiento, correo, password,pais,tipo_doc,tipo_doc2);      
        ReservaNegocio userDaoImpl = new ReservaNegocio();
        
        boolean status = userDaoImpl.RegistrarReserva(bean);
        
        if(status)
        {
            System.out.println("Reserva registrado");
            request.getRequestDispatcher("Registro_Reserva.jsp").forward(request, response);
        }
        else 
        {
        	request.getRequestDispatcher("error2.jsp").forward(request, response);
          
           
            
        }
        
        
	} catch (Exception e) {
		
		 }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	
	protected void listar_cotizar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	try {
		
		String nombre="R0003";
	//	String nombre = request.getParameter("Idre");
		String apellido= request.getParameter("numero_r");
		String fecha_nacimiento = request.getParameter("nombre_r");
		String correo = request.getParameter("tipo_r");
		String password = request.getParameter("fechas_r");
		String pais = request.getParameter("pais_r");
		String tipo_doc = request.getParameter("ciudado_r");
		String tipo_doc2 = request.getParameter("ciudadf_r");
	//	int numero_doc = Integer.parseInt(request.getParameter("numero_doc"));

        //TODO implementar validación del formulario
		Reserva bean =new Reserva(nombre,apellido,fecha_nacimiento, correo, password,pais,tipo_doc,tipo_doc2);      
        ReservaNegocio userDaoImpl = new ReservaNegocio();
        
        CotizarNegocio userDao=new CotizarNegocio();
        
        
        
        boolean status = userDaoImpl.RegistrarReserva(bean);
        
        if(status)
        {
            System.out.println("Reserva registrado");
            request.getRequestDispatcher("Registro_Cotizar.jsp").forward(request, response);
        }
        else 
        {
        	request.getRequestDispatcher("error2.jsp").forward(request, response);
          
           
            
        }
        
        
	} catch (Exception e) {
		
		 }
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
