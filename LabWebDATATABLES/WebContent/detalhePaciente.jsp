<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${empty loginUsuario}">
<jsp:forward page="index.jsp"/>  
</c:if>

<div id="pagina">
<div id="conteudo">
<h1>Detalhe Paciente</h1>

    <fieldset id="fieldsetexames">
	<form id="paciente" action="ObterDetalhePacienteServlet" method="post">
					
			<p><label for="nome_paciente">Nome: ${empty paciente ? param.nome_paciente : paciente.nome_paciente}</label></p>
			<p><label for="cod_verif">Código: ${empty paciente ? param.cod_verif : paciente.cod_verif}</label></p>
			<p><label for="rg_paciente">RG: ${empty paciente ? param.rg_paciente : paciente.rg_paciente}</label></p>
			<p><label for="cpf_paciente">CPF: ${empty paciente ? param.cpf_paciente : paciente.cpf_paciente }</label></p>
			<p><label for="data_nasc">Data Nascimento: ${empty paciente ? param.datanasc_paciente : paciente.datanasc_paciente }</label></p>
			<p><label for="cidade">Cidade: ${empty paciente ? param.cidade_paciente : paciente.cidade_paciente }</label></p>
			<p><label for="cidade">Estado: ${empty paciente ? param.estado.sigla_estado : paciente.estado.sigla_estado } - ${empty paciente ? param.estado.nome_estado : paciente.estado.nome_estado }</label></p>
			<p><label for="cep">CEP: ${empty paciente ? param.logradouro.cep : paciente.logradouro.cep}</label></p> 
			<p><label for="endereco_bairro">Bairro: ${empty paciente ? param.logradouro.bairro : paciente.logradouro.bairro }</label></p>
			<p><label for="endereco_rua">Rua: ${empty paciente ? param.logradouro.endereco : paciente.logradouro.endereco }</label></p>
			<p><label for="endereco_num">Número: ${empty paciente ? param.numero_endereco : paciente.numero_endereco }</label></p>
			<p><label for="endereco_complemento">Complemento: ${empty paciente ? param.logradouro_complemento : paciente.logradouro_complemento }</label></p>
			<p><label for="telefone_paciente">Telefone: ${empty paciente ? param.telefone_paciente : paciente.telefone_paciente}</label></p>
			<p><label for="email_paciente">Email: ${empty paciente ? param.email_paciente : paciente.email_paciente}</label></p>
			<p><label for="convenio_paciente">Convênio: ${empty paciente ? param.convenio_paciente : paciente.convenio_paciente}</label></p>
			
	</form>
	</fieldset>
	<a href="ListaPacienteServlet"><img id="voltarbotao" src="images/botaovoltar.png"></a>

</div>
</div>
