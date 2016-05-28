package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class anadirCliente_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"estiloMecanico.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>MeCaNiCoRdObA</h1>\n");
      out.write("       <h2>Introduzca los datos del nuevo socio:</h2> \n");
      out.write("       <img src=\"coche.PNG\" width=\"500px\" height=\"300px\">\n");
      out.write("       <form method=\"get\" action=\"anadirCliente2.jsp\"> \n");
      out.write("           codigo cliente <input type=\"text\" name=\"codigoCliente\"/></br>\n");
      out.write("           Nombre <input type=\"text\" name=\"nombre\"/></br> \n");
      out.write("           Apellidos <input type=\"text\" name=\"apellidos\"/></br> \n");
      out.write("           DNI <input type=\"text\" name=\"dni\"/></br> \n");
      out.write("            Ciudad<input type=\"text\" name=\"ciudad\"/></br> \n");
      out.write("           codigo coche <input type=\"text\" name=\"codigoCoche\"/></br>\n");
      out.write("           Modelo <input type=\"text\" name=\"modelo\"/></br> \n");
      out.write("           matricula <input type=\"text\" name=\"matricula\"/></br> \n");
      out.write("           Marca <input type=\"text\" name=\"marca\"/></br> \n");
      out.write("           Reparacion de<input type=\"text\" name=\"reparacionDe\"/></br> \n");
      out.write("           <input type=\"submit\" value=\"Aceptar\"> \n");
      out.write("       </form>\n");
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
