package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class commitmentStep3_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    \t<head>\n");
      out.write("\t\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("\t\t<meta name=\"language\" content=\"en\" />\n");
      out.write("\t\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=9; IE=8; IE=7; IE=EDGE\" />\n");
      out.write("\t\t<!--<meta name=\"apple-itunes-app\" content=\"app-id=776128765\">-->\n");
      out.write("\t\t<script type=\"text/javascript\">\n");
      out.write("\t\t\tvar PORTAL_NAME = 'stickK';\n");
      out.write("\t\t\tvar PORTAL_CODE = 'stickk';\n");
      out.write("\t\t</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t<script defer src=\"https://code.getmdl.io/1.1.3/material.min.js\"></script>\n");
      out.write("\t\t<link rel=\"manifest\" href=\"/js/PNS/manifest.json\">\n");
      out.write("\t\t<script src=\"https://www.gstatic.com/firebasejs/3.6.1/firebase.js\"></script>\n");
      out.write("\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"//static.stickk.com/yii-assets/923d4c88/css/all.min.css\" />\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"//static.stickk.com/yii-assets/dfdfa539/jquery-ui.min.css\" />\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"//static.stickk.com/yii-assets/70200827/c_eda1b6521b09f9f1ca26292815634e08.css\" />\n");
      out.write("<style type=\"text/css\">\n");
      out.write("/*<![CDATA[*/\n");
      out.write("#fixedBottomLinks{ display: none; }\n");
      out.write("/*]]>*/\n");
      out.write("</style>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("/*<![CDATA[*/\n");
      out.write("\t.contractSummaryContainer\n");
      out.write("\t{\n");
      out.write("\t\ttext-align: left;\n");
      out.write("\t}\n");
      out.write("/*]]>*/\n");
      out.write("</style>\n");
      out.write("<script type=\"text/javascript\" src=\"//static.stickk.com/yii-assets/70200827/jquery.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"//static.stickk.com/yii-assets/70200827/jquery.ba-bbq.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"/js/prettyPhoto_compressed_3.1.5/js/jquery.prettyPhoto.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"/js/jquery.slick/1.5.9/slick.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"//static.stickk.com/yii-assets/70200827/jquery.yiiactiveform.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"//static.stickk.com/language/content_EN.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"/js/countryState_lib.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"//static.stickk.com/yii-assets/dfdfa539/jquery-ui.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"//static.stickk.com/yii-assets/dfdfa539/jquery-ui-i18n.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"/js/stickk.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"/js/contract/contractTypeAutoCompleter.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"/js/stickk-basics.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"/js/EditCard.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"/js/contract/calendar/calendar.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"/js/contract/calendar/lang/calendar-en.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"/js/contract/calendar/calendar-setup.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"/js/stickk-misc.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"/js/contract/user-forms.js\"></script>\n");
      out.write("\n");
      out.write("<title>stickK - Referee Contract</title>\n");
      out.write("\t\t<link rel=\"icon\" href=\"/themes/stickk/favicon.ico\" type=\"image/x-icon\" />\n");
      out.write("\t\t<link rel=\"shortcut icon\" href=\"/themes/stickk/favicon.ico\" type=\"image/x-icon\" />\n");
      out.write("        <link href=\"//fonts.googleapis.com/css?family=Raleway:400,700\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\t\t<link href=\"/manifest.json\" rel=\"manifest\">\n");
      out.write("\t\t<meta name=\"apple-itunes-app\" content=\"app-id=776128765\" />\n");
      out.write("\n");
      out.write("\t\t\n");
      out.write("\t</head>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<body class=\"en\">\n");
      out.write("\n");
      out.write("\t\t<div id=\"loggedInPage\">\n");
      out.write("\n");
      out.write("\t\t\t<a id=\"mobileNavButton\" href=\"#mobileMenu\">\n");
      out.write("\t\t\t\t<img src=\"/images/site/index/top_menu_mobile_btn.png\" alt=\"menu\" />\n");
      out.write("\t\t\t</a>\n");
      out.write("\n");
      out.write("\t\t\t<nav id=\"mobileMenu\" class=\"mm-menu mm-horizontal mm-ismenu mm-offcanvas mm-right\">\n");
      out.write("\n");
      out.write("<ul id=\"topMenuMobile\">\n");
      out.write("<li><span><style>\n");
      out.write("\t.profileWidgetMobileContainer\n");
      out.write("\t{\n");
      out.write("\t\ttable-layout: fixed;\n");
      out.write("\t\twidth: 100%;\n");
      out.write("\t}\n");
      out.write("\n");
      out.write("\t.profileWidgetMobileAvatar\n");
      out.write("\t{\n");
      out.write("\t\twidth: 50px;\n");
      out.write("\t}\n");
      out.write("\n");
      out.write("\t.profileWidgetMobileUsername\n");
      out.write("\t{\n");
      out.write("\t\tline-height: 1rem;\n");
      out.write("\t\toverflow: hidden;\n");
      out.write("\t\tpadding-left: 1rem;\n");
      out.write("\t\twhite-space: normal;\n");
      out.write("\t\twidth: 100%;\n");
      out.write("\t\tword-wrap: break-word;\n");
      out.write("\t}\n");
      out.write("\n");
      out.write("\t.profileWidgetMobileFacebook\n");
      out.write("\t{\n");
      out.write("\t\tfont-size: 0.625rem;\n");
      out.write("\t\tpadding-left: 1rem;\n");
      out.write("\t}\n");
      out.write("</style>\n");
      out.write("<table class=\"profileWidgetMobileContainer\">\n");
      out.write("\t<tr>\n");
      out.write("\t\t<td class=\"profileWidgetMobileAvatar\" rowspan=\"2\">\n");
      out.write("\t\t\t<a href=\"https://www.stickk.com/commitment\">\n");
      out.write("\t\t\t\t<img id=\"userProfileWidgetImage\" width=\"50\" height=\"50\" border=\"0\" src=\"//static.stickk.com/avatars/tiny_default.png\">\n");
      out.write("\t\t\t</a>\n");
      out.write("\t\t</td>\n");
      out.write("\t\t<td class=\"profileWidgetMobileUsername\">\n");
      out.write("\t\t\tntngocanh19\t\t</td>\n");
      out.write("\t</tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("</table>\n");
      out.write("</span></li>\n");
      out.write("<li><a href=\"https://www.stickk.com/aboutus\">About Us</a></li>\n");
      out.write("<li><a href=\"https://www.stickk.com/tour\">How it Works</a></li>\n");
      out.write("<li><a href=\"https://stickk.zendesk.com/hc\">Help Center</a></li>\n");
      out.write("<li><a href=\"https://stickk.zendesk.com/hc/requests/new\">Contact Us</a></li>\n");
      out.write("<li><a href=\"https://www.stickk.com/profile\">Account Settings</a></li>\n");
      out.write("<li><a href=\"https://www.stickk.com/logout\">Logout</a></li>\n");
      out.write("</ul>\n");
      out.write("\t\t\t</nav>\n");
      out.write("\n");
      out.write("\t\t\t<div id=\"loggedInHeaderSection\" class=\"\">\n");
      out.write("                <div id=\"headerContent\" class=\"flexRow\">\n");
      out.write("\t\t\t\t\t<div id=\"logoContainer\">\n");
      out.write("\t\t\t\t\t\t<a id=\"logo\" href=\"https://www.stickk.com/commitment\" title=\"stickK\"></a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div id=\"loggedInTopMenuContainer\">\n");
      out.write("\t\t\t\t\t\t<ul id=\"shortcutTopMenu\" class=\"flexRow\">\n");
      out.write("\t\t\t\t\t\t\t<li class=\"topMenuItem\" title=\"Home\">\n");
      out.write("\t\t\t\t\t\t\t\t<a id=\"commitmentsShortcut\" class=\"topMenuIcon commitments\" href=\"https://www.stickk.com/commitment\"></a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"topMenuItem\" title=\"Messages\">\n");
      out.write("\t\t\t\t\t\t\t\t<a id=\"messagesShortcut\" class=\"topMenuIcon messages\" href=\"https://www.stickk.com/messages\">\n");
      out.write("\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"topMenuItem\" title=\"Friends\">\n");
      out.write("\t\t\t\t\t\t\t\t<a id=\"friendsShortcut\" class=\"topMenuIcon friends\" href=\"https://www.stickk.com/friends/inbox\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t<div class=\"clear\"></div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("<div id=\"topProfileContainer\" class=\"flexRow\">\n");
      out.write("\t<div id=\"topProfileUsernameContainer\" class=\"flexColumn\" title=\"ntngocanh19\">\n");
      out.write("\t\t<div id=\"topProfileMenuUsername\">ntngocanh19</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t</div>\n");
      out.write("\t<div id=\"topProfileAvatarOuterContainer\">\n");
      out.write("\t\t<div id=\"topProfileAvatarInnerContainer\">\n");
      out.write("\t\t\t<a href=\"https://www.stickk.com/commitment\">\n");
      out.write("\t\t\t\t<img id=\"userProfileWidgetImage\" width=\"50\" height=\"50\" border=\"0\" src=\"//static.stickk.com/avatars/tiny_default.png\">\n");
      out.write("\t\t\t</a>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div id=\"accountSettingsContainer\" class=\"topMenuItem\">\n");
      out.write("\t\t\t\t\t\t<span class=\"settingsIcon\"></span>\n");
      out.write("\t\t\t\t\t\t<div class=\"topSubMenu\">\n");
      out.write("\t\t\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"topSubmenuArrow\"></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"first\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"https://www.stickk.com/aboutus\">About Us</a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"https://www.stickk.com/tour\">How it Works</a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"https://stickk.zendesk.com/hc\">Help Center</a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"https://stickk.zendesk.com/hc/requests/new\">Contact Us</a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"divider\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"/myCampaigns/index\">My Campaigns</a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"divider\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"https://www.stickk.com/profile\">Account Settings</a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"last\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"https://www.stickk.com/logout\">Logout</a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<script type=\"text/javascript\">\n");
      out.write("\t\t\t\t\t$('#accountSettingsContainer').click(function()\n");
      out.write("\t\t\t\t\t{\n");
      out.write("\t\t\t\t\t\t$('#accountSettingsContainer > div.topSubMenu').toggle();\n");
      out.write("\t\t\t\t\t});\n");
      out.write("\n");
      out.write("\t\t\t\t\t$(document).mouseup(function(e)\n");
      out.write("\t\t\t\t\t{\n");
      out.write("\t\t\t\t\t\tvar accountSettingMenu = $('#accountSettingsContainer');\n");
      out.write("\n");
      out.write("\t\t\t\t\t\tif(!accountSettingMenu.is(e.target) && accountSettingMenu.has(e.target).length === 0)\n");
      out.write("\t\t\t\t\t\t{\n");
      out.write("\t\t\t\t\t\t\t$('#accountSettingsContainer > div.topSubMenu').hide();\n");
      out.write("\t\t\t\t\t\t}\n");
      out.write("\t\t\t\t\t});\n");
      out.write("\t\t\t\t</script>\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
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
