/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.42
 * Generated at: 2014-05-25 07:39:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.paginasjsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class gestor1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/paginasjsp/formCadastroGestor.jsp", Long.valueOf(1400913749930L));
    _jspx_dependants.put("/paginasjsp/../paginas/rodape.html", Long.valueOf(1400920268589L));
    _jspx_dependants.put("/paginasjsp/menu.jsp", Long.valueOf(1401002688362L));
    _jspx_dependants.put("/paginasjsp/../paginas/inicio.html", Long.valueOf(1401003505564L));
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<?xml version=\"1.0\" encoding=\"ISO-8859-1\" ?>\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\" />\r\n");
      out.write("<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>\r\n");
      out.write("<script type='text/javascript' src=\"../menu_jquery.js\"></script>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"../estilos.css\"/>\r\n");
      out.write("<title>Hue - Laboratorio Medicinal</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t");
      out.write("\t<div id=\"cabecalho\">\r\n");
      out.write("\t<img src=\"images/banner.png\">\r\n");
      out.write("\t</div>   \r\n");
      out.write("\t\r\n");
      out.write('\r');
      out.write('\n');
      out.write('	');
      out.write("<div id='cssmenu'>\r\n");
      out.write("\t<ul>\r\n");
      out.write("   \t\t<li class='active'><a href='index.jsp'><span>Inicio</span></a></li>\r\n");
      out.write("   \t\t<li class='has-sub'><a href='paginasjsp/exames.jsp'><span>Exames</span></a>\r\n");
      out.write("      \t\t<ul>\r\n");
      out.write("         \t\t<li><a href='paginasjsp/biocheck.jsp'><span>Biocheck up</span></a></li>\r\n");
      out.write("         \t\t<li class='last'><a href='paginasjsp/laboratoriais.jsp'><span>Laboratoriais</span></a></li>\r\n");
      out.write("      \t\t</ul>\r\n");
      out.write("   \t\t</li>\r\n");
      out.write("   \t\t<li><a href='coleta.jsp'><span>Coleta domiciliar</span></a></li>\r\n");
      out.write("   \t\t<li class='last'><a href='paginasjsp/contato.jsp'><span>Contato</span></a></li>\r\n");
      out.write("\t\r\n");
      out.write("\t\t<c:if test=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${loginUsuario.gestor}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\">\r\n");
      out.write("\t\t\t<li class=''><a href='paginasjsp/gestor1.jsp'><span>Cadastros</span></a></li>\r\n");
      out.write("\t\t\t<li class=''><a href='paginasjsp/gestor2.jsp'><span>Cadastro de Exames</span></a></li>\t\t\t\r\n");
      out.write("\t\t</c:if>\r\n");
      out.write("\t</ul>\r\n");
      out.write(" </div>");
      out.write('\r');
      out.write('\n');
      out.write('	');
      out.write("<div id=\"formulario\">\r\n");
      out.write("\t<form action=\"cadastroServlet\" method=\"post\">\r\n");
      out.write("\t\t<fieldset>\r\n");
      out.write("\t\t\t<p>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${msgerro}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</p>\r\n");
      out.write("\t\t\t<p>\r\n");
      out.write("\t\t\t\t<label for=\"nome\">Nome</label> <br /> <input type=\"text\"\r\n");
      out.write("\t\t\t\t\tname=\"nome\" value='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.nome}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("' />\r\n");
      out.write("\t\t\t</p>\r\n");
      out.write("\t\t\t<p>\r\n");
      out.write("\t\t\t\t<label for=\"rg\">RG</label> <br /> <input type=\"text\"\r\n");
      out.write("\t\t\t\t\tname=\"rg\" value='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.rg}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("' />\r\n");
      out.write("\t\t\t</p>\r\n");
      out.write("\t\t\t<p>\r\n");
      out.write("\t\t\t\t<label for=\"email\">E-mail</label> <br /> <input type=\"text\"\r\n");
      out.write("\t\t\t\t\tname=\"email\" value='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.email}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("' />\r\n");
      out.write("\t\t\t</p>\r\n");
      out.write("\t\t\t<p>\r\n");
      out.write("\t\t\t\t<label for=\"password\">Senha</label> <br /> <input type=\"password\"\r\n");
      out.write("\t\t\t\t\tname=\"password\" />\r\n");
      out.write("\t\t\t</p>\r\n");
      out.write("\t\t\t<p>\r\n");
      out.write("\t\t\t\t<label for=\"passwordValida\">Repita a Senha</label> <br /> <input type=\"password\"\r\n");
      out.write("\t\t\t\t\tname=\"passwordValida\" />\r\n");
      out.write("\t\t\t</p>\r\n");
      out.write("\t\t\t<input type=\"submit\" value=\"Enviar\" />\r\n");
      out.write("\t\t</fieldset>\r\n");
      out.write("\t</form>\r\n");
      out.write("</div>");
      out.write('\r');
      out.write('\n');
      out.write('	');
      out.write("<div id=\"rodape\">\r\n");
      out.write("        <address>Hue Lab &copy;2014 <a href=\"mailto: contato@HueLab.com.br\">Contato</a></address>\r\n");
      out.write("\t</div>");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}