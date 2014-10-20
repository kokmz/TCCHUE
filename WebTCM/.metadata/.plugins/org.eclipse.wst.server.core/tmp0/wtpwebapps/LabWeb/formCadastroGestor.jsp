<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<jsp:include page="mensagem.jsp"/>
<div id="pagina">
<div id="conteudo">
<div id="formulario">

 <c:if test="${loginUsuario.perfil.gestor}">  
 <p>
		<a href="ListaPacienteServlet">Visualizar Pacientes</a>
</p>
	<form id="paciente" action="PacienteServlet" method="post">
					
			<c:if test="${not empty paciente}">
			<input type="hidden" name="idPaciente" value="${paciente.id}"/>
		  	<input type="hidden" name="idExame" value="${paciente.exame.id}"/>
			</c:if>
			<p><label for="cod_verif">C�digo de Verifica��o</label><br/> <input type="text" name="cod_verif" value="${empty paciente ? param.cod_verif : paciente.cod_verif }"/></p>
			<p>
				<label for="nome">Nome</label> <br /> <input type="text"
					name="nome_paciente" value="${empty paciente ? param.nome_paciente : paciente.nome_paciente}" />
			</p>
			<p>
				<label for="rg">RG</label> <br /> <input type="text"
					name="rg_paciente" value="${empty paciente ? param.rg_paciente : paciente.rg_paciente}"/>
			</p>
			
			<p><label for="cpf">CPF</label><br/> <input type="text" name="cpf_paciente" value="${empty paciente ? param.cpf_paciente : paciente.cpf_paciente }"/></p>
			<p><label for="data">Data de Nascimento</label><br/> <input type="text" name="datanasc_paciente" value="${empty paciente ? param.datanasc_paciente : paciente.datanasc_paciente }"/></p>
			<p><label for="rua">Rua</label><br/> <input type="text" name="endereco_rua" value="${empty paciente ? param.endereco_rua : paciente.endereco_rua }"/></p>
			<p><label for="numero">N�mero</label><br/> <input type="text" name="endereco_num" value="${empty paciente ? param.endereco_num : paciente.endereco_num }"/></p>
			<p><label for="bairro">Bairro</label><br/> <input type="text" name="endereco_bairro" value="${empty paciente ? param.endereco_bairro : paciente.endereco_bairro }"/></p>
			<p><label for="cep">CEP</label><br/> <input type="text" name="cep" value="${empty paciente ? param.cep : paciente.cep }"/></p>
			<p><label for="telefone">Telefone</label><br/> <input type="text" name="telefone_paciente" value="${empty paciente ? param.telefone_paciente : paciente.telefone_paciente }"/></p>
			<p><label for="email">Email</label><br/> <input type="text" name="email_paciente" value="${empty paciente ? param.email_paciente : paciente.email_paciente }"/></p>
			<p><label for="convenio">Conv�nio</label><br/> <input type="text" name="convenio_paciente" value="${empty paciente ? param.convenio_paciente : paciente.convenio_paciente }"/></p>
			<p><label for="descricao">Descricao do Exame</label><br/><textarea rows="4" cols="50" id="mensagem" name="descricao" value="${empty paciente ? param.descricao : paciente.exame.descricao}"/></textarea></p>			
			
			<input type="submit" value="Enviar" />
	</form>
</c:if>
</div>
</div>
</div>