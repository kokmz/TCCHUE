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
		$('#tabelaresultadoexame').DataTable()({
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
	      height:240,
	      modal: true,
	      buttons: {
	        "Excluir": function() {
	         window.location.href = "DeletarExameServlet?exame="+x;	         
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
			<h1>Cadastro de Resultado de Exames</h1>
			<p>
				<a href="ExameServlet"><img src="images/botaonovoresultado.png"></img></a>
			</p>
			
			<c:choose>
				<c:when test="${empty exames}">
					<p>Você não possui nenhum resultado de exame cadastrado!</p>
				</c:when>
				<c:otherwise>
					<table id="tabelaresultadoexame" class="display">
						<thead>
							<tr>
								<th id="paciente_resultado">Paciente</th>
								<th id="exame_resultado">Exame</th>
								<th id="data_exame">Data Exame</th>
								<th>Status</th>
								<th id="acoes">Ações</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="exame" items="${exames}">
								<tr>
									<td>${exame.paciente.nome_paciente}</td>
									<td>${exame.examelab.exame_nome}</td>
									<td>${exame.data_exame}</td>
									<td>${exame.status.status_nome}</td>
									<td><a
										href="ObterExameServlet?exame=${exame.id}"><img
											src="images/botaoeditar.png" id="imagemeditarresultado"></img></a>
										<button class="but" id="deletar" onclick="deletagem(${exame.id})"></button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<div style="display:none;" id="dialog-confirm" title="Excluir Resultado de Exame">
  			<p><span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;"></span>Tem certeza que deseja excluir o Resultado do Exame selecionado? Lembrando que caso exclua este resultado, todos os seus dados serão perdidos permanentemente</p>
	</div>
	<%@include file="paginas/rodape.html"%>
</body>
</html>