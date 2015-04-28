<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<jsp:include page="mensagem.jsp"/>
<div id="pagina">
<div id="conteudo">
<h1>Consulta</h1>
<p>Se desejar acessar novamente a tabela de exames realizados clique no botão a baixo</p><br/>
<a href="BuscaResultadoServlet?paciente?"><img src="images/botaoexame.png"></img></a>


<div id="formulario">

	<form id="resultado" action="ResultadoServlet" method="post">
			<label id="nomeexame" for="exame_nome">${empty resultado ? param.examelab.exame_nome : resultado.examelab.exame_nome }</label><br/>
			<fieldset id="fieldsetconsulta">		
			<p><label for="descricao">${empty resultado ? param.descricao : resultado.descricao}</label></p>
			</fieldset>
	</form>
</div>
<input id="botaobaixar" type="submit" value="Baixar PDF"/>
<input id="botaoimprimir" type="submit" value="Imprimir"/>

</div>
</div>