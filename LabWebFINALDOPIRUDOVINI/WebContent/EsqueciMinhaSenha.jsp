<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="site.vo.Exame" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="inicio.jsp" %>
<%@include file="paginasjsp/menu.jsp" %>
<link rel="stylesheet" type="text/css" href="formestilonovo.css"/>
<div id="pagina">
<div id="conteudo">
		<h1>Esqueci Minha Senha</h1>
		<form id="email" action="EsqueciSenhaServlet" method="post" class="formcadastro">
			
			<div class="form-wrapperE">
			<p><label id="email" for="email">Digite seu email de cadastro abaixo:</label></p>
			<p><input id="email" type="text" name="email" value="${param.email}"/></p>
			</div>
			<div class="botaoEsqueci">
			<input type="submit" value="Enviar" />
			</div>
		</form>

</div>
</div>
<%@include file="paginas/rodape.html" %>
