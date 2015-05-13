<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="site.vo.Paciente"%>
<%@ page import="java.util.List"%>
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

  <link type="text/css" rel="stylesheet" href="estilos.css"/>
<title>Clinica Lab - Laboratorio Medicinal</title>

<script>
	$(document).ready(function() {
		$('#tabelapaciente').DataTable()({
			"pagingType" : "full_numbers",
			"lengthMenu" : "Display 10 records"

		});
	});
</script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
 <script>
  $(function() {
	  $("#deletar").button().on( "click", function() {
	  $( "#dialog-confirm" ).dialog({
	      resizable: false,
	      height:240,
	      modal: true,
	      buttons: {
	        "Excluir": function() {
	         window.location.href = "DeletarPacienteServlet?paciente=" + $("input#id");
	        },
	        Cancel: function() {
	          $( this ).dialog( "close" );
	        }
	      }
	    });

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
			<h1>Cadastro de Pacientes</h1>
			<p>
				<a href="TelaPacienteServlet"><img
					src="images/botaopaciente.png"></img></a>
			</p>

			<c:choose>
				<c:when test="${empty pacientes}">
					<p>Nenhum Paciente cadastrado!</p>
				</c:when>
				<c:otherwise>
					<table id="tabelapaciente" class="display">
						<thead>
							<tr>
								<th id="coluna_paciente">Paciente</th>
								<th id="codigo_verif">Código de Verificação</th>
								<th id="rg_paciente">RG</th>
								<th>Email</th>
								<th id="teste"></th>
								<th>Ações</th>
								<th></th>

							</tr>
						</thead>
						<tbody>
							<c:forEach var="paciente" items="${pacientes}">
								<tr>
									<td>${paciente.nome_paciente}</td>
									<td>${paciente.cod_verif}</td>
									<td>${paciente.rg_paciente}</td>
									<td>${paciente.email_paciente}</td>
									<td><a href="ObterPacienteServlet?paciente=${paciente.id}"><img
											src="images/botaoeditar.png" id="imagemeditar" /></a></td>
											<td style="display: none">${paciente.id}</td>
										
									<td>
									<button id="deletar" value="${paciente.id }">Deletar</button>
									</td>
									<td><a
										href="ObterDetalhePacienteServlet?paciente=${paciente.id}"><img
											src="images/botaodetalhar.png" id="imagemdetalhar"></img></a>
									</td>
								</tr>
				
							</c:forEach>
						
						</tbody>
					</table>
						
				</c:otherwise>
			</c:choose>

		</div>
	</div>
		<div style="display:none;" id="dialog-confirm" title="Excluir Paciente">
  				<p><span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;"></span>Tem certeza que deseja excluir o paciente ${paciente.nome_paciente} ? Lembrando que caso exclua esse paciente todos os dados relacionado a ele também serão perdidos.</p>
				</div>
	
	<%@include file="paginas/rodape.html"%>
	
</body>

</html>