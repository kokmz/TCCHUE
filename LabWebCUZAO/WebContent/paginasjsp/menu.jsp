<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div id='pagina'>
<div id='cssmenu'>
<ul>
   		<c:if test="${loginUsuario.perfil.gestor}">
			<li class='active'><a href='index.jsp'><span>Inicio</span></a></li>
   			<li><a href='exames_laboratoriais.jsp'><span>Exames</span></a></li>
   			<li><a href='#'><span>Cadastro</span></a>
   				<ul>
   					<li><a href='ListaPacienteServlet'><span>Paciente</span></a></li>
   					<li><a href='ExameServlet'><span>Resultado do Exame</span></a></li>
   				</ul>
   			</li>
			<li><a href='ListaDuvidaServlet'><span>Dúvidas</span></a></li>
			<li class='last'><a href='#'><span>Relatório</span></a>
				<ul>
					<li><a href='fluxoExames.jsp'><span>Fluxo de Exames</span></a></li>
				</ul>
			</li>
		</c:if>
			

		<c:if test="${loginUsuario.perfil.admin}">
			<li class='active'><a href='index.jsp'><span>Inicio</span></a></li>
   			<li><a href='exames_laboratoriais.jsp'><span>Exames</span></a></li>
   			<li><a href='#'><span>Cadastro</span></a>
   				<ul>
   					<li><a href='ListaGestorServlet'><span>Gestor</span></a></li>
   					<li><a href='ListaPacienteServlet'><span>Paciente</span></a></li>
   					<li><a href='ExameServlet'><span>Resultado do Exame</span></a></li>
   				</ul>
   			</li>
			<li><a href='ListaDuvidaServlet'><span>Dúvidas</span></a></li>
			<li class='last'><a href='#'><span>Relatório</span></a>
				<ul>
					<li><a href='fluxoExames.jsp'><span>Fluxo de Exames</span></a></li>
				</ul>
			</li>
		</c:if>
		
		<c:if test="${empty loginUsuario.perfil}">
			
			<li class='active'><a href='index.jsp'><span>Inicio</span></a></li>
   			<li><a href='exames_laboratoriais.jsp'><span>Exames</span></a></li>
   			<li><a href='quemsou.jsp'><span>Quem Somos</span></a></li>
   			<li class='last'><a href='contato.jsp'><span>Contato</span></a></li>
		</c:if>

	</ul>
				
 </div>
</div>