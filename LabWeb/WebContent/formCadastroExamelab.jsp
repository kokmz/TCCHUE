<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div id="pagina">
<div id="conteudo">
<h1>Cadastre um exame na lista</h1>
<div id="formulario">
	<form id="exame" action="ExamelabServlet" method="post">
					
			<c:if test="${not empty exame}">
			<input type="hidden" name="id_tabelaExame" value="${exame.id_tabelaExame}"/>
			</c:if>
			<p><label id="exame_nome" for="exame_nome">Nome do Exame:</label><input id="exame_nomeL" type="text" name="exame_nome" value="${empty exame ? param.exame_nome : exame.exame_nome }"/></p>
			<!--<p><label for="procedimento">Procedimento</label> <br /> <input type="text" name="procedimento" value="${empty exame ? param.procedimento : exame.procedimento}" /></p>-->
			<p><label id="procedimento" for="procedimento">Procedimento:</label></p>
			<textarea id="procedimentoL" name="procedimento" rows="5" cols="50" id="procedimento" name="procedimento" />${empty exame ? param.procedimento : exame.procedimento}</textarea>
			-
			<input type="submit" value="Enviar" id="botaum3"/>
	</form>
</div>
</div>
</div>