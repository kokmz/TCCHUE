<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<div id="pagina">
<div id="conteudo">
 <h1>Cadastro de Resultado de exames</h1>
	<form id = "resultExame" action="cadResultadoExameServlet" method="post">
	
		<c:if test="${not empty exame}" >
			<input type="hidden" name="id_exame" value="${exame.id_exame}"/>
			</c:if>
	
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

			
		<p><label for="cboStatus" for="status">Status: </label>
		<select name="status">
			<c:forEach var="status_exame" items="${status}">
				<option value="${status_exame.id_status}">${status_exame.status_nome}</option>
			</c:forEach>
		</select>
		
		<p><label id="data" for="data">Data do Exame:</label>
		<input id="data" type="date" name="data" value="${empty resultExame ? param.data : resultExame.data }"/></p>
			
						<br/><br/>
		
			<input type="submit" value="Enviar" />
	</form>
</div>
</div>
