<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="site.vo.Paciente" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="inicio.jsp" %>
<%@include file="paginasjsp/menu.jsp" %>
<jsp:include page="mensagem.jsp"/>
<link rel="stylesheet" type="text/css" href="formestilonovo.css"/>
<style>
@-webkit-keyframes bounce { 0% { top: 0; } 50% { top: -5px; } 100% { top: 0; }}

@keyframes bounce { 0% { top: 0; } 50% { top: -5px; } 100% { top: 0; }}
</style>
<div id="pagina">
<div id="conteudo">


<h1>Alterar Senha</h1>

<div id="formularioaltera" class="formcadastro">

	<form id="alterasenha" action="RedefinirSenhaInternaServlet" method="post">
					
			<input type="hidden" name="idUsuario" value="${usuario.id_usuario}"/>
			<div class="form-wrapper">
		    <input autofocus class="formgestor" id="passwordaltera" type="password" name="password" value="${param.password}" placeholder="Senha"/><label class="formgestor" for="passwordaltera">Senha</label>
		    </div>
		    <div class="form-wrapper">
			<input  class="formgestor" id="conf_password" type="password" name="conf_password" value="${param.conf_password }" placeholder="Confirme a senha"/><label class="formgestor" for="conf_password">Confirmar senha</label>
 			</div>
 			<div class="botaoAlterar">
		<input class="" id="botaodealterar" type="submit" value="Redefinir Senha" />
			</div>
	</form>	


 

</div>
</div>
</div>
<%@include file="paginas/rodape.html"%>
