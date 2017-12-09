package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.tools.ToolProvider;
import javax.xml.bind.ParseConversionEvent;

import Modelo.Comprar;
import Modelo.Reserva;
import Modelo.Usuarios;
import Negocio.ComprarNegocio;
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
	 if(metodo.equals("comprar_boleto")) {
		 comprar_boleto(request,response);
	  }
	 
	}
	protected void ingresar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		  PrintWriter out=response.getWriter();  
		String usuario = request.getParameter("correo");
		String password = request.getParameter("password");
		
		UsuarioNegocio negocio = new UsuarioNegocio();
		String un = request.getParameter("correo");
		String pwd = request.getParameter("pass");
		
		if(negocio.IniciarSesion(usuario, password)) {
			HttpSession session = request.getSession(true); // reuse existing
			// session if exist
			// or create one

          session.setMaxInactiveInterval(30); // 30 seconds
         
         
        
         
			request.getRequestDispatcher("index.html").forward(request, response);
		}
		else {
			
			
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		
		out.close();  
	}
	protected void registrar_usuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		UsuarioNegocio userDaoImpl = new UsuarioNegocio();
		ReservaNegocio userDaoImpl2 = new ReservaNegocio();
	
		
		String nombre = request.getParameter("nombre");
		String apellido= request.getParameter("apellido");
		String fecha_nacimiento = request.getParameter("fecha_nacimiento");
		String correo = request.getParameter("correo");
		String password = request.getParameter("password");
		String pais = request.getParameter("pais");
		String tipo_doc = request.getParameter("tipo_doc");
		int numero_doc = Integer.parseInt(request.getParameter("numero_doc"));
        
    boolean status2 = userDaoImpl2.validarReserva(numero_doc+"",correo);
      System.out.println(status2+"ssssss");  
        if(status2==false)
        {
         
        
		
        //TODO implementar validación del formulario
        	Usuarios  bean =new Usuarios(nombre,apellido,fecha_nacimiento, correo, password,pais,tipo_doc,numero_doc);      
        
     userDaoImpl.RegistrarUsuarios(bean);
        
   
         
        request.getRequestDispatcher("/msj/registro_exitoso.jsp").forward(request, response);
    
       //     request.getRequestDispatcher("Registro_Cliente.jsp").forward(request, response);
        System.out.println("Usuario registrado");
            
        request.getRequestDispatcher("index.html").forward(request, response);
        
        
        } 
	else 
        {
        	request.getRequestDispatcher("/msj/error2.jsp").forward(request, response);
          
        	 request.getRequestDispatcher("Registro_Cliente.jsp").forward(request, response);
            
        }
	}

	
	protected void registrar_reserva(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	try {
		 ReservaNegocio userDaoImpl = new ReservaNegocio();
		
			
			String nombre="R0003";
		//	String nombre = request.getParameter("Idre");
			String apellido= request.getParameter("numero_r");
			String fecha_nacimiento = request.getParameter("nombre_r");
			String correo = request.getParameter("tipo_r");
			String password = request.getParameter("fechas_r");
			String pais = request.getParameter("pais_r");
			String tipo_doc = request.getParameter("ciudado_r");
			double precio =Double.parseDouble(request.getParameter("precio_r"));
			int asiento = Integer.parseInt(request.getParameter("asientos_r"));
		//	int numero_doc = Integer.parseInt(request.getParameter("numero_doc"));
			

		    boolean status = userDaoImpl.validarReserva(apellido,correo);
		    
		    
	        if(status==false) {
		
	
        //TODO implementar validación del formulario
		Reserva bean =new Reserva(apellido,fecha_nacimiento, correo, password,pais,tipo_doc,precio,asiento);      
       
        
         userDaoImpl.RegistrarReserva(bean);
        
         request.getRequestDispatcher("/msj/registro_exitoso.jsp").forward(request, response);
         
            System.out.println("Reserva registrado");
            request.getRequestDispatcher("index.html").forward(request, response);
       
	        }else {
	        request.getRequestDispatcher("/msj/error2.jsp").forward(request, response);
	        request.getRequestDispatcher("Registro_Reserva.jsp").forward(request, response);
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
		double precio =Double.parseDouble(request.getParameter("precio_r"));
		int asiento = Integer.parseInt(request.getParameter("asientos_r"));
	//	int numero_doc = Integer.parseInt(request.getParameter("numero_doc"));

        //TODO implementar validación del formulario
		Reserva bean =new Reserva(1,apellido,fecha_nacimiento, correo, password,pais,tipo_doc,precio,asiento);      
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
	protected void comprar_boleto(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	try {
		 ComprarNegocio userDaoImpl = new ComprarNegocio();
		
			
			//String nombre="R0003";
			String nombre = request.getParameter("codc");
			String apellido= request.getParameter("cboc");
			String fecha_nacimiento = request.getParameter("pais_c");
			String correo = request.getParameter("ciudad_c");
			String password = request.getParameter("fechas_c");
			String pais = request.getParameter("dnic");
			double tipo_doc = Double.parseDouble(request.getParameter("prec"));
			int precio =Integer.parseInt(request.getParameter("asc"));
		//	int asiento = Integer.parseInt(request.getParameter("asientos_r"));
		//	int numero_doc = Integer.parseInt(request.getParameter("numero_doc"));
			
			 Comprar bean =new Comprar(nombre,apellido,fecha_nacimiento, correo, password,pais,tipo_doc,precio);  
		        
		   boolean status = userDaoImpl.RegistrarComprar(bean);
			
		    
	     if(status) {
	    	 Comprar bean2 =new Comprar(nombre,apellido,fecha_nacimiento, correo, password,pais,tipo_doc,precio);  
	        
        //TODO implementar validación del formulario
	//	Comprar bean =new Comprar(nombre,apellido,fecha_nacimiento, correo, password,pais,tipo_doc,precio);      
       
         userDaoImpl.RegistrarComprar(bean2);
        
         request.getRequestDispatcher("/msj/registro_exitoso.jsp").forward(request, response);

			request.getRequestDispatcher("index.html").forward(request, response);
      
            System.out.println("registrado vuelo");
           
       
	        }else {
	        request.getRequestDispatcher("/msj/error2.jsp").forward(request, response);
	        request.getRequestDispatcher("ComprarVuelo.jsp").forward(request, response);
	        }
        
	} catch (Exception e) {
		
		 }
	}

}
