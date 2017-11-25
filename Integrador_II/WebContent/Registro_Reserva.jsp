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
       <script src="js/validar.js"></script>
      <script src="./vendor/bootstrap/js/bootstrap.min.js"></script>
      <link href="./css/style_registro_cliente.css" rel="stylesheet" >
   
   
    <!-- Librería jQuery requerida por los plugins de JavaScript -->
    <script src="http://code.jquery.com/jquery.js"></script>
<title>Registro de Cliente  </title>
 </head>
    <body>
    <form class="form-horizontal" role="form" action="ServletUsuario" method="post" >
   <div class="container"margin-top="5%"  >
      <div class="container">
        <div class="help"></div>
                  <h2 class="text-uppercase text-center">Registrar tu Vuelo</h2>
             <div class="help"></div>
            <p class="lead text-center">Únete, de manera fácil y rápida, a nuestro programa de viajero frecuente. Como socio podrás acumular kilómetros, 
                canjear pasajes y acceder a exclusivos beneficios.</p>
        </div>
     
         <div class="help"></div>
     <div class="container">
    
       <div class="help"></div>
      <div class="form-group">
      
             
     <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">@</span>
  <input type="text" class="form-control" placeholder="DNI" aria-label="Username" aria-describedby="basic-addon1" name="numero_r" onkeypress="return soloNumeros(event);" id="id_dni" required >
</div>
    <div class="help"></div>
    
     <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">Ingrese......</span>
  <input type="text" class="form-control" placeholder="Nombre" aria-label="Username" aria-describedby="basic-addon1" name="nombre_r" required>
</div>

 <div class="help"></div>
 
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
 
 


     <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">Fecha Salida</span>
  <input type="Date" class="form-control" placeholder="fecha de Salida" aria-label="Username" aria-describedby="basic-addon1" name="fechas_r" required >
</div>
  



<script type="text/JavaScript">
function cambio(select,s2){
	
	var listaciudades = {
		      PE: ["Lima", "Arequipa", "Cusco", "Piura", "Tacna"],
		      ES: ["Langreo", "Villaviciosa", "Oviedo", "Gijon", "Covadonga"],
		      CU: ["Havana", "Varadero", "Santiago de cuba", "PorAlegre"],
		    }
	
	var l1 = ["Lima", "Arequipa", "Cusco", "Piura", "Tacna"];		      
		  
	
	// var select = document.getElementById("pais");

	  var options=document.getElementsByTagName("option");
	 var sd=select;
	  var ciudad = document.getElementById('ciudad')
	    var ciudad2 = document.getElementById('ciudad2')
	 
	alert(sd);
int jj=0;	55
 a = ["1","2","3"];
		  a.foreach ( function (elemento) {

			  var opcion = document.createElement('option')
		        opcion.value = a[jj]
		        opcion.text =a[jj]
		        ciudad2.add(opcion)
		jj++;        
		  });
	
	  if(sd=="JP"){
		  
		 
		
		  for (var j=0;j<5;j++){
				
			  var opcion = document.createElement('option')
		        opcion.value = l1[j]
		        opcion.text =l1[j]
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
	    
	    

function makeArray() {
     var myArray = new Array(4);
     myArray[0] = "A";
     myArray[1] = "B";
     myArray[2] = "C";
     myArray[3] = "D";
     return myArray;
}
function showArray(theArray){
     var quote = "";
     for (var i = 0; i < theArray.length; i++){
         quote += theArray[i] + " ";
     }
     return quote;    
}


   var x = makeArray();
   document.write(showArray(x));

	    
	    
	    
	    
</Script>

 <div class="help"></div>
     <div class="form-group">
                        <label for="text-input">Selecione Pais</label>
                        <select  id="pais" name="pais_r" class="form-control"onchange='cambio(this.value,ciudad)' >
                        <%
                        	PaisesNegocio negocio = new PaisesNegocio();
                        	ArrayList <Paises>lista=negocio.ListarPaises();
                        	for(Paises aux:lista){
                        		
                        		
                        		%>
                        		<option  value="<%=aux.getCodigoPais() %>"> <%=aux.getNombrePais()%></option>
                        		
                        		<%
                        		
                        	}
                        	                                               	
                        %>
                        </select>
              
                    </div>
    
   
   
                    
 <div class="help"></div>
     <div class="form-group">
                        <label for="text-input">Selecione Ciudad origen</label>
                        <select id="ciudad" name="ciudad" class="form-control" >
                       
                     
                        </select>
              
                    </div>
                      
 <div class="help"></div>
     <div class="form-group">
                        <label for="text-input">Selecione Ciudad Llegada</label>
                        <select id="ciudad2" name="ciudadf_r" class="form-control" >
                       
                        </select>
              
                    </div>             
                       

 <div class="help"></div>




                   
                    <input type="hidden" value="registrar_reserva" name="metodo" >
                    <button class="btn btn-danger">Registrar</button>
                    <div class="help"></div>   
    </div> 
     </div>  
     
     
     </div>             
    </form>  
          

    
      


</body>
</html>