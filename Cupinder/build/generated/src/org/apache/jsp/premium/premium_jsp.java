package org.apache.jsp.premium;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class premium_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ\" crossorigin=\"anonymous\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"../CSS/stylesheet.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../HEADER/header.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <h1>Tarifas</h1>\n");
      out.write("        <div class=\"row row-cols-1 row-cols-md-3 mb-3 text-center\">\n");
      out.write("            <div class=\"col\">\n");
      out.write("                <div class=\"card mb-4 rounded-3 shadow-sm\">\n");
      out.write("                    <div class=\"card-header py-3\">\n");
      out.write("                        <h4 class=\"my-0 fw-normal\">Free</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"card-body\">\n");
      out.write("                        <h1 class=\"card-title pricing-card-title\">$0<small class=\"text-muted fw-light\">/mo</small></h1>\n");
      out.write("                        <ul class=\"list-unstyled mt-3 mb-4\">\n");
      out.write("                            <li>10 usuarios incluídos</li>\n");
      out.write("                            <li>2 GB de almacenamiento</li>\n");
      out.write("                            <li>Emails</li>\n");
      out.write("                            <li>Acceso al centro de ayuda</li>\n");
      out.write("                        </ul>\n");
      out.write("                        <button type=\"button\" class=\"w-100 btn btn-lg btn-outline-primary\">Sign up for free</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col\">\n");
      out.write("                <div class=\"card mb-4 rounded-3 shadow-sm\">\n");
      out.write("                    <div class=\"card-header py-3\">\n");
      out.write("                        <h4 class=\"my-0 fw-normal\">Pro</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"card-body\">\n");
      out.write("                        <h1 class=\"card-title pricing-card-title\">$15<small class=\"text-muted fw-light\">/mo</small></h1>\n");
      out.write("                        <ul class=\"list-unstyled mt-3 mb-4\">\n");
      out.write("                            <li>20 usuarios incluídos</li>\n");
      out.write("                            <li>10 GB de almacenamiento</li>\n");
      out.write("                            <li>Prioridad soporte vía Email</li>\n");
      out.write("                            <li>Acceso al centro de ayuda</li>\n");
      out.write("                        </ul>\n");
      out.write("                        <button type=\"button\" class=\"w-100 btn btn-lg btn-primary\">Get started</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col\">\n");
      out.write("                <div class=\"card mb-4 rounded-3 shadow-sm border-primary\">\n");
      out.write("                    <div class=\"card-header py-3 text-white bg-primary border-primary\">\n");
      out.write("                        <h4 class=\"my-0 fw-normal\">Empresas</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"card-body\">\n");
      out.write("                        <h1 class=\"card-title pricing-card-title\">$29<small class=\"text-muted fw-light\">/mo</small></h1>\n");
      out.write("                        <ul class=\"list-unstyled mt-3 mb-4\">\n");
      out.write("                            <li>30 usuarios incluídos</li>\n");
      out.write("                            <li>15 GB de almacenamiento</li>\n");
      out.write("                            <li>Ayuda vía Email y Teléfono</li>\n");
      out.write("                            <li>Acceso al centro de ayuda</li>\n");
      out.write("                        </ul>\n");
      out.write("                        <button type=\"button\" class=\"w-100 btn btn-lg btn-primary\">Contact us</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../FOOTER/footer.jsp", out, false);
      out.write("\n");
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
