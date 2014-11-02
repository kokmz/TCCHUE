<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div id='pagina'>
<div id='cssmenu'>
<ul>
   		<c:if test="${loginUsuario.perfil.gestor}">
			<li class='active'><a href='index.jsp'><span>Inicio</span></a></li>
   			<li><a href='laboratoriais.jsp'><span>Exames</span></a></li>
   			<li><a href='ListaPacienteServlet'><span>Pacientes</span></a></li>
			<li><a href='ListaDuvidaServlet'><span>Dúvidas</span></a></li>
			<li><a href='ListaGestorServlet'><span></span>Cadastro Exame</a></li>
			<li class='last'><a href="LogoutServlet"><span>Sair</span></a></li>
		</c:if>
			

		<c:if test="${loginUsuario.perfil.admin}">
			<li class='active'><a href='index.jsp'><span>Inicio</span></a></li>
   			<li><a href='laboratoriais.jsp'><span>Exames</span></a></li>
   			<li><a href='ListaGestoresServlet'><span>Gestores</span></a></li>
			<li><a href='ListaPacienteServlet'><span>Pacientes</span></a></li>
			<li><a href='duvida.jsp'><span>Dúvidas</span></a></li>
			<li><a href='ListaGestorServlet'><span></span>Cadastro Exame</a></li>
			<li class='last'><a href="LogoutServlet"><span>Sair</span></a></li>	
		</c:if>
		
		<c:if test="${empty loginUsuario.perfil}">
		
			<li class='active'><a href='index.jsp'><span>Inicio</span></a></li>
   			<li><a href='laboratoriais.jsp'><span>Exames</span></a></li>
   			<li><a href='quemsou.jsp'><span>Quem Somos</span></a></li>
   			<li class='last'><a href='contato.jsp'><span>Contato</span></a></li>
		</c:if>

	</ul>
				
 </div>
</div>