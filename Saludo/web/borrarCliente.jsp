<%-- 
    Document   : borrarCliente
    Created on : 24-may-2016, 6:37:28
    Author     : Jose
--%>

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
        <form action="borrarCliente2.jsp" method="get">
            <img src="coche.PNG" width="500px" height="300px">
            <table>
                <tr>
                    <td>Introduce el codigo del cliente</td>
                    <td><input type="text" name="codigoCliente"> <br><td>
                </tr>
            </table>  
            <input name="boton" type="submit" value="ENVIAR">
        </form>
    </body>
</html>
