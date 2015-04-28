<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<div id="pagina">
<div id="conteudo">

<c:if test="${empty loginUsuario}">
<jsp:forward page="index.jsp"/>  
</c:if>

<h1>Cadastro de Gestor</h1>

<div id="formulario">

 <c:if test="${loginUsuario.perfil.admin}">  
 <p>
		<a href="ListaGestorServlet"><img src="images/botaovisualisagestor.png"></img></a>
</p><br/>
	<form id="gestor" action="GestorServlet" method="post">
					
			<c:if test="${not empty gestor}">
			<input type="hidden" name="idUsuario" value="${gestor.id_usuario}"/>
		  	</c:if>
			<p><label id="nome_g" for="nome">Nome:</label><input id="nome" type="text" name="nome" value="${empty gestor ? param.nome : gestor.nome}"/></p>
			<p><label id="telefone_g" for="telefone">Telefone:</label><input id="telefone" type="text"	name="telefone" value="${empty gestor ? param.telefone : gestor.telefone}"/></p>
			<p><label id="email_g" for="email">Email:</label><input id="email" type="text" name="email" value="${empty gestor ? param.email : gestor.email}"/></p>			
			<p><label id="senha_g" for="password">Senha:</label><input id="password" type="password" name="password" value="${empty gestor ? param.password : gestor.password }"/></p>
			<p><label id="csenha_g" for="conf_password">Confirme a senha:</label><input id="conf_password" type="password" name="conf_password" value="${empty gestor ? param.conf_password : gestor.conf_password }"/></p>

			<input id="botaum_g" type="submit" value="Enviar" />
	</form>	

</c:if>
</div>
</div>
</div>