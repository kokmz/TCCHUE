<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<jsp:include page="mensagem.jsp"/>
<div id="pagina">
<div id="conteudo">
<h1>Procedimento para realizar o exame selecionado</h1>

    <fieldset id="fieldsetexames">
	<form id="exametabela" action="ExameInternaServlet" method="post">
					
			<h3><label for="exame_nome">Exame</label></h3>
			<p><label for="exame_nome">${empty exame ? param.exame_nome : exame.exame_nome }</label></p>
			<h3><label for="procedimento">Procedimento</label></h3> 
			<p><label for="procedimento">${empty exame ? param.procedimento : exame.procedimento}</label></p>
	</form>
	</fieldset>
	<a href="exames_laboratoriais.jsp"><img id="voltarbotao" src="images/botaovoltar.png"></a>

</div>
</div>