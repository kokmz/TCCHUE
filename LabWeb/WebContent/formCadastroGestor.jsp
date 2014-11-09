<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script>
	function GerarCodigo() {
		document.getElementById("cod_verif").value = Math.floor(1e8 + (Math.random() * 8e8));
	}
</script>


<div id="pagina">
<div id="conteudo">

<h1>Cadastre um paciente</h1>
<jsp:include page="mensagem.jsp"/>

<div id="formulario">

 <c:if test="${loginUsuario.perfil.gestor || loginUsuario.perfil.admin}" >  
 <p>
		<a href="ListaPacienteServlet">Visualizar Pacientes</a>
</p>
	<form id="paciente" action="PacienteServlet" method="post">
					
			<c:if test="${not empty paciente}">
			<input type="hidden" name="idPaciente" value="${paciente.id}"/>
			</c:if>
			<p><label id="cod_p" for="cod_verif">Código de Verificação:</label><input id="cod_verif" type="text" name="cod_verif" value="${empty paciente ? param.cod_verif : paciente.cod_verif }"/></p>
			
			<p><label id="nome_p" for="nome">Nome:</label><input id="nome" type="text"	name="nome_paciente" value="${empty paciente ? param.nome_paciente : paciente.nome_paciente}"/></p>
			<p><label id="rg_p" for="rg">RG:</label><input id="rg" type="text" name="rg_paciente" value="${empty paciente ? param.rg_paciente : paciente.rg_paciente}"/></p>			
			<p><label id="cpf_p" for="cpf">CPF:</label><input id="cpf" type="text" name="cpf_paciente" value="${empty paciente ? param.cpf_paciente : paciente.cpf_paciente }"/></p>
			<p><label id="data_p" for="data">Data de Nascimento:</label><input id="data" type="text" name="datanasc_paciente" value="${empty paciente ? param.datanasc_paciente : paciente.datanasc_paciente }"/></p>
			<p><label id="rua_p" for="rua">Rua:</label><input id="rua" type="text" name="endereco_rua" value="${empty paciente ? param.endereco_rua : paciente.endereco_rua }"/></p>
			<p><label id="numero_p" for="numero">Número:</label><input id="numero" type="text" name="endereco_num" value="${empty paciente ? param.endereco_num : paciente.endereco_num }"/></p>
			<p><label id="bairro_p" for="bairro">Bairro:</label><input id="bairro" type="text" name="endereco_bairro" value="${empty paciente ? param.endereco_bairro : paciente.endereco_bairro }"/></p>
			<p><label id="cep_p" for="cep">CEP:</label><input id="cep" type="text" name="cep" value="${empty paciente ? param.cep : paciente.cep }"/></p>
			<p><label id="telefone_p" for="telefone">Telefone:</label><input id="telefone" type="text" name="telefone_paciente" value="${empty paciente ? param.telefone_paciente : paciente.telefone_paciente }"/></p>
			<p><label id="email_p" for="email">Email:</label><input id="email" type="text" name="email_paciente" value="${empty paciente ? param.email_paciente : paciente.email_paciente }"/></p>
			<p><label id="convenio_p" for="convenio">Convênio:</label><input id="convenio" type="text" name="convenio_paciente" value="${empty paciente ? param.convenio_paciente : paciente.convenio_paciente }"/></p>
					
			<input type="submit" value="Enviar" id="botaum2" />
	</form>

		<input id="botaogera" type="button" value="Gerar Código" onclick="GerarCodigo()">
	
</c:if>
</div>
</div>
</div>