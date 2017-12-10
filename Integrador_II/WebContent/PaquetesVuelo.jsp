<!DOCTYPE html>

<%@page import="Modelo.*"%>
<%@page import="java.util.ArrayList"%>

<html lang="es">
<head>
<title>PaquetesVuelos</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_Vuelos.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<!-- /banner1 -->
            <div class="team agileits">
                <h1 class="tittle1" align="center">Paquete de Vuelos</h1>

                    <div class="container"><br><br>
		
			<div class="container well" id="she">
				<div class="row">
					<div class="col-xs-12"></div>					
				</div>
				
				<form action="ServletPaqueteVuelos" method="post" class="form-horizontal">
					
					
					<div class="form-group">
						<label for="CodPaq" class="control-label col-md-2">Código de Vuelo: </label>
						<div class="col-md-4">
							<input class="form-control" type="text" name="txtCodigoVuelo" placeholder="Código de Vuelo" required minlength=5 maxlength=5>
						</div>		
												
						<input type="submit" value="Registrar Datos" class="btn btn-primary">
						<input type="hidden" name="metodo" value="RegistrarPaqueteVuelo">			
					</div>

					<div class="form-group">
						<label for="Oripaq" class="control-label col-md-2">Lugar de Origen: </label>
						<div class="col-md-7">
						
							<input class="form-control" id="Oripaq" type="text" name="txtLugarOrigen" required placeholder="Lugar de Origen" value="">
						
						</div>
			
					</div>
					
					<div class="form-group">
						<label for="LugDesti" class="control-label col-md-2">Lugar de Destino: </label>
						<div class="col-md-7">
							<input class="form-control" id="LugDesti" type="text" name="txtLugarDestino" required placeholder="Lugar de Destino" value="">
						</div>
				
					</div>					

					<div class="form-group">
						<label for="HoraS" class="control-label col-md-2">Hora Salida: </label>
						<div class="col-md-4">
							<input class="form-control" type="text" name="txtHoraSalida"   placeholder="Hora Salida" required></input>

						</div>
						
						<label for="HoraL" class="control-label col-md-2">Hora Llegada: </label>
						<div class="col-md-4">
							<input class="form-control" id="HoraL" type="text" name="txtHoraLlegada" required placeholder="Hora Llegada" value="">
						</div>						
					</div>
					
					<div class="form-group">
						<label for="TipoVuelo"class="control-label col-md-2">Tipo Vuelo</label>
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
						<label for="NumA" class="control-label col-md-2">Numero de Asientos: </label>
						<div class="col-md-7">
						
							<input class="form-control" id="NumA" type="text" name="txtNumeroAsientos" required placeholder="Numero de Asientos" value="">
						
						</div>
			
					</div>
					
					<div class="form-group">
						<label for="Precio" class="control-label col-md-2">Precio: </label>
						<div class="col-md-7">
						
							<input class="form-control" id="Precio" type="text" name="txtPrecio" required placeholder="Precio" value="">
						
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
								if(request.getAttribute("ListaPaquetes")!=null){
									
									ArrayList<PaqueteVuelos> lista=(ArrayList<PaqueteVuelos>)request.getAttribute("ListaPaquetes"); 
									
									for(PaqueteVuelos aux: lista){
										%>
										<tr>										
										<td><%=aux.getCod_vuelo()%></td>
										<td><%=aux.getOrigen()%></td>
										<td><%=aux.getDestino()%></td>
										<td><%=aux.getHora_salida()%></td>
										<td><%=aux.getHora_llegada()%></td>
										<td><%=aux.getTipo_vuelo()%></td>
										<td><%=aux.getPrecio()%></td>
										<td><%=aux.getNum_asientos()%></td>										
										</tr>			
							<%
									}
								}
							%>   		 	
			   	 		</table>					
					</div>
			 </div>			
		</div>
           
	</div>
	

	
</body>
</html>