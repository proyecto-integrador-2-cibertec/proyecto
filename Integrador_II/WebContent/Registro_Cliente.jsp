<%@page import="Negocio.*"%>
<%@page import="Modelo.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.*"%>
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
                  <h2 class="text-uppercase text-center">Inscríbete</h2>
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
  <input type="text" class="form-control" placeholder="Ingrese Nombre" aria-label="Username" aria-describedby="basic-addon1" name="nombre" required >
</div>
    <div class="help"></div>
    
     <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">@</span>
  <input type="text" class="form-control" placeholder="Ingrese Apellido" aria-label="Username" aria-describedby="basic-addon1" name="apellido" required>
</div>
 <div class="help"></div>
 
     <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">@</span>
  <input type="Date" class="form-control" placeholder="Seleccione Fecha de Nacimiento" aria-label="Username" aria-describedby="basic-addon1" name="fecha_nacimiento" required >
</div>
  

    <div class="help"></div>
<div class="input-group">
<span class="input-group-addon" id="basic-addon1">@</span>
  <input type="text" class="form-control" placeholder="Ingrese correo@example.com" aria-label="Recipient's username" aria-describedby="basic-addon1" name="correo" required>
  
</div>

    <div class="help"></div>

     <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">@</span>
  <input type="text" class="form-control" placeholder="Ingrese Password" aria-label="Username" aria-describedby="basic-addon1" name="password" required >
</div>

 <div class="help"></div>
     <div class="form-group">
                        <label for="text-input">Selecione Pais</label>
                        <select name="pais" class="form-control"    >
                        <%
                        	PaisesNegocio negocio = new PaisesNegocio();
                        	ArrayList <Paises>lista=negocio.ListarPaises();
                        	for(Paises aux:lista){
                        		%>
                        		<option value="<%=aux.getCodigoPais() %>"> <%=aux.getNombrePais()%></option>
                        		<%
                        	}
                        	
                 	  


%>
                        </select>
              
                    </div>
                   <div class="form-group">
                        <label for="text-input">Tipo de Documento</label>
                        <select name="tipo_doc" class="form-control" >
                        <%
                        	TipoDocumentoNegocio negocioTD = new TipoDocumentoNegocio();
                        	ArrayList <TipoDocumento>listaTD = negocioTD.ListarDocumentos();
                        	for(TipoDocumento aux:listaTD){
                        		%>
                        		<option value="<%=aux.getCodigoDocumento()%>"> <%=aux.getNombreDocumento()%></option>
                        		<%
                        	}
                        %>
                        </select>
                     
                    </div>  
                       

 <div class="help"></div>


     <div class="input-group">
  <span class="input-group-addon" id="basic-addon1">@</span>
  <input type="text" class="form-control" placeholder="Inegre Numero Documento" aria-label="Username" aria-describedby="basic-addon1"name="numero_doc" required>
</div>



                   
                    <input type="hidden" value="registrar_usuario" name="metodo" >
                    <button class="btn btn-danger">Registrar</button>
                    <div class="help"></div>   
    </div> 
     </div>  
     
     
     </div>             
    </form>  
          

    
      


</body>
</html>