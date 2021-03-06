<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="site.vo.Paciente"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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



<link rel="stylesheet" type="text/css" href="estilos.css" />
<title>Clinica Lab - Laboratorio Medicinal</title>

<script>
	$(document).ready(function() {
		$('#tabeladuvida').DataTable()({
			"pagingType" : "full_numbers",
			"lengthMenu" : "Display 10 records"

		});
	});
</script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
 <script>
  function deletagem(x){
	  $( "#dialog-confirm" ).dialog({
	      resizable: false,
	      height:170,
	      modal: true,
	      buttons: {
	        "Excluir": function() {
	         window.location.href = "DeletarDuvidaServlet?duvida="+x;	         
	        },
	        Cancel: function() {
	          $( this ).dialog( "close" );
	        }
	      }
	   });
    };

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
			<h1>Responder D�vidas</h1>
			<c:choose>
				<c:when test="${empty duvidas}">
					<p>Nenhuma Duvida registrada!</p>
				</c:when>
				<c:otherwise>
					<table id="tabeladuvida" class="display">
						<thead>
							<tr>
								<th>Nome</th>
								<th>Email</th>
								<th>Status</th>
								<th>Op��es</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="duvida" items="${duvidas}">

								<tr>

									<td>${duvida.nome}</td>
									<td>${duvida.email}</td>

									<c:choose>
											<c:when test="${duvida.status == 'Pendente'}">
												<td class="negrito" style="color: red">${duvida.status}</td>
											</c:when>
											<c:otherwise>
												<td >${duvida.status}</td>
											</c:otherwise>
									</c:choose>
									
									<td><c:choose>
											<c:when test="${duvida.status == 'Respondido'}">
												<button class="butduvida" id="deletar" onclick="deletagem(${duvida.id_duvida})"></button>
											</c:when>
											<c:otherwise>
												<a href="ResponderDuvidaServlet?duvida=${duvida.id_duvida}"><img src="images/responderduvida.png"></img></a>
											</c:otherwise>
										</c:choose></td>
								</tr>

							</c:forEach>
						</tbody>

					</table>

				</c:otherwise>
			</c:choose>

		</div>
	</div>
	<div style="display:none;" id="dialog-confirm" title="Excluir D�vida">
  			<p><span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;"></span>Tem certeza que deseja excluir essa D�vida?</p>
	</div>
	<%@include file="paginas/rodape.html"%>
</body>
</html>