<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="site.vo.Exame"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<script
	src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
<script type='text/javascript' src="menu_jquery.js"></script>

<script src="script/jquery-2.1.0.min.js"></script>
<script src="script/jquery.dataTables.js"></script>
<link href="dataTables.css" rel="stylesheet" type="text/css" />
<title>Clinica Lab - Laboratorio Medicinal</title>

<script>
	$(document).ready(function() {
		$('#tabelaresultado').DataTable()({
			"pagingType" : "full_numbers",
			"lengthMenu" : "Display 10 records"

		});
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
			<c:choose>
				<c:when test="${empty fluxo}">
					<p>Você não possui nenhum exame no periodo solicitado!</p>
				</c:when>
				<c:otherwise>
					<table id="tabelaresultado" class="display">
						<thead>
							<tr>
								<th id="paciente_fluxo">Paciente</th>
								<th id="exame_fluxo">Exame</th>
								<th>Data Exame</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="fluxo" items="${fluxo}">
								<tr>
									<td>${fluxo.paciente.nome_paciente}</td>
									<td>${fluxo.examelab.exame_nome}</td>
									<td>${fluxo.exame.data_exame}</td>
									<td>${fluxo.status.status_nome}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<%@include file="paginas/rodape.html"%>
</body>
</html>