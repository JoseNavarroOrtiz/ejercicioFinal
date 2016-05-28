<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado Completo</title>
         <style>
                  
            
    </style>
    <link href="estiloMecanico.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
   
    <body>
        <h1>MeCaNiCoRdObA</h1>
         <table class="estiloLista">
            <caption class="estiloCaption">DATOS CLIENTES Y COCHES</caption>
            
       <%
		Class.forName("com.mysql.jdbc.Driver");
		Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mecanico","root", "");
		Statement s = conexion.createStatement();
		
		ResultSet listado = s.executeQuery ("SELECT * FROM cliente c , coche co  WHERE c.CodCliente=co.CodCliente and c.codCliente=co.codCoche");
                out.println("<tr><th>codigo cliente</th><th>nombre</th><th>apellidos</th><th>DNI</th><th>ciudad</th><th>codigo coche</th><th>marca</th><th>modelo</th><th>matricula</th><th>reparacion de</th></tr>");
                while (listado.next()) {
                        
			out.println("<tr><td>"+listado.getString("codCliente")+" </td>"+ " " + "<td>"+listado.getString ("nomCliente") +"</td>");
                        out.println("<td>"+listado.getString("apeCliente")+" </td>"+ " " + "<td>"+listado.getString ("DNICliente") +"</td>");
                         out.println("<td>"+listado.getString("ciudadCliente")+" </td>"+ " " + "<td>"+listado.getString ("CodCoche") +"</td>");
                         out.println("<td>"+listado.getString("MarcaCoche")+" </td>"+ " " + "<td>"+listado.getString ("ModeloCoche") +"</td>");
                          out.println("<td>"+listado.getString("Matricula")+" </td>"+ " " + "<td>"+listado.getString ("ReparacionDe") +"</td></tr>");
                                               }
       %>
            
        </table>
       
        <h2>Pincha en la opcion en la que quieras realizar</h2>
        <img src="coche.PNG" width="500px" height="300px">
        <ul>
            <li><a href="datosCompletos.jsp">Datos Completos</a></li>
            <li><a href="datosCliente.jsp">Datos por cliente</a></li>
            <li><a href="anadirCliente.jsp">Añadir Cliente</a></li>
            <li><a href="borrarCliente.jsp">Borrar cliente</a></li>
            <li><a href="modificacion.jsp">modificar</a></li>
            <li><a href="salir.jsp">Salir</a></li>
        </ul>
    </body>
</html>
