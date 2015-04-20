<%@page import="java.io.ObjectInputStream.GetField"%>
<%@page import="com.itextpdf.text.Document"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
	function GerarCodigo() {
		document.getElementById("cod_verif").value = Math.floor(1e8 + (Math
				.random() * 8e8));
	}
</script>

<script type="text/javascript">
	jQuery(function($) {
		$("input#cep").blur(function() {
			var cep_code = $(this).val().replace("-", "");
			if (cep_code.length <= 0) {
				$(".cepInvalido").hide();
				$("input#bairro, input#rua, input#cepId").val("");
				return;
			}
			$.get("LogradouroServlet", function(result) {
				var logradouro = result.split(";");
				var cep;
				for (i = 0; i < logradouro.length - 1; i++) {
					endereco = logradouro[i].split(",");
					if (endereco[1] == cep_code) {
						$("input#bairro").val(endereco[3]);
						$("input#rua").val(endereco[2]);
						$("input#cepId").val(endereco[0]);
						$(".cepInvalido").hide();
						return;
					} else {
						$("input#bairro, input#rua, input#cepId").val("");
						$(".cepInvalido").show();
					}
				}
			});

		});
	});
</script>
<script src="script/exemplo_3.js"></script>
<script src="script/valida_cpf_cnpj.js"></script>
<script>
	$(function() {

		// ## EXEMPLO 3
		// Aciona a validação e formatação ao sair do input
		$("#cpf").blur(function() {

			// O CPF ou CNPJ
			var cpf_cnpj = $(this).val();

			// Testa a validação e formata se estiver OK
			if (formata_cpf_cnpj(cpf_cnpj)) {
				$(this).val(formata_cpf_cnpj(cpf_cnpj));
			} else {
				document.getElementById("cpf").focus();
				alert('CPF ou CNPJ inválido!');
			}

		});

	});
</script>
<script type="text/javascript">
	function validacaoEmail(field) {
		usuario = field.value.substring(0, field.value.indexOf("@"));
		dominio = field.value.substring(field.value.indexOf("@") + 1,
				field.value.length);
		if ((usuario.length >= 1) && (dominio.length >= 3)
				&& (usuario.search("@") == -1) && (dominio.search("@") == -1)
				&& (usuario.search(" ") == -1) && (dominio.search(" ") == -1)
				&& (dominio.search(".") != -1) && (dominio.indexOf(".") >= 1)
				&& (dominio.lastIndexOf(".") < dominio.length - 1)) {

		} else {
			document.getElementById("email").focus();
			alert("E-mail invalido");
		}
	}
</script>
<script src="script/jquery.maskedinput.js"></script>
<script>
 $(function() {
        $("#data").mask("99/99/9999");
        $("#telefone").mask("(99)9999-9999");
        $("#cpf").mask("999.999.999-99");
        $("#rg").mask("99.999.999.9");
        $("#cep").mask("99999-999"); 
 });

</script>

<div id="pagina">
	<div id="conteudo">

		<c:if test="${empty loginUsuario}">
			<jsp:forward page="index.jsp" />
		</c:if>

		<h1>Cadastro de Paciente</h1>

		<div id="formulario">

			<c:if
				test="${loginUsuario.perfil.gestor || loginUsuario.perfil.admin}">
				<p>
					<a href="ListaPacienteServlet"><img
						src="images/botaovisualiza.png"></img></a>
				</p>
				<form id="paciente" action="PacienteServlet" method="post">

					<c:if test="${not empty paciente}">
						<input type="hidden" name="idPaciente" value="${paciente.id}" />
					</c:if>
					<input id="botaogera" type="button" value="Gerar Código"
						onclick="GerarCodigo()">
					<p>
						<label id="cod_p" for="cod_verif">Código de Verificação:</label><input
							id="cod_verif" type="text" name="cod_verif"
							value="${empty paciente ? param.cod_verif : paciente.cod_verif }" />
					</p>
					<p>
						<label id="nome_p" for="nome">Nome:</label><input id="nome"
							type="text" name="nome_paciente"
							value="${empty paciente ? param.nome_paciente : paciente.nome_paciente}" />
					</p>
					<p>
						<label id="rg_p" for="rg">RG:</label><input id="rg" type="text"
							name="rg_paciente"
							value="${empty paciente ? param.rg_paciente : paciente.rg_paciente}" />
					</p>
					<p>
						<label id="cpf_p" for="cpf">CPF:</label><input id="cpf"
							type="text" name="cpf_paciente"
							value="${empty paciente ? param.cpf_paciente : paciente.cpf_paciente }" />
					</p>
					<p>
						<label id="data_p" for="data">Data de Nascimento:</label><input
							id="data" type="date" name="datanasc_paciente"
							value="${empty paciente ? param.datanasc_paciente : paciente.datanasc_paciente }" />
					</p>
					<p>
						<label id="cidade" for="cidade">Cidade: </label><input id="cidade"
							type="text" name="cidade"
							value="${empty paciente ? param.cidade_paciente : paciente.cidade_paciente }" />
					</p>

					<p>
						<label id="cboEstado" for="estado">Estado: </label> <select
							name="estado">
							<c:forEach var="estado_endereco" items="${estado}">
								<option value="${estado_endereco.id_estado}"
									<c:if test="${estado_endereco.id_estado == paciente.estado.id_estado}">
					<c:out value="selected=selected"/>
				</c:if>>${estado_endereco.sigla_estado}</option>
							</c:forEach>
						</select>
					<p>
						<label id="cep_p" for="cep">CEP:</label><input id="cep"
							type="text" name="cep"
							value="${empty paciente ? param.logradouro.cep : paciente.logradouro.cep }" />
						<span class="cepInvalido" style="display: none;">CEP
							Inválido.</span> <input type="hidden"
							value="${empty paciente ? param.logradouro.id_logradouro : paciente.logradouro.id_logradouro }"
							id="cepId" name="cepId" />
					</p>

					<p>
						<label id="bairro_p" for="bairro">Bairro:</label><input
							id="bairro" type="text" name="bairro"
							value="${empty paciente ? param.logradouro.bairro : paciente.logradouro.bairro }" />
					</p>
					<p>
						<label id="rua_p" for="rua">Rua:</label><input id="rua"
							type="text" name="endereco"
							value="${empty paciente ? param.logradouro.endereco : paciente.logradouro.endereco }" />
					</p>
					<p>
						<label id="numero_p" for="numero">Número:</label><input
							id="numero" type="text" name="endereco_num"
							value="${empty paciente ? param.numero_endereco : paciente.numero_endereco }" />
					</p>
					<p>
						<label id="" for="complemento">Complemento:</label><input
							id="complemento" type="text" name="endereco_complemento"
							value="${empty paciente ? param.logradouro_complemento : paciente.logradouro_complemento }" />
					</p>

					<p>
						<label id="telefone_p" for="telefone">Telefone:</label><input
							id="telefone" type="text" name="telefone_paciente"
							value="${empty paciente ? param.telefone_paciente : paciente.telefone_paciente }" />
					</p>
					<p>
						<label id="email_p" for="email">Email:</label><input id="email"
							type="text" name="email_paciente"
							onblur="validacaoEmail(paciente.email)"
							value="${empty paciente ? param.email_paciente : paciente.email_paciente }" />
					</p>
					<p>
						<label id="convenio_p" for="convenio">Convênio:</label><input
							id="convenio" type="text" name="convenio_paciente"
							value="${empty paciente ? param.convenio_paciente : paciente.convenio_paciente }" />
					</p>

					<input type="submit" value="Enviar" id="botaum2" />
				</form>




			</c:if>
		</div>
	</div>
</div>