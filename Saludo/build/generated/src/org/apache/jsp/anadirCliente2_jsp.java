package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class anadirCliente2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"estiloMecanico.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>MeCaNiCoRdObA</h1>\n");
      out.write("            ");

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
                
              
                
                String insercion2="INSERT INTO coche(codCoche,MarcaCoche,ModeloCoche,Matricula,ReparacionDe)VALUES ("
                       + Integer.valueOf(request.getParameter("codigoCoche"))
                         + "'"+ request.getParameter("marca") 
                        + "', '" + request.getParameter("modelo") 
                        + "', '" + request.getParameter("matricula")
                        + "', '" + request.getParameter("reparacionDe") + "')"; 
                /*String insercion3 = "INSERT INTO cliente VALUES (" 
                      + ", '" + Integer.valueOf(request.getParameter("123"))
                        + ", '" + request.getParameter("fermin") 
                        + "', " + request.getParameter("trujillo") 
                       + ", '" + request.getParameter("23423487Y")
                        + ", '" + request.getParameter("barcelona") + "')"; */
           //out.print(insercion);
            s.execute(insercion);
            s.execute(insercion2);
                conexion.close();                                                                                             
            
                    
      out.write("\n");
      out.write("       \n");
      out.write("        <h2>Pincha en la opcion en la que quieras realizar</h2>\n");
      out.write("        <img src=\"coche.PNG\" width=\"500px\" height=\"300px\">\n");
      out.write("        <ul>\n");
      out.write("            <li><a href=\"datosCompletos.jsp\">Datos Completos</a></li>\n");
      out.write("            <li><a href=\"datosCliente.jsp\">Datos por cliente</a></li>\n");
      out.write("            <li><a href=\"anadirCliente.jsp\">Añadir Cliente</a></li>\n");
      out.write("            <li><a href=\"borrarCliente.jsp\">Borrar cliente</a></li>\n");
      out.write("             <li><a href=\"modificacion.jsp\">modificar</a></li>\n");
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
