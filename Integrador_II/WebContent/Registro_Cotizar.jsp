<%@page import="Negocio.*"%>
<%@page import="Modelo.*"%>
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 
    <!-- Bootstrap CSS -->
        <link href="./vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <!-- jQuery first, then Tether, then Bootstrap JS. -->
       <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
       
      <script src="./vendor/bootstrap/js/bootstrap.min.js"></script>
      <link href="./css/style_cotizar.css" rel="stylesheet" >
   
   
    <!-- Librería jQuery requerida por los plugins de JavaScript -->
    <script src="http://code.jquery.com/jquery.js"></script>
<title>Registro  </title>
 </head>
    <body>
    <form class="form-horizontal" role="form" action="ServletUsuario" method="post" >
   <div class="container"margin-top="5%"  >
      <div class="container">
        <div class="help"></div>
                  <h2 class="text-uppercase text-center">Cotizar</h2>
             <div class="help"></div>
            <p class="lead text-center">Únete, de manera fácil y rápida, a nuestro programa de viajero frecuente. Como socio podrás acumular kilómetros, 
                canjear pasajes y acceder a exclusivos beneficios.</p>
        </div>
     
         <div class="help"></div>
     <div class="container">
    
       <div class="help"></div>
      <div class="form-group">
     

 <div class="help"></div>
 
 
 <div class="row">
    <div class="col">
       <div class="form-group">
                        <label for="text-input">Tipo de Pasaje</label>
                        <select name="tipo_r" class="form-control"  >
                        <%
                        	ReservaNegocio negocior = new ReservaNegocio();
                        ArrayList <Reserva>lista_r = negocior.ListarTipo_Pasaje();
                        	for(Reserva aux : lista_r){
                        		%>
                        		<option value="<%=aux.getId_reserva_r()%>"> <%=aux.getTipo_pasaje_r()%></option>
                        		<%
                        	}
                        	
                        	
                        %>
                        </select>
                     
                    </div>  
    </div>
    <div class="col">
      <div class="form-group">
                        <label for="text-input">Tipo de Pasaje</label>
                        <select name="tipo_r" class="form-control"  >
                        <%
                        	ReservaNegocio negocior2 = new ReservaNegocio();
                        ArrayList <Reserva>lista_r2 = negocior.ListarTipo_Pasaje();
                        	for(Reserva aux : lista_r){
                        		%>
                        		<option value="<%=aux.getId_reserva_r()%>"> <%=aux.getTipo_pasaje_r()%></option>
                        		<%
                        	}
                        	
                        	
                        %>
                        </select>
                     
                    </div>  
    </div>
  </div>
  
   <div class="row">
    <div class="col">
       <div class="form-group">
                        <label for="text-input">Tipo de Pasaje</label>
                        <select name="tipo_r" class="form-control"  >
                        <%
                        	ReservaNegocio negocior3 = new ReservaNegocio();
                        ArrayList <Reserva>lista_r3 = negocior.ListarTipo_Pasaje();
                        	for(Reserva aux : lista_r){
                        		%>
                        		<option value="<%=aux.getId_reserva_r()%>"> <%=aux.getTipo_pasaje_r()%></option>
                        		<%
                        	}
                        	
                        	
                        %>
                        </select>
                     
                    </div>  
    </div>
    <div class="col">
      <div class="form-group">
                        <label for="text-input">Tipo de Pasaje</label>
                        <select name="tipo_r" class="form-control"  >
                        <%
                        	ReservaNegocio negocior4 = new ReservaNegocio();
                        ArrayList <Reserva>lista_r4 = negocior.ListarTipo_Pasaje();
                        	for(Reserva aux : lista_r){
                        		%>
                        		<option value="<%=aux.getId_reserva_r()%>"> <%=aux.getTipo_pasaje_r()%></option>
                        		<%
                        	}
                        	
                        	
                        %>
                        </select>
                     
                    </div>  
    </div>
  </div>
 


     <div class="input-group">
 
                   
                    <input type="hidden" value="registrar_reserva" name="metodo" >
                    <button class="btn btn-danger">Registrar</button>
                    <div class="help"></div>   
</div>
  



