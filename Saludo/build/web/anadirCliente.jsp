<%-- 
    Document   : añadirCliente
    Created on : 23-may-2016, 11:57:18
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
       <h2>Introduzca los datos del nuevo socio:</h2> 
       <img src="coche.PNG" width="500px" height="300px">
       <form method="get" action="anadirCliente2.jsp"> 
           codigo cliente <input type="text" name="codigoCliente"/></br>
           Nombre <input type="text" name="nombre"/></br> 
           Apellidos <input type="text" name="apellidos"/></br> 
           DNI <input type="text" name="dni"/></br> 
            Ciudad<input type="text" name="ciudad"/></br> 
           codigo coche <input type="text" name="codigoCoche"/></br>
           Modelo <input type="text" name="modelo"/></br> 
           matricula <input type="text" name="matricula"/></br> 
           Marca <input type="text" name="marca"/></br> 
           Reparacion de<input type="text" name="reparacionDe"/></br> 
           <input type="submit" value="Aceptar"> 
       </form>
    </body>
</html>
