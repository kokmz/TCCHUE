<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="pagina">
<div id="conteudo">

<c:if test="${empty loginUsuario}">
<jsp:forward page="index.jsp"/>  
</c:if>

<h1>Responda a dúvida</h1>

	<form id="duvida" action="ResponderServlet" method="post">
			<input type="hidden" name="idDuvida" value="${duvida.id_duvida}"/>
			
			
			<p><label style="font-weight:bolder" for="email">Email:</label> <input readonly id="email" type="text" name="email" value="${empty duvida ? param.email : duvida.email}" /></p>
			<p><label style="font-weight:bolder" for="mensagem">Duvida: </label> <label  style="width:450px;  display:block" for="mensagem">${duvida.mensagem }</label></p>
			
		
			<label style="font-weight:bolder" for="resposta">Resposta: </label>
			<textarea  for="resposta" name="resposta" rows="6" cols="50" /></textarea>
			<p><input type="submit" value="Responder" /></p>
</form>
</div>
</div>
