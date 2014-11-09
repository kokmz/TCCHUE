<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<div id="pagina">
<div id="conteudo">
 <h1>Cadastro de Exame para acompanhamento</h1>
	<form id = "resultExame" action="cadResultadoExameServlet" method="post">	
	
		<label id="cboPaciente" for="paciente">Paciente: </label>
		<select name="paciente">
			
  			<c:forEach var="paciente" items="${pacientes}">  
  				<option value="${paciente.id}">${paciente.nome_paciente}</option> 
  			</c:forEach>    
		</select>
		
		
		<p><label id="cboExame" for="exame">Exame: </label>
		<select name="exame">
			
  			<c:forEach var="exame" items="${exames}">  
  				<option value="${exame.id_tabelaExame}">${exame.exame_nome}</option> 
  			</c:forEach>    
		</select>
		
		<p><label for="descricao" >Descrição / Resultado Exame:</label></p>
		<textarea id=descricao name="descricao" rows="10" cols="75" />${empty resultExame ? param.descricao : resultExame.descricao}</textarea>

			
		<p><label for="status">Status: </label>
		<select name="status">
				<option value="Pendente">Pendente</option>
				<option value="Pronto">Pronto</option>
		</select>
						<br/><br/>
		
			<input type="submit" value="Enviar" />
	</form>
</div>
</div>
