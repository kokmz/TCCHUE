<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="site.vo.Paciente" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
<script type='text/javascript' src="menu_jquery.js"></script>
<link rel="stylesheet" type="text/css" href="estilos.css"/>
<title>Clinica Lab - Laboratorio Medicinal</title>
</head>

<body>	
<%@include file="inicio.jsp" %>
<%@include file="paginasjsp/menu.jsp" %>

<div id="pagina">
<div id="conteudo">
<h1>Alterar Senha</h1>

<div id="formulario">

	<form id="email" action="RedefinirSenhaFinalServlet" method="post">
					
			<input id="email" type="hidden" name="email" value="${email_usuario}"/>
			<p><label id="senha_g" for="password">Senha:</label><input id="password" type="password" name="password" value="${param.password}"/></p>
			<p><label id="csenha_g" for="conf_password">Confirme a senha:</label><input id="conf_password" type="password" name="conf_password" value="${param.conf_password }"/></p>

			<input id="botaum_g" type="submit" value="Redefinir Senha" />
	</form>	


 

</div>
</div>
</div>
<%@include file="paginas/rodape.html" %>
</body>
</html>