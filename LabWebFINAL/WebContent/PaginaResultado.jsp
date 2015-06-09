<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" type="text/css" href="resultadopaciente.css"/>

<jsp:include page="mensagem.jsp"/>
<div id="pagina">
<div id="conteudo">
<h1>Consulta</h1>
<p>Se desejar acessar novamente a tabela de exames realizados clique no botão a baixo</p><br/>
<a href="BuscaResultadoServlet"><img src="images/botaoexame.png"></img></a>
<a  href="BuscaResultadoExameServlet?exame=${resultado.id}" target="_blank"><img src="images/botaogerapdf.png"></img></a>

<div class="box">
 		<div class="procedimentoPaciente">
    		<div class="back-side">
    		</div>
    		<div class="front-side">
     			 <span>Resultado do Exame</span>
    		</div>
  		</div>
  		<h1 class="boxP">${empty resultado ? param.examelab.exame_nome : resultado.examelab.exame_nome }<input type="hidden" value="${empty resultado ? param.paciente.cod_verif : resultado.paciente.cod_verif }"/></h1>
  		<p class="scroll">${empty resultado ? param.descricao : resultado.descricao}</p>
  		<p><label class="negrito" id="nome_medico" for="nome_medico">Solicitado pelo médico: </label><label for="nome_medico">${empty resultado ? param.nome_medico : resultado.nome_medico}</label></p>
		<p><label class="negrito" id="crm_medico" for="crm_medico">CRM: </label><label for="crm_medico">${empty resultado ? param.crm_medico : resultado.crm_medico}</label></p>
	</div>
</div>
</div>