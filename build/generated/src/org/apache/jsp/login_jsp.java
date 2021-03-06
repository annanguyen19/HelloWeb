package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("\t<title>Login </title>\n");
      out.write("\t<meta charset=\"UTF-8\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/login_util.css\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/login_main.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t\n");
      out.write("\t<div class=\"limiter\">\n");
      out.write("\t\t<div class=\"container-login100\">\n");
      out.write("\t\t\t<div class=\"wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50\">\n");
      out.write("\t\t\t\t<form class=\"login100-form validate-form\" action=\"login\" method=\"POST\" id=\"loginForm\">\n");
      out.write("\t\t\t\t\t<span class=\"login100-form-title p-b-33\">\n");
      out.write("\t\t\t\t\t\tLogin\n");
      out.write("\t\t\t\t\t</span>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"wrap-input100 validate-input\" data-validate = \"Valid email is required: ex@abc.xyz\">\n");
      out.write("\t\t\t\t\t\t<input class=\"input100\" type=\"text\" name=\"email\" placeholder=\"Email\">\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100-1\"></span>\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100-2\"></span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"wrap-input100 rs1 validate-input\" data-validate=\"Password is required\">\n");
      out.write("\t\t\t\t\t\t<input class=\"input100\" type=\"password\" name=\"pass\" placeholder=\"Password\">\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100-1\"></span>\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100-2\"></span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"container-login100-form-btn m-t-20\">\n");
      out.write("\t\t\t\t\t\t<button class=\"login100-form-btn\">\n");
      out.write("\t\t\t\t\t\t\tSign in\n");
      out.write("\t\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"text-center p-t-45 p-b-4\">\n");
      out.write("\t\t\t\t\t\t<span class=\"txt1\">\n");
      out.write("\t\t\t\t\t\t\tForgot\n");
      out.write("\t\t\t\t\t\t</span>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" class=\"txt2 hov1\">\n");
      out.write("\t\t\t\t\t\t\tUsername / Password?\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"text-center\">\n");
      out.write("\t\t\t\t\t\t<span class=\"txt1\">\n");
      out.write("\t\t\t\t\t\t\tCreate an account?\n");
      out.write("\t\t\t\t\t\t</span>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<a href=\"javascript:void(doSubmit())\" class=\"txt2 hov1\">\n");
      out.write("\t\t\t\t\t\t\tSign up\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("        function doSubmit() {\n");
      out.write("            document.getElementById(\"loginForm\").submit();\n");
      out.write("                     }\n");
      out.write("    </script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"vendor/jquery/jquery-3.2.1.min.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"vendor/animsition/js/animsition.min.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"vendor/bootstrap/js/popper.js\"></script>\n");
      out.write("\t<script src=\"vendor/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"js/main.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
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
