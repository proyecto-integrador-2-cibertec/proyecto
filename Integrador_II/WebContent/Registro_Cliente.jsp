<%@page import="Negocio.*"%>
<%@page import="Modelo.*"%>
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
      <link href="./css/style_registro_cliente.css" rel="stylesheet" >
   
   
    <!-- Librería jQuery requerida por los plugins de JavaScript -->
    <script src="http://code.jquery.com/jquery.js"></script>
<title>Registro de Cliente  </title>
 </head>
    <body>
    <form class="form-horizontal" role="form" action="ServletUsuario" >
       <div class="container">
        <div class="help"></div>
      
            <h2 class="text-uppercase text-center">Inscríbete</h2>
             <div class="help"></div>
            <p class="lead text-center">Únete, de manera fácil y rápida, a nuestro programa de viajero frecuente. Como socio podrás acumular kilómetros, 
                canjear pasajes y acceder a exclusivos beneficios.</p>
         </div>
        <div class="container">
                                
                  <div class="form-group">
                       <label for="text-input">Nombre</label>
                       <input type="text" placeholder="Escribe tu nombre aquí" class="form-control" name="nombre"  id="text-input">
                  </div>
                  
                    
                    <div class="form-group">
                       <label for="text-input">Apellido</label>
                       <input type="text" placeholder="Escribe tu apellido aquí" class="form-control" name="apellido"  id="text-input">
                    </div>
                   
                    <div class="form-group">
                        <label for="text-input">Fecha de Nacimiento</label>
                        <input type="date" class="form-control"  name="fecha_nacimiento" id="text-input">
                    </div>
                    
                      <div class="form-group">
                       <label for="text-input">Correo</label>
                       <input type="text" placeholder="usuario@example.com" class="form-control" name="correo" id="text-input">
                    </div>
                    
                     <div class="form-group">
                          <label for="text-input">Contraseña</label>
                          <input type="password" placeholder="Escribe tu contraseña aquí" class="form-control" name="password"  id="text-input">
                    </div>
                    
                     <div class="form-group">
                        <label for="text-input">Pais</label>
                        <select name="pais" class="form-control" >
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
                     <div class="form-group">
                        <label for="text-input">Número de Documento</label>
                        <input type="text" placeholder="Ingrese Número de documento" class="form-control" name="numero_doc"  id="text-input">
                    </div>  
                    <input type="hidden" value="registrar_usuario" name="metodo" >
                    <button class="btn btn-danger">Registrar</button>
                    <div class="help"></div>
                     
                       
 
                   
                </form>  
              
            </div>
              
       </div>

</body>
</html>