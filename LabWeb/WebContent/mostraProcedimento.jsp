<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<jsp:include page="mensagem.jsp"/>
<div id="pagina">
<div id="conteudo">
<div id="formulario">

	<form id="exame" action="ExameInternaServlet" method="post">
					
			<p><label for="exame_nome">Exame</label><br/></p>
			<p><label for="exame_nome">${empty exame ? param.exame_nome : exame.exame_nome }</label></p>
			<p><label for="procedimento">Procedimento</label> <br /> 
			<p><label for="procedimento">${empty exame ? param.procedimento : exame.procedimento}</label></p>
	</form>


</div>
</div>
</div>