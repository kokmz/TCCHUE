<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="site.vo.Exame" %>
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
		<h1>Esqueci Minha Senha</h1>
		<form id="email" action="EsqueciSenhaServlet" method="post">
			
			<p><label id="email" for="email">Digite seu email de cadastro abaixo:</label></p>
			<p><input id="email" type="text" name="email" value="${param.email}"/></p>
			
			<input type="submit" value="Enviar" />
		</form>

</div>
</div>
<%@include file="paginas/rodape.html" %>
</body>
</html>