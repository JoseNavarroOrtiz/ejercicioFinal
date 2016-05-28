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
		request.setCharacterEncoding("UTF-8");
                
                
                String insercion = "INSERT INTO cliente (CodCliente,NomCliente , ApeCliente, DNICliente, CiudadCliente) VALUES (" 
                         + Integer.valueOf(request.getParameter("codigoCliente"))
                        + ",'"+ request.getParameter("nombre") 
                        + "', '" + request.getParameter("apellidos") 
                        + "', '" + request.getParameter("dni")
                        + "', '" + request.getParameter("ciudad") + "')"; 
                
              
                
                String insercion2="INSERT INTO coche(codCoche,MarcaCoche,ModeloCoche,Matricula,ReparacionDe,CodCliente)VALUES ("
                       + Integer.valueOf(request.getParameter("codigoCoche"))
                         + ",'"+ request.getParameter("marca") 
                        + "', '" + request.getParameter("modelo") 
                        + "', '" + request.getParameter("matricula")
                        + "', '" + request.getParameter("reparacionDe")
                        + "', " + Integer.valueOf(request.getParameter("codigoCliente"))+ ")"; 
                /*String insercion3 = "INSERT INTO cliente VALUES (" 
                      + ", '" + Integer.valueOf(request.getParameter("123"))
                        + ", '" + request.getParameter("fermin") 
                        + "', " + request.getParameter("trujillo") 
                       + ", '" + request.getParameter("23423487Y")
                        + ", '" + request.getParameter("barcelona") + "')"; */
          /* out.print(insercion);
           out.print(insercion2);*/
            s.execute(insercion);
            s.execute(insercion2);
                conexion.close();                                                                                           
            
                    %>
       
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