<script type="text/JavaScript">
function cambio(select,s2){
	
	var listaciudades = {
		      PE: ["Lima", "Arequipa", "Cusco", "Piura", "Tacna"],
		      ES: ["Langreo", "Villaviciosa", "Oviedo", "Gijon", "Covadonga"],
		      CU: ["Havana", "Varadero", "Santiago de cuba", "PorAlegre"],
		    }
	
	var listap = ["Lima", "Arequipa", "Cusco", "Piura", "Tacna"];		      
		  
	
	 var select = document.getElementById("pais");

	  var options=document.getElementsByTagName("option");
	  var sd=select.value;
	  var ciudad = document.getElementById('ciudad')
	    var ciudad2 = document.getElementById('ciudad2')
	   
	  if(sd=="PE"){
		
		  for (var j=0;j<5;j++){
				
			  var opcion = document.createElement('option')
		        opcion.value = listap[j]
		        opcion.text =listap[j]
		        ciudad2.add(opcion)
		        
		  }
		  for (var i=0;i<5;i++){
			
		  var opcion = document.createElement('option')
	        opcion.value = listap[i]
	        opcion.text =listap[i]
	        ciudad.add(opcion)
	        
	  }
		
	  } 
	    
	    }
</Script>
out.println("<h1 align=\"center\"> Lista de Usuarios </h1>");
	out.println("<table border=1 align=\"center\">");
	out.println("<tr><th>Nombres</th></tr>");
	while(rs.next()) {
		out.println("<tr><td>" + rs.getString("Nombres") + "</td></tr>");
	} // end while
	out.println("</table>");
	
	
	 <%
//                         	ReservaNegocio negocior4 = new ReservaNegocio();
//                         ArrayList <Reserva>lista_r4 = negocior.ListarTipo_Pasaje();
                        	for(Reserva aux : lista_r){
                        		%>
                        		<option value="<%=aux.getId_reserva_r()%>"> <%=aux.getTipo_pasaje_r()%></option>
                        		<%
                        	}
                        	
                        	
                        %>
 <div class="help"></div>
     <div class="form-group">
                       <table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Username</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@TwBootstrap</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>



     </div>  
     
     
     
     
     <div class="input-group">
 
                   
                    <input type="hidden" value="registrar_reserva" name="metodo" >
                    <button class="btn btn-danger">Registrar</button>
                    <div class="help"></div>   
</div>
     
     
                
    </form>  
          

    
      


</body>
</html>




/*

<!-- Los import -->
<%@ page language="java" %>
<%-- <%@ page import = "chuidiang.ejemplos.Contacto"%>  --%>
<%-- <%@ page import = "chuidiang.ejemplos.ConsultaAgenda"%>  --%>
<%@ page import = "java.util.LinkedList"%> 
<html>
<body>
<h1>Consulta a base de datos</h1>
<table border="1">
<tr>
<td>id</td>
<td>nombre</td>
<td>apellido</td>
<td>telefono</td>
</tr>
<%
// LinkedList<Contacto> lista = ConsultaAgenda.getContactos();
// for (int i=0;i<lista.size();i++)
// {
//    out.println("<tr>");
//    out.println("<td>"+lista.get(i).getId()+"</td>");
//    out.println("<td>"+lista.get(i).getNombre()+"</td>");
//    out.println("<td>"+lista.get(i).getApellido()+"</td>");
//    out.println("<td>"+lista.get(i).getTelefono()+"</td>");
//    out.println("</tr>");
// }
%>
</table>
</body>
</html>







<body>
	<header>
		<nav class="menu">
			<ul>
				<li><a href="#">Inicio</a></li>
				<li><a href="#">Registrar datos en el sistema</a></li>
				<li><a href="#">Ver los datos registrados</a></li>
			</ul>
		</nav>
	</header>
	<section>
		<form id="frmlistarCarton" action="/PrintUtilities/ServletCartonListar" method="post">
			<h2>Listar Carton</h2>
			<table border="1">
			<tr>
				<td>${Carton.codigocarton}</td>
				<td>${Carton.numerocarton}</td>
				<td>${Carton.serie}</td>
				<td>${Carton.tiposorteo}</td>
				<td>${Carton.estado}
			</tr>
			</table>
		</form>

	</section>
</body> 



/**
 * Servlet implementation class ServletPersonaListar
 */
@WebServlet("/ServletPersonaListar")
public class ServletPersonaListar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IEjbPersona iEjbPersona;
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletPersonaListar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			iEjbPersona = new EjbPersona();
			iEjbPersona.getListaPersona();
			
			request.setAttribute("listarPersona.jsp", iEjbPersona);
			request.getRequestDispatcher("vistas/listar.jsp").forward(request, response);
		} catch (Exception e) {
			System.out.println("Error en el servlet"+e);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
*/