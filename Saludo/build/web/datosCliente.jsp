
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos del cliente </title>
        <link href="estiloMecanico.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        
      
        <img src="coche.PNG" width="500px" height="300px">
        <form action="datosCliente2.jsp" method="get">
            
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
