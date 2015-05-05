<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" type="text/css" href="detalhapaciente.css"/>

<c:if test="${empty loginUsuario}">
<jsp:forward page="index.jsp"/>  
</c:if>

<div id="pagina">
<div id="conteudo">
<h1>Detalhe Paciente</h1>

<form id="paciente" action="ObterDetalhePacienteServlet" method="post">
			<div class="box">
 		<div class="procedimentoPaciente">
    		<div class="back-side">
    		</div>
    		<div class="front-side">
     			 <span>Paciente</span>
    		</div>
  		</div>
  			<p class="boxP"><label for="nome_paciente">${empty paciente ? param.nome_paciente : paciente.nome_paciente}</label></p>
			<p><label for="cod_verif" class="negrito">Código:</label> ${empty paciente ? param.cod_verif : paciente.cod_verif}</p>
			<p><label for="rg_paciente" class="negrito">RG:</label> ${empty paciente ? param.rg_paciente : paciente.rg_paciente}</p>
			<p><label for="cpf_paciente" class="negrito">CPF:</label> ${empty paciente ? param.cpf_paciente : paciente.cpf_paciente }</p>
			<p><label for="data_nasc" class="negrito">Data Nascimento:</label> ${empty paciente ? param.datanasc_paciente : paciente.datanasc_paciente }</p>
			<p><label for="cidade" class="negrito">Cidade:</label> ${empty paciente ? param.cidade_paciente : paciente.cidade_paciente }</p>
			<p><label for="cidade" class="negrito">Estado:</label> ${empty paciente ? param.estado.sigla_estado : paciente.estado.sigla_estado } - ${empty paciente ? param.estado.nome_estado : paciente.estado.nome_estado }</p>
			<p><label for="cep" class="negrito">CEP:</label> ${empty paciente ? param.logradouro.cep : paciente.logradouro.cep}</p> 
			<p><label for="endereco_bairro" class="negrito">Bairro:</label> ${empty paciente ? param.logradouro.bairro : paciente.logradouro.bairro }</p>
			<p><label for="endereco_rua" class="negrito">Rua:</label> ${empty paciente ? param.logradouro.endereco : paciente.logradouro.endereco }</p>
			<p><label for="endereco_num" class="negrito">Número:</label> ${empty paciente ? param.numero_endereco : paciente.numero_endereco }</p>
			<p><label for="endereco_complemento" class="negrito">Complemento:</label> ${empty paciente ? param.logradouro_complemento : paciente.logradouro_complemento }</p>
			<p><label for="telefone_paciente" class="negrito">Telefone:</label> ${empty paciente ? param.telefone_paciente : paciente.telefone_paciente}</p>
			<p><label for="email_paciente" class="negrito">Email:</label> ${empty paciente ? param.email_paciente : paciente.email_paciente}</p>
			<p><label for="convenio_paciente" class="negrito">Convênio:</label> ${empty paciente ? param.convenio_paciente : paciente.convenio_paciente}</p>
			
  		
	</div>
</form>    
	
	<a href="ListaPacienteServlet"><img  src="images/botaovoltar.png"></a>

</div>
</div>
