<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="pagina">
<div id="conteudo">
<h1>Detalhe Paciente</h1>

    <fieldset id="fieldsetexames">
	<form id="paciente" action="ObterDetalhePacienteServlet" method="post">
					
			<p><label for="nome_paciente">Nome: ${empty paciente ? param.nome_paciente : paciente.nome_paciente}</label></p>
			<p><label for="cod_verif">Código: ${empty paciente ? param.cod_verif : paciente.cod_verif}</label></p>
			<p><label for="rg_paciente">RG: ${empty paciente ? param.rg_paciente : paciente.rg_paciente}</label></p>
			<p><label for="cpf_paciente">CPF: ${empty paciente ? param.datanasc_paciente : paciente.datanasc_paciente }</label></p>
			<p><label for="endereco_rua">Rua: ${empty paciente ? param.endereco_rua : paciente.endereco_rua}</label></p>
			<p><label for="endereco_num">Número: ${empty paciente ? param.endereco_num : paciente.endereco_num}</label></p>
			<p><label for="endereco_bairro">Bairro: ${empty paciente ? param.endereco_bairro : paciente.endereco_bairro}</label></p>
			<p><label for="cep">CEP: ${empty paciente ? param.cep : paciente.cep}</label></p> 
			<p><label for="telefone_paciente">Telefone: ${empty paciente ? param.telefone_paciente : paciente.telefone_paciente}</label></p>
			<p><label for="email_paciente">Email: ${empty paciente ? param.email_paciente : paciente.email_paciente}</label></p>
			<p><label for="convenio_paciente">Convênio: ${empty paciente ? param.convenio_paciente : paciente.convenio_paciente}</label></p>
	</form>
	</fieldset>
	<a href="paciente.jsp"><img id="voltarbotao" src="images/botaovoltar.png"></a>

</div>
</div>
