package controlador;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.PaqueteVuelos;
 
import Negocio.PaqueteVuelosNegocio;
 
 

 

/**
 * Servlet implementation class ServletPaqueteVuelos
 */
@WebServlet("/ServletPaqueteVuelos")
public class ServletPaqueteVuelos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletPaqueteVuelos() {
        super();
   
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String metodo = request.getParameter("metodo");
		
		// if(metodo.equals("ListaPaqueteVuelos")){
				ListarPaqueteVuelos(request, response);
				
		//	}
		
	}
	protected void ListarPaqueteVuelos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		PaqueteVuelosNegocio diana  = new PaqueteVuelosNegocio();
			
		 ArrayList<PaqueteVuelos> datos = diana.ListarPaqueteVuelos();
		 
		 request.setAttribute("ListaPaquetes", datos);
		 
		 request.getRequestDispatcher("/PaquetesVuelo.jsp").forward(request, response);		
		
	}
	
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String metodo = request.getParameter("metodo");
		
		if (metodo.equals("RegistrarPaqueteVuelo")) {
			RegistrarPaqueteVuelo(request,response );
			
		}
		//doGet(request, response);
	}
	
	protected void RegistrarPaqueteVuelo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		PaqueteVuelosNegocio diana  = new PaqueteVuelosNegocio();
 
		 String cod_vuelo = request.getParameter("txtCodigoVuelo");
		 String origen = request.getParameter("txtLugarOrigen");
		 String destino = request.getParameter("txtLugarDestino");		 
		 String hora_salida = request.getParameter("txtHoraSalida");
		 String hora_llegada = request.getParameter("txtHoraLlegada");
		 String tipo_vuelo = request.getParameter("cboTipoVuelo");
		 Double precio = Double.parseDouble(request.getParameter("txtPrecio"));
		 int num_asientos = Integer.parseInt(request.getParameter("txtNumeroAsientos"));
		 
		 PaqueteVuelos com = new PaqueteVuelos(cod_vuelo, origen, destino, hora_salida, hora_llegada, tipo_vuelo, precio, num_asientos);
				 
		 diana.RegistrarPaqueteVuelos(com);
		
		 request.getRequestDispatcher("/PaquetesVuelo.jsp").forward(request, response);
	 
	}

}
