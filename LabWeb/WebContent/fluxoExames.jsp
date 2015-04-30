<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="site.vo.Exame"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<script
	src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
<script type='text/javascript' src="menu_jquery.js"></script>
<link rel="stylesheet" type="text/css" href="estilos.css" />
<title>Clinica Lab - Laboratorio Medicinal</title>


<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />

<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />

<script> 
  $(function() {
	    $( "input#data_inicio_input").datepicker({
	      changeMonth: true,
	      changeYear: true,
	      showOn: "button",
	      buttonImage: "images/calendar2.png",
	      buttonImageOnly: true,
	      buttonText: "Selecione a data",
	      dateFormat: "dd/mm/yy"
	    });
	    $( "input#data_fim_input").datepicker({
		      changeMonth: true,
		      changeYear: true,
		      showOn: "button",
		      buttonImage: "images/calendar2.png",
		      buttonImageOnly: true,
		      buttonText: "Selecione a data",
		      dateFormat: "dd/mm/yy"
		    });
	  });
  </script>

<script src="script/jquery.maskedinput.js"></script>
<script>
 $(function() {
        $("input#data_inicio_input").mask("99/99/9999");
        $("input#data_fim_input	").mask("99/99/9999");
 });

 </script>



</head>
<body>

	<%@include file="inicio.jsp"%>
	<%@include file="paginasjsp/menu.jsp"%>

	<c:if test="${empty loginUsuario}">
		<jsp:forward page="index.jsp" />
	</c:if>

	<div id="pagina">
		<div id="conteudo">
			<h1>Relatório de Fluxo de Exames</h1>
			<form id="fluxo" action="FluxoDeExamesServlet" method="post">

				<p>
					<label id="data_inicio" for="data_inicio">Data Inicial:</label> <input
						id="data_inicio_input" type="text" name="data_inicio"
						value="${empty fluxo ? param.data_inicio : fluxo.data_inicio }" />
				</p>

				<p>
					<label id="data_fim" for="data_fim">Data Final:</label> <input
						id="data_fim_input" type="text" name="data_fim"
						value="${empty fluxo ? param.data_fim : fluxo.data_fim }" />
				</p>

				<input type="submit" value="Gerar Relatório" />
			</form>

		</div>
	</div>
	<%@include file="paginas/rodape.html"%>
</body>
</html>