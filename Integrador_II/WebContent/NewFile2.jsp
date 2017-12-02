<%@page import="Negocio.*"%>
<%@page import="Modelo.*"%>
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>


<title>Estudiantes</title>


<%
Connection conexion=null;
String mensaje="";
/*parametros para la conexion*/
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost/ProyectoIntegrador_II";//jdbc:mysql://127.0.0.1:3306/invent
String usuario = "root";
String clave = "mysql";
String codaux="";

/*procedimiento de la conexion*/
try{
Class.forName(driver);
conexion = DriverManager.getConnection(url,usuario,clave);
} catch (Exception ex){
mensaje=ex.toString();
}

String qry1 = "select codigo_pais from paises ";
Statement stmt1 = conexion.createStatement();
ResultSet rs1 = stmt1.executeQuery(qry1);


%>


</head>
<body>
<div id="art-page-background-simple-gradient">
</div>
<div id="art-page-background-glare">
<div id="art-page-background-glare-image">
<p>&nbsp;</p>

<script language="JavaScript" type="text/javascript">

function llenar(obj)
{
var i=0;
<%

rs1.beforeFirst();
while (rs1.next())
{
String cod1= rs1.getString("codigo_pais"); 
codaux=cod1; 

%>
cod1="<%=codaux%>";

num= parseInt(cod1);
num2=parseInt(obj.value)

if(num==num2)
{ 
<% 
String qry2 = "select nombre_ciudad from ciudades where codigo_pais ='"+cod1+"'" ;
Statement stmt2 = conexion.createStatement();
ResultSet rs2 = stmt2.executeQuery(qry2);
while (rs2.next() )
{
String lmf = rs2.getString("nombre_ciudad");
String ciudad2="alex";
System.out.println("**"+lmf);
%> 

var opcion = document.createElement('option')
opcion.value = listap[i]
opcion.text =listap[i]
ciudad2.add(opcion)



ciudad = "<%=lmf%>"
document.forms.formu.combod[i]= new Option(ciudad2)	
i++;

<%
System.out.println("--"+ciudad2);
}
%>
}
<%
}
%> 


}

</script> 
<br/>Departamentos:
<form name="formu"> 
<select onchange="llenar(this)" name="comboc" >
<%
rs1.beforeFirst();
while(rs1.next())
{
String cod1= rs1.getString("codigo_pais");

%>

<option name="<% out.println(cod1); %>" id="<% out.println(cod1); %>" label="<% out.println(cod1); %>" onchange="llenar(this)" value="<% out.println(cod1); %>"><% out.println(cod1); %>
</option>
<%
}
%>
</select> 
ciudades:
<select id="ciudad2"name="combod" style="width:150;">
</select> 
</form>
</body>
</html>