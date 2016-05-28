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
		
                s.executeQuery ("SELECT * FROM cliente");
                s.execute("DELETE FROM coche WHERE CodCliente =" + request.getParameter("codigoCliente"));
                s.execute("DELETE FROM cliente WHERE CodCliente=" + request.getParameter("codigoCliente"));
                
		/*ResultSet listado = s.executeQuery ("SELECT * FROM cliente c , coche co  WHERE c.CodCliente=co.CodCliente and c.codCliente=" +request.getParameter("codigoCliente"));
                                          s.execute ("DELETE FROM coche WHERE codCoche= " + request.getParameter("CodigoCliente"));
                 /*ResultSet listado2 = s.execute ("DELETE FROM cliente WHERE codCliente= " + request.getParameter("codigoCliente"));*/
                 
       %>
      
        <h1>Pincha en la opcion en la que quieras realizar</h1>
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
