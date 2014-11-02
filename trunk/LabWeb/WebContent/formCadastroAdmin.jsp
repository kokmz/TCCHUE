<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<jsp:include page="mensagem.jsp"/>
<div id="pagina">
<div id="conteudo">
<div id="formulario">

 <c:if test="${loginUsuario.perfil.administrador}">  
 <p>
		<a href="ListaGestorServlet">Visualizar Gestores</a>
</p>
	<form id="gestor" action="GestorServlet" method="post">
					
			<c:if test="${not empty gestor}">
			<input type="hidden" name="idUsuario" value="${gestor.id_usuario}"/>
		  	</c:if>
			<p><label for="nome">Nome</label><br/> <input type="text" name="nome" value="${empty gestor ? param.nome : gestor.nome }"/></p>
			<p><label for="telefone">Telefone</label> <br /> <input type="text"	name="telefone" value="${empty gestor ? param.telefone : gestor.telefone}"/></p>
			<p><label for="email">Email</label> <br /> <input type="text" name="email" value="${empty gestor ? param.email : gestor.email}"/></p>			
			<p><label for="password">Senha</label><br/> <input type="password" name="password" value="${empty gestor ? param.password : gestor.password }"/></p>
			<p><label for="conf_password">Confirme a senha</label><br/> <input type="password" name="conf_password" value="${empty gestor ? param.conf_password : paciente.conf_password }"/></p>
			
		
			<input type="submit" value="Enviar" />
	</form>

</c:if>
</div>
</div>
</div>