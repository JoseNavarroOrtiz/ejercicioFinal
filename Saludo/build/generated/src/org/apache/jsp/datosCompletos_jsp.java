package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class datosCompletos_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Listado Completo</title>\n");
      out.write("         <style>\n");
      out.write("                  \n");
      out.write("            \n");
      out.write("    </style>\n");
      out.write("    <link href=\"estiloMecanico.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\n");
      out.write("    </head>\n");
      out.write("   \n");
      out.write("    <body>\n");
      out.write("        <h1>MECANICORDOBA</h1>\n");
      out.write("         <table class=\"estiloLista\">\n");
      out.write("            <caption class=\"estiloCaption\">DATOS CLIENTES Y COCHES</caption>\n");
      out.write("            \n");
      out.write("       ");

		Class.forName("com.mysql.jdbc.Driver");
		Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mecanico","root", "");
		Statement s = conexion.createStatement();
		
		ResultSet listado = s.executeQuery ("SELECT * FROM cliente c , coche co  WHERE c.CodCliente=co.CodCliente");
                out.println("<tr><th>codigo cliente</th><th>nombre</th><th>apellidos</th><th>DNI</th><th>ciudad</th><th>codigo coche</th><th>marca</th><th>modelo</th><th>matricula</th><th>reparacion de</th></tr>");
                while (listado.next()) {
                        
			out.println("<tr><td>"+listado.getString("codCliente")+" </td>"+ " " + "<td>"+listado.getString ("nomCliente") +"</td>");
                        out.println("<td>"+listado.getString("apeCliente")+" </td>"+ " " + "<td>"+listado.getString ("DNICliente") +"</td>");
                         out.println("<td>"+listado.getString("ciudadCliente")+" </td>"+ " " + "<td>"+listado.getString ("CodCoche") +"</td>");
                         out.println("<td>"+listado.getString("MarcaCoche")+" </td>"+ " " + "<td>"+listado.getString ("ModeloCoche") +"</td>");
                          out.println("<td>"+listado.getString("Matricula")+" </td>"+ " " + "<td>"+listado.getString ("ReparacionDe") +"</td></tr>");
                                               }
       
      out.write("\n");
      out.write("            \n");
      out.write("        </table>\n");
      out.write("       \n");
      out.write("        <h2>Pincha en la opcion en la que quieras realizar</h2>\n");
      out.write("        <ul>\n");
      out.write("            <li><a href=\"datosCompletos.jsp\">Datos Completos</a></li>\n");
      out.write("            <li><a href=\"datosCliente.jsp\">Datos por cliente</a></li>\n");
      out.write("            <li><a href=\"anadirCliente.jsp\">Añadir Cliente</a></li>\n");
      out.write("            <li><a href=\"borrarCliente.jsp\">Borrar cliente</a></li>\n");
      out.write("            <li><a href=\"modificacion.jsp\">modificar</a></li>\n");
      out.write("            <li><a href=\"salir.jsp\">Salir</a></li>\n");
      out.write("        </ul>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
