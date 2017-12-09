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
    <form name="formu" class="form-horizontal" role="form" action="ServletUsuario" method="post" >
   <div class="container"margin-top="5%"  >
      <div class="container">
        <div class="help"></div>
                  <h2 class="text-uppercase text-center">Registrar tu Reserva</h2>
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
  <span class="input-group-addon" id="basic-addon1">@</span>
  <input type="text" class="form-control" placeholder="Nombre" aria-label="Username" aria-describedby="basic-addon1" name="nombre_r"  onkeypress="return soloLetras(event);" id="id_nombre" required  >
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
  <span class="input-group-addon" id="basic-addon1">@</span>
  <input type="Date" class="form-control" placeholder="fecha de Salida" aria-label="Username" aria-describedby="basic-addon1" name="fechas_r" required >
</div>
  

 
    
    <script type="text/JavaScript">
function cambio(select,s2){
	
	alert(select);
	//int jj=0;	55
	
	// var select = document.getElementById("pais");

	alert(select+"3");
	  var options=document.getElementsByTagName("option");
	 var sd=select.value+"";
	  var ciudad = document.getElementById('ciudad')
	
	alert(select+"2");
 
	 var str = new String;
    	   str = select;
    	 
    	  
    	   
     <%String xx="";%>
     if(str=='PE'){    	 
       <% xx ="PE" ;%>
       }
       if(str=='BS'){
    	   <% xx ="BS" ;%>}
    	   if(str=="AU"){
        	   <% xx ="AU" ;%>  
        	   }
    	   if(str=="CN"){
        	   <% xx ="CN" ;%>  
        	   }
	   	
    	   if(str=="IN"){
        	   <% xx="IN" ;%>  
        	   }
	   	
    	   if(str=="MY"){
        	   <% xx ="MY" ;%>  
        	   }
    	   if(str=="MX"){
        	   <% xx ="MX" ;%>  
        	   }
	   	
    	   if(str=="VN"){
        	   <% xx ="VN";%>  
        	   }

    	   if(str=="BR"){
        	   <% xx ="BR";%>  
        	   }

      	   if(str=="IT"){
        	   <% xx ="IT" ;%>  
        	   }

    	   if(str=="GR"){
        	   <% xx ="GR" ;%>  
        	   }
	   	

    	   if(str=="PH"){
        	   <% xx ="PH" ;%>  
        	   }
    	  

    	   if(str=="GB"){
        	   <% xx ="GB" ;%>  
        	   }
    	   
    	   if(str=="NL"){
    		   <% xx="NL";%>
    	   }
    	   if(str=="JP"){
    		   <% xx="JP";%>
    	   } 
    	   
    	   
    	   
    	   
    	   
    	   
    	   
    	   
    	   
    	   <%
       	CiudadNegocio negocio8 = new CiudadNegocio();
       	ArrayList <ciudad>lista8=negocio8.ListarCiudad(xx);
       System.out.println(xx+"--");
       	for(ciudad aux8:lista8){
       		%>

       		alert(aux8+"----rerere");
       	  var opcion = document.createElement('option')
       	  alert(select);
       	  var s="<%=aux8.getNombreciudad()%>"       		
	        opcion.value =s       	
	        opcion.text =s       	
	        ciudad.add(opcion)
	      
       	
       		<%
       		System.out.println(xx+"-12-");		
       	}  
       	 
       	
       %>
        		
           	
  	   
	   	
           	                                               	
          
	  	  

 
	
 }

	    

	    
	    
	    
</Script>  





 <div class="help"></div>
     <div class="form-group">
                        <label for="text-input">Selecione Pais</label>
                        <select  id="pais" name="pais_r" class="form-control" onchange='cambio(this.value,ciudad)' >
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
                        <label for="text-input">Selecione Ciudad Destino</label>
                        <select id="ciudad" name="ciudado_r" class="form-control" >
                 
                        </select>
              
                    </div>
                      
 <div class="help">
 </div>
 
         
     <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">@</span>
  <input type="text" class="form-control" value="<%=150 %>" aria-label="Username" aria-describedby="basic-addon1" name="precio_r" onkeypress="return soloNumeros(event);" id="id_precio" required readonly="readonly" >
</div>
    <div class="help"></div>     
                       

      
     <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">@</span>
  <input type="text" class="form-control" placeholder="asientos" aria-label="Username" aria-describedby="basic-addon1" name="asientos_r" onkeypress="return soloNumeros(event);" id="id_asientos" required >
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