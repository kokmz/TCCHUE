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
<script src="script/jquery-2.1.0.min.js"></script>
<script src="script/jquery.dataTables.js"></script>
<link href="dataTables.css" rel="stylesheet" type="text/css" />
<title>Clinica Lab - Laboratorio Medicinal</title>



<script>
	$(document).ready(function() {
		$('#resultadopaciente').DataTable()({
			"pagingType" : "full_numbers",
			"lengthMenu" : "Display 10 records"

		});
	});
</script>


</head>
<body>

	<%@include file="inicio.jsp"%>
	<%@include file="paginasjsp/menu.jsp"%>
	<jsp:include page="mensagem.jsp" />

	<div id="pagina">
		<div id="conteudo">
			<h1>Resultado exames </h1>

			<c:choose>
				<c:when test="${empty resultado}">
					<p>Você não possui nenhum resultado cadastrado!</p>
				</c:when>
				<c:otherwise>

					<table id="resultadopaciente" class="display">
						<thead id="head_resultado">
							<tr>
								<th id="exame_resultado">Exame</th>
								<th>Data do Exame</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody id="body_resultado">
							<c:forEach var="resultado" items="${resultado}">
								<p > ${resultado.paciente.nome_paciente}</p>
								<tr>
									<td>
									<c:if test="${resultado.status.id_status == 2}">
									<a ${resultado.id}>${resultado.examelab.exame_nome}</a>
									</c:if>
									<c:if test="${resultado.status.id_status == 1}">
									<a href="ResultadoServlet?resultado=${resultado.id}">${resultado.examelab.exame_nome}</a>
									</c:if>
									</td>
									<td>${resultado.data_exame}</td>
									<td>${resultado.status.status_nome}</td>
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