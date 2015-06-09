<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script>
$(document).ready(function() {
    $('.voltar').click(function() {
        history.back();
    });
});
</script>

<jsp:include page="mensagem.jsp"/>
<div id="pagina">
<div id="conteudo">
<h1>Consulta</h1>
<p>Se desejar acessar novamente a tabela de exames realizados clique no botão a baixo</p><br/>

<a class="voltar" style="cursor: pointer;"><img src="images/botaoexame.png"></img></a>


<div id="formulario">

	<form id="resultado" action="ResultadoServlet" method="post">
			<input type="hidden" value="${empty resultado ? param.paciente.cod_verif : resultado.paciente.cod_verif }"/>
			<label id="nomeexame" for="exame_nome">${empty resultado ? param.examelab.exame_nome : resultado.examelab.exame_nome }</label><br/>
			<fieldset id="fieldsetconsulta">		
			<p><label for="descricao">${empty resultado ? param.descricao : resultado.descricao}</label></p>
			</fieldset>
			<p><label style="font-weight: bold" id="nome_medico" for="nome_medico">Solicitado pelo médico: </label><label for="nome_medico">${empty resultado ? param.nome_medico : resultado.nome_medico}</label>
			<br><label style="font-weight: bold" id="crm_medico" for="crm_medico">CRM: </label><label for="crm_medico">${empty resultado ? param.crm_medico : resultado.crm_medico}</label>
	</form>

<a id="botaobaixar" href="BuscaResultadoExameServlet?exame=${resultado.id}" target="_blank"><img src="images/botaogerapdf.png"></img></a>
</div>
</div>
</div>