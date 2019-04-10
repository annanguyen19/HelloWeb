package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class homeloggedIn_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"//static.stickk.com/yii-assets/923d4c88/css/all.min.css\" />\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"//static.stickk.com/yii-assets/dfdfa539/jquery-ui.min.css\" />\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"//static.stickk.com/yii-assets/70200827/c_eda1b6521b09f9f1ca26292815634e08.css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"tabSection\">\n");
      out.write("\t<div id=\"tabContentContainer\">\n");
      out.write("\t\t\t</div>\n");
      out.write("</div>\n");
      out.write("\t\t\t<div id=\"loggedInMainSection\" class=\"section\">\n");
      out.write("\n");
      out.write("<div class=\"mainContentContainer\">\n");
      out.write("\t<div class=\"container commitment_creation_container commitment_creation_container_step_1 commitment_creation_container_type_custom\">\n");
      out.write("\t\t\t<div class=\"top\"></div>\n");
      out.write("\t\t\t<div class=\"middle\">\n");
      out.write("\t\t\t\t<div id='cForm_rightPane' class=\"type_image\"></div>\n");
      out.write("\t\t\t\t<div id=\"cForm_leftPane\">\n");
      out.write("  <div class=\"commitmentCreationHeader\">\n");
      out.write("  \t<span class=\"commitmentType\">Custom Goal</span>\n");
      out.write("  </div>\n");
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
