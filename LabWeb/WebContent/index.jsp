<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<div id="especialidade">
<h1>Nossa Especialidade</h1>
<p>A especialidade do Clinica LaB é realizar exames com o máximo conforto para pacientes e médicos</p>
</div>
<div id="divisor">
<img src="images/divisor.png"></img>
</div>
<div id="atendimento">
<h1>Melhor Atendimento</h1>
<ul>
  <li>Funcionamento aos sábados, domingos e feriados</li>
  <li>Coleta em domicílio</li>
  <li>Área protegida pela Medicar em todas as unidades - proteção ao usuário por serviço móvel de atendimento de urgência - ambulâncias</li>
</ul>
<p>Horario de funcionamento: Seg a Sex das 09h as 17h e Sab e Dom das 08h ao 12h</p>
</div>
		<div id="verificarcod">
		<form id="resultado" action="BuscaResultadoServlet" method="post">
		<fieldset>
			<label id="negrito">Deseja verificar um exame ?</label>
			
			<label class="requerido" id="labelCodigo" for="cod_verif">Insira seu código abaixo: </label><br/>
			<input id="cod_verif" type="text" name="cod_verif" value="${empty resultado ? param.cod_verif : resultado.cod_verif}"/><br/>
			<input id="botaoindex" type="submit" value="Buscar"/>
		</fieldset>
		</form>
		</div>
		
<div id="imginicio">
<%@include file="paginas/imagemindex.html" %>
</div>
</div>
</div>		
	<%@include file="paginas/rodape.html" %>
</body>
</html>