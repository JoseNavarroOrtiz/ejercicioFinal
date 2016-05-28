<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="estiloMecanico.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <h1>MeCaNiCoRdObA</h1>
         <%
		Class.forName("com.mysql.jdbc.Driver");
		Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mecanico","root", "");
		Statement s = conexion.createStatement();
		
		ResultSet listado = s.executeQuery ("SELECT * FROM cliente c , coche co  WHERE c.CodCliente=co.CodCliente and c.codCliente=" +request.getParameter("codigoCliente"));
                out.println("<tr><td>codigo cliente</td><td>nombre</td><td>apellidos</td><td>DNI</td><td>ciudad</td><td>codigo coche</td><td>marca</td><td>modelo</td><td>matricula</td><td>reparacion de</td></tr>");
                /*while (listado.next()) {*/
                listado.next();
                       out.print("<table>");
			out.println("<tr><td>"+listado.getString("codCliente")+" </td>"+ " " + "<td>"+listado.getString ("nomCliente") +"</td>");
                        out.println("<td>"+listado.getString("apeCliente")+" </td>"+ " " + "<td>"+listado.getString ("DNICliente") +"</td>");
                         out.println("<td>"+listado.getString("ciudadCliente")+" </td>"+ " " + "<td>"+listado.getString ("CodCoche") +"</td>");
                         out.println("<td>"+listado.getString("MarcaCoche")+" </td>"+ " " + "<td>"+listado.getString ("ModeloCoche") +"</td>");
                          out.println("<td>"+listado.getString("Matricula")+" </td>"+ " " + "<td>"+listado.getString ("ReparacionDe") +"</td></tr></table>");
                       /*}*/
       %>
       <h2>Que te gustaria modificar</h2>
       <form method="get" action="modificacion3.jsp"> 
           <input type="hidden" name="codigoCliente" value="<% out.print(request.getParameter("codigoCliente")); %> "/>
           <img src="coche.PNG" width="500px" height="300px">
           Nombre <input type="text" name="nombre" value="<% out.print(listado.getString ("nomCliente")); %>"/></br>
           Apellidos <input type="text" name="apellidos"value="<% out.print(listado.getString ("apeCliente")); %>"/></br> 
           DNI <input type="text" name="dni"value="<% out.print(listado.getString ("DNICliente")); %>"/></br> 
            Ciudad<input type="text" name="ciudad"value="<% out.print(listado.getString ("ciudadCliente")); %>"/></br> 
           
           Modelo <input type="text" name="modelo"value="<% out.print(listado.getString ("ModeloCoche")); %>"/></br> 
           matricula <input type="text" name="apellidos"value="<% out.print(listado.getString ("Matricula")); %>"/></br> 
           Marca <input type="text" name="marca"value="<% out.print(listado.getString ("MarcaCoche")); %>"/></br> 
           Reparacion de<input type="text" name="reparacionDe"value="<% out.print(listado.getString ("ReparacionDe")); %>"/></br> 
           
           <input type="submit" value="Aceptar"> 
       </form>
    </body>
</html>
