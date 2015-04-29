<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" type="text/css" href="formestilonovo.css"/>
<style>
@-webkit-keyframes bounce { 0% { top: 0; } 50% { top: -5px; } 100% { top: 0; }}

@keyframes bounce { 0% { top: 0; } 50% { top: -5px; } 100% { top: 0; }}
</style>
<div id="pagina">
<div id="conteudo">

<c:if test="${empty loginUsuario}">
<jsp:forward page="index.jsp"/>  
</c:if>

<h1>Cadastro de Gestor</h1>

<div id="formcadusuario" class="formcadastro">

 <c:if test="${loginUsuario.perfil.admin}">  
 <p>
		<a href="ListaGestorServlet"><img src="images/botaovisualisagestor.png"></img></a>
</p><br/>
	<form id="cadastro-paciente" action="GestorServlet" method="post">
					
			<c:if test="${not empty gestor}">
			<input type="hidden" name="idUsuario" value="${gestor.id_usuario}"/>
		  	</c:if>
		  	
			<div class="form-wrapper">
			<input class="formgestor" id="nome" type="text" name="nome" value="${empty gestor ? param.nome : gestor.nome}" placeholder="Nome"/><label class="formgestor" for="nome">Nome</label>
			</div>
			
			<div class="form-wrapper">
			<input class="formgestor" id="telefone" type="text"	name="telefone" value="${empty gestor ? param.telefone : gestor.telefone}" placeholder="Telefone"/><label class="formgestor" for="telefone">Telefone</label>
			</div>
			
			<div class="form-wrapper">
			<input class="formgestor" id="email" type="text" name="email" value="${empty gestor ? param.email : gestor.email}" placeholder="Email"/><label class="formgestor" for="email">Email</label>	
			</div>
			
			<div class="form-wrapper">	
			<input class="formgestor" id="password" type="password" name="password" value="${empty gestor ? param.password : gestor.password }" placeholder="Senha"/><label class="formgestor" for="password">Senha</label>
			</div>
			
			<div class="form-wrapper">
			<input class="formgestor" id="conf_password" type="password" name="conf_password" value="${empty gestor ? param.conf_password : gestor.conf_password }" placeholder="Confirme a senha"/><label class="formgestor" for="conf_password">Confirme a senha</label>
			</div>

			<div class="botaoCadUser">
			<input class="botaodeenviarUser" type="submit" value="Enviar" />
			</div>
	</form>	

</c:if>
</div>
</div>
</div>