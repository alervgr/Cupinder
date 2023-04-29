package org.apache.jsp.REGISTER;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_s_select_placeholder_name_list_label_cssClass_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_s_form_theme_name_action;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_s_password_placeholder_name_label_cssClass_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_s_select_placeholder_name_list_label_cssClass_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_s_form_theme_name_action = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_s_password_placeholder_name_label_cssClass_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_s_select_placeholder_name_list_label_cssClass_nobody.release();
    _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody.release();
    _jspx_tagPool_s_form_theme_name_action.release();
    _jspx_tagPool_s_password_placeholder_name_label_cssClass_nobody.release();
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../HEADER/header.jsp", out, false);
      out.write("\r\n");
      out.write("        <div div class=\"container p-3\" style=\"background-color: #f8edeb; height: 78vh\">\r\n");
      out.write("            ");
      if (_jspx_meth_s_form_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../FOOTER/footer.jsp", out, false);
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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

  private boolean _jspx_meth_s_form_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:form
    org.apache.struts2.views.jsp.ui.FormTag _jspx_th_s_form_0 = (org.apache.struts2.views.jsp.ui.FormTag) _jspx_tagPool_s_form_theme_name_action.get(org.apache.struts2.views.jsp.ui.FormTag.class);
    _jspx_th_s_form_0.setPageContext(_jspx_page_context);
    _jspx_th_s_form_0.setParent(null);
    _jspx_th_s_form_0.setName("register-form");
    _jspx_th_s_form_0.setAction("register");
    _jspx_th_s_form_0.setTheme("simple");
    int _jspx_eval_s_form_0 = _jspx_th_s_form_0.doStartTag();
    if (_jspx_eval_s_form_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      if (_jspx_eval_s_form_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.pushBody();
        _jspx_th_s_form_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
        _jspx_th_s_form_0.doInitBody();
      }
      do {
        out.write("\r\n");
        out.write("                <div class=\"row g-3\">\r\n");
        out.write("                    <div class=\"form-floating col-sm-6\">\r\n");
        out.write("                        ");
        if (_jspx_meth_s_textfield_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_s_form_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("\r\n");
        out.write("                        <label for=\"floatingInput\">Nombre</label>\r\n");
        out.write("                    </div>\r\n");
        out.write("                    <div class=\"form-floating col-sm-6\">\r\n");
        out.write("                        ");
        if (_jspx_meth_s_textfield_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_s_form_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("\r\n");
        out.write("                        <label for=\"floatingInput\">Apellidos</label>\r\n");
        out.write("                    </div>\r\n");
        out.write("\r\n");
        out.write("\r\n");
        out.write("                    <div class=\"input-group mb-3\">\r\n");
        out.write("                        <span class=\"input-group-text\">@</span>\r\n");
        out.write("                        <div class=\"form-floating col-12\">\r\n");
        out.write("                            ");
        if (_jspx_meth_s_textfield_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_s_form_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                            <label for=\"floatingInput\">Usuario</label>\r\n");
        out.write("                        </div>\r\n");
        out.write("                    </div>\r\n");
        out.write("\r\n");
        out.write("                    <div class=\"form-floating input-group mb-3 col-6\">\r\n");
        out.write("                        <span class=\"input-group-text\"><i class=\"fa-solid fa-key\"></i></span>\r\n");
        out.write("                        <div class=\"form-floating col-6\">\r\n");
        out.write("                            ");
        if (_jspx_meth_s_password_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_s_form_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                            <label for=\"floatingInput\">Contraseña</label>\r\n");
        out.write("                        </div>\r\n");
        out.write("                    </div>\r\n");
        out.write("\r\n");
        out.write("                    <div class=\"form-floating input-group mb-3 col-6\">\r\n");
        out.write("                        <span class=\"input-group-text\"><i class=\"fa-solid fa-key\"></i></span>\r\n");
        out.write("                        <div class=\"form-floating col-6\">\r\n");
        out.write("                            ");
        if (_jspx_meth_s_password_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_s_form_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                            <label for=\"floatingInput\">Repita la Contraseña</label>\r\n");
        out.write("                        </div>\r\n");
        out.write("                    </div>\r\n");
        out.write("\r\n");
        out.write("                    <div class=\"form-floating col-12\">\r\n");
        out.write("\r\n");
        out.write("                        ");
        if (_jspx_meth_s_textfield_3((javax.servlet.jsp.tagext.JspTag) _jspx_th_s_form_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                        <label for=\"floatingInput\">Correo Electrónico</label>\r\n");
        out.write("                    </div>\r\n");
        out.write("\r\n");
        out.write("                    <div class=\"form-floating col-sm-4\">\r\n");
        out.write("\r\n");
        out.write("                        ");
        if (_jspx_meth_s_textfield_4((javax.servlet.jsp.tagext.JspTag) _jspx_th_s_form_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                        <label for=\"floatingInput\">Edad</label>\r\n");
        out.write("                    </div>\r\n");
        out.write("\r\n");
        out.write("                    <div class=\"form-floating col-sm-4\">\r\n");
        out.write("                        ");
        if (_jspx_meth_s_select_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_s_form_0, _jspx_page_context))
          return true;
        out.write("                                                  \r\n");
        out.write("                        <label for=\"floatingInput\">Sexo</label>\r\n");
        out.write("                    </div>\r\n");
        out.write("\r\n");
        out.write("                    <div class=\"form-floating col-sm-4\">\r\n");
        out.write("                        ");
        if (_jspx_meth_s_select_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_s_form_0, _jspx_page_context))
          return true;
        out.write("                                                  \r\n");
        out.write("                        <label for=\"floatingInput\">Orientacion</label>\r\n");
        out.write("                    </div> \r\n");
        out.write("                    <div class=\"form-floating col-sm-6\">\r\n");
        out.write("                        ");
        if (_jspx_meth_s_select_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_s_form_0, _jspx_page_context))
          return true;
        out.write("                                                  \r\n");
        out.write("                        <label for=\"floatingInput\">Facultad</label>\r\n");
        out.write("                    </div>\r\n");
        out.write("                    <div class=\"form-floating col-sm-6\">\r\n");
        out.write("                        ");
        if (_jspx_meth_s_textfield_5((javax.servlet.jsp.tagext.JspTag) _jspx_th_s_form_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("\r\n");
        out.write("                        <label for=\"floatingInput\">Ciudad</label>\r\n");
        out.write("                    </div>\r\n");
        out.write("\r\n");
        out.write("                </div>\r\n");
        out.write("            ");
        int evalDoAfterBody = _jspx_th_s_form_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
      if (_jspx_eval_s_form_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
        out = _jspx_page_context.popBody();
    }
    if (_jspx_th_s_form_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_form_theme_name_action.reuse(_jspx_th_s_form_0);
      return true;
    }
    _jspx_tagPool_s_form_theme_name_action.reuse(_jspx_th_s_form_0);
    return false;
  }

  private boolean _jspx_meth_s_textfield_0(javax.servlet.jsp.tagext.JspTag _jspx_th_s_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:textfield
    org.apache.struts2.views.jsp.ui.TextFieldTag _jspx_th_s_textfield_0 = (org.apache.struts2.views.jsp.ui.TextFieldTag) _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody.get(org.apache.struts2.views.jsp.ui.TextFieldTag.class);
    _jspx_th_s_textfield_0.setPageContext(_jspx_page_context);
    _jspx_th_s_textfield_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_s_form_0);
    _jspx_th_s_textfield_0.setName("nombre");
    _jspx_th_s_textfield_0.setLabel("Nombre");
    _jspx_th_s_textfield_0.setCssClass("form-control");
    _jspx_th_s_textfield_0.setDynamicAttribute(null, "placeholder", new String("Nombre"));
    int _jspx_eval_s_textfield_0 = _jspx_th_s_textfield_0.doStartTag();
    if (_jspx_th_s_textfield_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody.reuse(_jspx_th_s_textfield_0);
      return true;
    }
    _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody.reuse(_jspx_th_s_textfield_0);
    return false;
  }

  private boolean _jspx_meth_s_textfield_1(javax.servlet.jsp.tagext.JspTag _jspx_th_s_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:textfield
    org.apache.struts2.views.jsp.ui.TextFieldTag _jspx_th_s_textfield_1 = (org.apache.struts2.views.jsp.ui.TextFieldTag) _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody.get(org.apache.struts2.views.jsp.ui.TextFieldTag.class);
    _jspx_th_s_textfield_1.setPageContext(_jspx_page_context);
    _jspx_th_s_textfield_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_s_form_0);
    _jspx_th_s_textfield_1.setName("apellidos");
    _jspx_th_s_textfield_1.setLabel("Apellidos");
    _jspx_th_s_textfield_1.setCssClass("form-control");
    _jspx_th_s_textfield_1.setDynamicAttribute(null, "placeholder", new String("Apellidos"));
    int _jspx_eval_s_textfield_1 = _jspx_th_s_textfield_1.doStartTag();
    if (_jspx_th_s_textfield_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody.reuse(_jspx_th_s_textfield_1);
      return true;
    }
    _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody.reuse(_jspx_th_s_textfield_1);
    return false;
  }

  private boolean _jspx_meth_s_textfield_2(javax.servlet.jsp.tagext.JspTag _jspx_th_s_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:textfield
    org.apache.struts2.views.jsp.ui.TextFieldTag _jspx_th_s_textfield_2 = (org.apache.struts2.views.jsp.ui.TextFieldTag) _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody.get(org.apache.struts2.views.jsp.ui.TextFieldTag.class);
    _jspx_th_s_textfield_2.setPageContext(_jspx_page_context);
    _jspx_th_s_textfield_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_s_form_0);
    _jspx_th_s_textfield_2.setName("usuario");
    _jspx_th_s_textfield_2.setLabel("Usuario");
    _jspx_th_s_textfield_2.setCssClass("form-control");
    _jspx_th_s_textfield_2.setDynamicAttribute(null, "placeholder", new String("Usuario"));
    int _jspx_eval_s_textfield_2 = _jspx_th_s_textfield_2.doStartTag();
    if (_jspx_th_s_textfield_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody.reuse(_jspx_th_s_textfield_2);
      return true;
    }
    _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody.reuse(_jspx_th_s_textfield_2);
    return false;
  }

  private boolean _jspx_meth_s_password_0(javax.servlet.jsp.tagext.JspTag _jspx_th_s_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:password
    org.apache.struts2.views.jsp.ui.PasswordTag _jspx_th_s_password_0 = (org.apache.struts2.views.jsp.ui.PasswordTag) _jspx_tagPool_s_password_placeholder_name_label_cssClass_nobody.get(org.apache.struts2.views.jsp.ui.PasswordTag.class);
    _jspx_th_s_password_0.setPageContext(_jspx_page_context);
    _jspx_th_s_password_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_s_form_0);
    _jspx_th_s_password_0.setName("password");
    _jspx_th_s_password_0.setLabel("Contraseña");
    _jspx_th_s_password_0.setCssClass("form-control");
    _jspx_th_s_password_0.setDynamicAttribute(null, "placeholder", new String("Contraseña"));
    int _jspx_eval_s_password_0 = _jspx_th_s_password_0.doStartTag();
    if (_jspx_th_s_password_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_password_placeholder_name_label_cssClass_nobody.reuse(_jspx_th_s_password_0);
      return true;
    }
    _jspx_tagPool_s_password_placeholder_name_label_cssClass_nobody.reuse(_jspx_th_s_password_0);
    return false;
  }

  private boolean _jspx_meth_s_password_1(javax.servlet.jsp.tagext.JspTag _jspx_th_s_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:password
    org.apache.struts2.views.jsp.ui.PasswordTag _jspx_th_s_password_1 = (org.apache.struts2.views.jsp.ui.PasswordTag) _jspx_tagPool_s_password_placeholder_name_label_cssClass_nobody.get(org.apache.struts2.views.jsp.ui.PasswordTag.class);
    _jspx_th_s_password_1.setPageContext(_jspx_page_context);
    _jspx_th_s_password_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_s_form_0);
    _jspx_th_s_password_1.setName("passwordConfirm");
    _jspx_th_s_password_1.setLabel("Contraseña");
    _jspx_th_s_password_1.setCssClass("form-control");
    _jspx_th_s_password_1.setDynamicAttribute(null, "placeholder", new String("Repita la Contraseña"));
    int _jspx_eval_s_password_1 = _jspx_th_s_password_1.doStartTag();
    if (_jspx_th_s_password_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_password_placeholder_name_label_cssClass_nobody.reuse(_jspx_th_s_password_1);
      return true;
    }
    _jspx_tagPool_s_password_placeholder_name_label_cssClass_nobody.reuse(_jspx_th_s_password_1);
    return false;
  }

  private boolean _jspx_meth_s_textfield_3(javax.servlet.jsp.tagext.JspTag _jspx_th_s_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:textfield
    org.apache.struts2.views.jsp.ui.TextFieldTag _jspx_th_s_textfield_3 = (org.apache.struts2.views.jsp.ui.TextFieldTag) _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody.get(org.apache.struts2.views.jsp.ui.TextFieldTag.class);
    _jspx_th_s_textfield_3.setPageContext(_jspx_page_context);
    _jspx_th_s_textfield_3.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_s_form_0);
    _jspx_th_s_textfield_3.setName("email");
    _jspx_th_s_textfield_3.setLabel("Correo Electrónico");
    _jspx_th_s_textfield_3.setCssClass("form-control");
    _jspx_th_s_textfield_3.setDynamicAttribute(null, "placeholder", new String("you@example.com"));
    int _jspx_eval_s_textfield_3 = _jspx_th_s_textfield_3.doStartTag();
    if (_jspx_th_s_textfield_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody.reuse(_jspx_th_s_textfield_3);
      return true;
    }
    _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody.reuse(_jspx_th_s_textfield_3);
    return false;
  }

  private boolean _jspx_meth_s_textfield_4(javax.servlet.jsp.tagext.JspTag _jspx_th_s_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:textfield
    org.apache.struts2.views.jsp.ui.TextFieldTag _jspx_th_s_textfield_4 = (org.apache.struts2.views.jsp.ui.TextFieldTag) _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody.get(org.apache.struts2.views.jsp.ui.TextFieldTag.class);
    _jspx_th_s_textfield_4.setPageContext(_jspx_page_context);
    _jspx_th_s_textfield_4.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_s_form_0);
    _jspx_th_s_textfield_4.setName("edad");
    _jspx_th_s_textfield_4.setLabel("Edad");
    _jspx_th_s_textfield_4.setCssClass("form-control");
    _jspx_th_s_textfield_4.setDynamicAttribute(null, "placeholder", new String("Edad"));
    int _jspx_eval_s_textfield_4 = _jspx_th_s_textfield_4.doStartTag();
    if (_jspx_th_s_textfield_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody.reuse(_jspx_th_s_textfield_4);
      return true;
    }
    _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody.reuse(_jspx_th_s_textfield_4);
    return false;
  }

  private boolean _jspx_meth_s_select_0(javax.servlet.jsp.tagext.JspTag _jspx_th_s_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:select
    org.apache.struts2.views.jsp.ui.SelectTag _jspx_th_s_select_0 = (org.apache.struts2.views.jsp.ui.SelectTag) _jspx_tagPool_s_select_placeholder_name_list_label_cssClass_nobody.get(org.apache.struts2.views.jsp.ui.SelectTag.class);
    _jspx_th_s_select_0.setPageContext(_jspx_page_context);
    _jspx_th_s_select_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_s_form_0);
    _jspx_th_s_select_0.setName("sexo");
    _jspx_th_s_select_0.setLabel("Sexo");
    _jspx_th_s_select_0.setCssClass("form-control");
    _jspx_th_s_select_0.setDynamicAttribute(null, "placeholder", new String("Sexo"));
    _jspx_th_s_select_0.setList("{'Mujer','Hombre'}");
    int _jspx_eval_s_select_0 = _jspx_th_s_select_0.doStartTag();
    if (_jspx_th_s_select_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_select_placeholder_name_list_label_cssClass_nobody.reuse(_jspx_th_s_select_0);
      return true;
    }
    _jspx_tagPool_s_select_placeholder_name_list_label_cssClass_nobody.reuse(_jspx_th_s_select_0);
    return false;
  }

  private boolean _jspx_meth_s_select_1(javax.servlet.jsp.tagext.JspTag _jspx_th_s_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:select
    org.apache.struts2.views.jsp.ui.SelectTag _jspx_th_s_select_1 = (org.apache.struts2.views.jsp.ui.SelectTag) _jspx_tagPool_s_select_placeholder_name_list_label_cssClass_nobody.get(org.apache.struts2.views.jsp.ui.SelectTag.class);
    _jspx_th_s_select_1.setPageContext(_jspx_page_context);
    _jspx_th_s_select_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_s_form_0);
    _jspx_th_s_select_1.setName("orientacion");
    _jspx_th_s_select_1.setLabel("Orientacion");
    _jspx_th_s_select_1.setCssClass("form-control");
    _jspx_th_s_select_1.setDynamicAttribute(null, "placeholder", new String("Orientacion"));
    _jspx_th_s_select_1.setList("{'Heterosexual','Homosexual','Bisexual'}");
    int _jspx_eval_s_select_1 = _jspx_th_s_select_1.doStartTag();
    if (_jspx_th_s_select_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_select_placeholder_name_list_label_cssClass_nobody.reuse(_jspx_th_s_select_1);
      return true;
    }
    _jspx_tagPool_s_select_placeholder_name_list_label_cssClass_nobody.reuse(_jspx_th_s_select_1);
    return false;
  }

  private boolean _jspx_meth_s_select_2(javax.servlet.jsp.tagext.JspTag _jspx_th_s_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:select
    org.apache.struts2.views.jsp.ui.SelectTag _jspx_th_s_select_2 = (org.apache.struts2.views.jsp.ui.SelectTag) _jspx_tagPool_s_select_placeholder_name_list_label_cssClass_nobody.get(org.apache.struts2.views.jsp.ui.SelectTag.class);
    _jspx_th_s_select_2.setPageContext(_jspx_page_context);
    _jspx_th_s_select_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_s_form_0);
    _jspx_th_s_select_2.setName("facultad");
    _jspx_th_s_select_2.setLabel("Facultad");
    _jspx_th_s_select_2.setCssClass("form-control");
    _jspx_th_s_select_2.setDynamicAttribute(null, "placeholder", new String("Facultad"));
    _jspx_th_s_select_2.setList("{'Derecho', 'Informática', 'Biotecnología', 'Nutrición'}");
    int _jspx_eval_s_select_2 = _jspx_th_s_select_2.doStartTag();
    if (_jspx_th_s_select_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_select_placeholder_name_list_label_cssClass_nobody.reuse(_jspx_th_s_select_2);
      return true;
    }
    _jspx_tagPool_s_select_placeholder_name_list_label_cssClass_nobody.reuse(_jspx_th_s_select_2);
    return false;
  }

  private boolean _jspx_meth_s_textfield_5(javax.servlet.jsp.tagext.JspTag _jspx_th_s_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:textfield
    org.apache.struts2.views.jsp.ui.TextFieldTag _jspx_th_s_textfield_5 = (org.apache.struts2.views.jsp.ui.TextFieldTag) _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody.get(org.apache.struts2.views.jsp.ui.TextFieldTag.class);
    _jspx_th_s_textfield_5.setPageContext(_jspx_page_context);
    _jspx_th_s_textfield_5.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_s_form_0);
    _jspx_th_s_textfield_5.setName("ciudad");
    _jspx_th_s_textfield_5.setLabel("Ciudad");
    _jspx_th_s_textfield_5.setCssClass("form-control");
    _jspx_th_s_textfield_5.setDynamicAttribute(null, "placeholder", new String("Ciudad"));
    int _jspx_eval_s_textfield_5 = _jspx_th_s_textfield_5.doStartTag();
    if (_jspx_th_s_textfield_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody.reuse(_jspx_th_s_textfield_5);
      return true;
    }
    _jspx_tagPool_s_textfield_placeholder_name_label_cssClass_nobody.reuse(_jspx_th_s_textfield_5);
    return false;
  }
}
