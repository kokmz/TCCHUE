<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="pagina">
<div id="conteudo">
<h1>Detalhe Paciente</h1>

    <fieldset id="fieldsetexames">
	<form id="paciente" action="ObterDetalhePacienteServlet" method="post">
					
			<h3><label for="nome_paciente">Nome: </label></h3>
			<p><label for="nome_paciente">${empty paciente ? param.nome_paciente : paciente.nome_paciente}</label></p>
			<h3><label for="cod_verif">Código: </label></h3>
			<p><label for="cod_verif">${empty paciente ? param.cod_verif : paciente.cod_verif}</label></p>
			<h3><label for="rg_paciente">RG: </label></h3> 
			<p><label for="rg_paciente">${empty paciente ? param.rg_paciente : paciente.rg_paciente}</label></p>
			<h3><label for="cpf_paciente">CPF: </label></h3> 
			<p><label for="cpf_paciente">${empty paciente ? param.datanasc_paciente : paciente.datanasc_paciente }</label></p>
			<h3><label for="endereco_rua">Rua: </label></h3> 
			<p><label for="endereco_rua">${empty paciente ? param.endereco_rua : paciente.endereco_rua}</label></p>
			<h3><label for="endereco_num">Número: </label></h3> 
			<p><label for="endereco_num">${empty paciente ? param.endereco_num : paciente.endereco_num}</label></p>
			<h3><label for="endereco_bairro">Bairro: </label></h3> 
			<p><label for="endereco_bairro">${empty paciente ? param.endereco_bairro : paciente.endereco_bairro}</label></p>
			
			<h3><label for="cep">CEP: </label></h3> 
			<p><label for="cep">${empty paciente ? param.cep : paciente.cep}</label></p>
			<h3><label for="telefone_paciente">Telefone: </label></h3> 
			<p><label for="telefone_paciente">${empty paciente ? param.telefone_paciente : paciente.telefone_paciente}</label></p>
			<h3><label for="email_paciente">Email: </label></h3> 
			<p><label for="email_paciente">${empty paciente ? param.email_paciente : paciente.email_paciente}</label></p>
			<h3><label for="convenio_paciente">Convênio: </label></h3> 
			<p><label for="convenio_paciente">${empty paciente ? param.convenio_paciente : paciente.convenio_paciente}</label></p>
	</form>
	</fieldset>
	<a href="paciente.jsp"><img id="voltarbotao" src="images/botaovoltar.png"></a>

</div>
</div>