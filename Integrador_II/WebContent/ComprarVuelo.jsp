<!DOCTYPE html>
<%@page import="Negocio.*"%>
<%@page import="Modelo.*"%>


<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<%@page import="java.util.ArrayList"%>
<html lang="es">
<head>
<title>PaquetesVuelos</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_Vuelos.css" rel="stylesheet" type="text/css" media="all" />
</head>


<script type="text/JavaScript">
function cambio2(select,s2){
	
	
	

	
	// var select = document.getElementById("pais");

	  var options=document.getElementsByTagName("option");
	 var sd=select.value+"";
	  var ciudad = document.getElementById('ciudad')
	   
 
	 var str = new String;
    	   str = select;
    	 
    	  
    	   
     <%String xx="PE";%>
     if(str=='PE'){    	 
       <% xx ="PE" ;%>}
       if(str=='BS'){
    	   <% xx ="BS" ;%>}
    	   if(str=="AU"){
        	   <% xx ="AU" ;%>  
        	   }
    	   if(str=="CN"){
        	   <% xx ="CN" ;%>  
        	   }
	   	
    	   if(str=="IN"){
        	   <% xx ="IN" ;%>  
        	   }
	   	
    	   if(str=="MY"){
        	   <% xx ="MY" ;%>  
        	   }
    	   if(str=="MX"){
        	   <% xx ="MX" ;%>  
        	   }
	   	
    	   if(str=="VN"){
        	   <% xx ="VN" ;%>  
        	   }

    	   if(str=="BR"){
        	   <% xx ="BR" ;%>  
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
       	CiudadNegocio negocio3 = new CiudadNegocio();
       	ArrayList <ciudad>lista3=negocio3.ListarCiudad(xx);
       
       
       	for(ciudad aux3:lista3){
       		%>
       		
       	  var opcion = document.createElement('option')
       	  var s="<%=aux3.getNombreciudad()%>"       		
	        opcion.value = s       	
	        opcion.text =s       	
	        ciudad.add(opcion)
	      
       	
       		<%
     
       	}  
       	 
       	
       %>
        		
           	
  	 
   	
   	
   		
           
 
	
 }

	    

	    
	    
	    
</Script>


<body>
<!-- /banner1 -->
            <div class="team agileits">
                <h1 class="tittle1" align="center">Comprar Pasajes</h1>

                  
		
			<div class="container well" id="she">
				<div class="row">
					<div class="col-xs-12"></div>					
				</div>
				
				<form action="ServletPaqueteVuelos" method="post" class="form-horizontal">
					
					
					<div class="form-group">
						<label for="CodPaq" class="control-label col-md-2">Código de Reserva : </label>
						<div class="col-md-4">
							<input class="form-control" type="text" name="txtCodigoVuelo" placeholder="Código de Vuelo" required minlength=5 maxlength=5>
						</div>		
												
						<input type="submit" value="Registrar Datos" class="btn btn-primary">
						<input type="hidden" name="metodo" value="RegistrarPaqueteVuelo">			
					</div>
<div class="form-group">
						<label for="TipoVuelo"class="control-label col-md-2">Tipo Pasaje</label>
						<div class="col-md-4">
							<select class="form-control" name="cboTipoVuelo" required>
				  			<option value="" selected hidden="">Seleccione una Opción</option>
				  			<option value="Economy">Economy</option>
				  			<option value="Premium Economy">Premium Economy</option>
				  			<option value="Gold Economy">Gold Economy</option>
							</select>
						</div>

					</div>
					
					
					<div class="form-group">
						<label for="TipoVuelo"class="control-label col-md-2">Pais Destino:</label>
						<div class="col-md-4">
							
				  			  <select  id="pais" name="pais_r" class="form-control" onchange='cambio2(this.value,ciudad)' required >
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

          <label for="TipoVuelo"class="control-label col-md-2">ciudad de Destino:</label>
						<div class="col-md-4">
							
				  	 <select id="ciudad" name="ciudad_r" class="form-control" required >
                 
                        </select>
						</div>

					</div>
				
<div class="form-group">
						<label for="LugDesti" class="control-label col-md-2">fecha salida </label>
						<div class="col-md-4">
							 <input type="Date" class="form-control" placeholder="fecha de Salida" aria-label="Username" aria-describedby="basic-addon1" name="fechas_r" required >
						</div>
				<label for="LugDesti" class="control-label col-md-2">Numero de Dni </label>
						<div class="col-md-4">
							<input class="form-control" id="LugDesti" type="text" name="txtLugarDestino" required placeholder="Lugar de Destino" value="">
						</div>
					</div>	
					
     	
		<div class="form-group">
						<label for="LugDesti" class="control-label col-md-2">Precio </label>
						<div class="col-md-4">
							<input class="form-control" id="LugDesti" type="text" name="txtLugarDestino" required placeholder="Lugar de Destino" value="">
						</div>
				<label for="NumA" class="control-label col-md-2">Numero de Asientos: </label>
						<div class="col-md-4">
						
							<input class="form-control" id="NumA" type="text" name="txtNumeroAsientos" required placeholder="Numero de Asientos" value="">
						
						</div>
					</div>	
					
				
							

				
				

				</form><br><br>
				<a class="btn btn-primary"  href="ServletPaqueteVuelos?metodo=ListaPaqueteVuelos">Ver Lista de Registrados</a><br><br>
				<div class="table table-bordered">
			 			 <table class="table">
				  	 		 <tr>				  	  			
				  	  			<td scope="col">CÓDIGO </td>
				  	  			<td scope="col">ORIGEN</td>
				  	  			<td scope="col">DESTINO</td>
				  	  			<td scope="col">SALIDA</td>
				  	  			<td scope="col">LLEGADA</td>
				  	  			<td scope="col">TIPO_VUELO</td>
				  	  			<td scope="col">PRECIO</td>
				  	  			<td scope="col">ASIENTO</td>
				   		 	</tr>
										   		 	
				   		 	<%
				   		 PaqueteVuelosNegocio negocio4 = new PaqueteVuelosNegocio();
                        	ArrayList <PaqueteVuelos>lista4=negocio4.ListarPaqueteVuelos();
                        	for(PaqueteVuelos aux4:lista4){
										%>
										<tr>										
										<td><%=aux4.getCod_vuelo()%></td>
										<td><%=aux4.getOrigen()%></td>
										<td><%=aux4.getDestino()%></td>
										<td><%=aux4.getHora_salida()%></td>
										<td><%=aux4.getHora_llegada()%></td>
										<td><%=aux4.getTipo_vuelo()%></td>
										<td><%=aux4.getPrecio()%></td>
										<td><%=aux4.getNum_asientos()%></td>										
										</tr>			
							<%
									}
								
							%>   		 	
			   	 		</table>					
					</div>
			 </div>			
		
		
		
		
                    <a href="RegistroEvaluaciones.jsp">
                    <input type="button" value="Registrar Nueva Evaluación" class="btn btn-primary">
                    </a>
           
	
	</div>
		


</body>
</html>