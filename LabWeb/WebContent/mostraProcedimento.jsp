<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" type="text/css" href="procedimento.css"/>

<jsp:include page="mensagem.jsp"/>
<div id="pagina">
<div id="conteudo">
<h1>Procedimento para realizar o exame selecionado</h1>

<div class="box">
 		<div class="procedimentoPaciente">
    		<div class="back-side">
    		</div>
    		<div class="front-side">
     			 <span>Procedimento</span>
    		</div>
  		</div>
  		<h1 class="boxP">${empty exame ? param.exame_nome : exame.exame_nome}</h1>
  		<p>${empty exame ? param.procedimento : exame.procedimento}</p>
	</div>
	
	<a href="exames_laboratoriais.jsp"><img class="voltarbotaoP" src="images/botaovoltar.png"></a>
	

	
	

</div>
</div>