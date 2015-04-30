<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" type="text/css" href="formestilonovo.css"/>
<style>
@-webkit-keyframes bounce { 0% { top: 0; } 50% { top: -5px; } 100% { top: 0; }}

@keyframes bounce { 0% { top: 0; } 50% { top: -5px; } 100% { top: 0; }}
</style>
<c:if test="${empty loginUsuario}">
<jsp:forward page="index.jsp"/>  
</c:if>

<div id="pagina">
<div id="conteudo">
<h1>Cadastre um exame na lista</h1>

<div id="formulario" class="formcadastro">
	<form id="formcadastroexamelab" action="ExamelabServlet" method="post">
					
			<c:if test="${not empty exame}">
			<input type="hidden" name="id_tabelaExame" value="${exame.id_tabelaExame}"/>
			</c:if>
			
			<div class="form-wrapper">
			<input class="formgestor" id="exame_nomeL" type="text" name="exame_nome" value="${empty exame ? param.exame_nome : exame.exame_nome }" placeholder="Nome do exame"/><label class="formgestor" for="exame_nome">Nome do Exame</label>
			</div>
			
			<div class="form-wrapper">
			<textarea  class="formgestor" rows="5" cols="50" name="procedimento" placeholder="Descrição do procedimento..." ${empty exame ? param.procedimento : exame.procedimento}/></textarea><label class="formgestor" for="procedimento">Procedimento</label>
			</div>			
		
			<div class="form-wrapper">
			<input class="botaodeenviarcadus" type="submit" value="Enviar"/>
			</div>
	</form>
</div>
</div>
</div>