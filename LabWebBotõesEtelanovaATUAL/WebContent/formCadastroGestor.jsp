<%@page import="java.io.ObjectInputStream.GetField"%>
<%@page import="com.itextpdf.text.Document"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="formestilonovo.css"/>

<style>
@-webkit-keyframes bounce { 0% { top: 0; } 50% { top: -5px; } 100% { top: 0; }}

@keyframes bounce { 0% { top: 0; } 50% { top: -5px; } 100% { top: 0; }}
</style>
	
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
			if (cep_code.length <= 0 || cep_code == "________") {
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

			if (cpf_cnpj.length <= 0 || cpf_cnpj == "___.___.___-__") {
				$(".cpfInvalido").hide();
				return;
			}
			// Testa a validação e formata se estiver OK
			if (formata_cpf_cnpj(cpf_cnpj)) {
				$(this).val(formata_cpf_cnpj(cpf_cnpj));
				$(".cpfInvalido").hide();
			} else {

				//document.getElementById("cpf").focus();
				$(".cpfInvalido").show();
				$("botaum2").hide();

			}

		});

	});
</script>
<script type="text/javascript">
	function validacaoEmail(field) {
		usuario = field.value.substring(0, field.value.indexOf("@"));
		dominio = field.value.substring(field.value.indexOf("@") + 1,
				field.value.length);
		if (usuario.length <= 0 && dominio.length <= 0) {
			$(".emailInvalido").hide();
			return;
		}
		if ((usuario.length >= 1) && (dominio.length >= 3)
				&& (usuario.search("@") == -1) && (dominio.search("@") == -1)
				&& (usuario.search(" ") == -1) && (dominio.search(" ") == -1)
				&& (dominio.search(".") != -1) && (dominio.indexOf(".") >= 1)
				&& (dominio.lastIndexOf(".") < dominio.length - 1)) {
			$(".emailInvalido").hide();
		} else {

			$(".emailInvalido").show();
		}
	}
</script>
<script src="script/jquery.maskedinput.js"></script>
<script>
	$(function() {
		$("#data").mask("99/99/9999");
		$("#telefone").mask("(99)9999-9999");
		$("#cpf").mask("999.999.999-99");
		$("#rg").mask("99.999.999-9");
		$("#cep").mask("99999-999");
	});
</script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script>
	$(function() {
		$("#data").datepicker({
			changeMonth : true,
			changeYear : true,
			showOn : "button",
			buttonImage : "images/calendar2.png",
			buttonImageOnly : true,
			buttonText : "Selecione a data",
			dateFormat : "dd/mm/yy"
		});
	});
</script>


<div id="pagina">
	<div id="conteudo">

		<c:if test="${empty loginUsuario}">
			<jsp:forward page="index.jsp" />
		</c:if>

		<h1>Cadastro de Paciente</h1>

		<div id="formcadastro" class="formcadastro">

			<c:if
				test="${loginUsuario.perfil.gestor || loginUsuario.perfil.admin}">
				<p>
					<a href="ListaPacienteServlet"><img
						src="images/botaovisualiza.png"></img></a>
				</p>
				<form class="cadastro-gestor" id="paciente" action="PacienteServlet" method="post" style="height:0px;">

					<c:if test="${not empty paciente}">
						<input type="hidden" name="idPaciente" value="${paciente.id}" />
					</c:if>
					
			
					<div class="botaore">
					<input class="botaodegerar" type="button" value="Gerar Código"
						onclick="GerarCodigo()">
					</div>
					
					<div class="form-wrapper">
						<input class="formgestor"
							id="cod_verif" type="text" name="cod_verif"
							value="${empty paciente ? param.cod_verif : paciente.cod_verif }" placeholder="Codigo de verificação" /><label class="formgestor" for="cod_verif">Código de Verificação</label>
							</div>
					
					<div class="form-wrapper">
						<input class="formgestor" id="nome"
							type="text" name="nome_paciente"
							value="${empty paciente ? param.nome_paciente : paciente.nome_paciente}" placeholder="Nome" /><label class="formgestor" for="nome">Nome</label>
					</div>
					
					<div class="form-wrapper">
						<input class="formgestor" id="rg" type="text"
							name="rg_paciente"
							value="${empty paciente ? param.rg_paciente : paciente.rg_paciente}" placeholder="RG" /><label class="formgestor" for="rg">RG</label>
					</div>
					
					<div class="form-wrapper">
						<input class="formgestor" id="cpf"
							type="text" name="cpf_paciente"
							value="${empty paciente ? param.cpf_paciente : paciente.cpf_paciente }" placeholder="CPF" /><label class="formgestor" for="cpf">CPF</label><span class="cpfInvalido" style="display: none;">CPF Inválido.</span>
					</div>		
							
					
					
					<div class="form-wrapper">
						<input class="formgestor"
							id="data" type="text" name="datanasc_paciente"
							value="${empty paciente ? param.datanasc_paciente : paciente.datanasc_paciente }" placeholder="Data de Nascimento" /><label class="formgestor" for="data">Data de Nascimento</label>
					</div>
					
					<div class="form-wrapper">
						<input class="formgestor" id="cidade"
							type="text" name="cidade"
							value="${empty paciente ? param.cidade_paciente : paciente.cidade_paciente }" placeholder="Cidade" /><label class="formgestor" for="cidade">Cidade</label>
					</div>

					<div class="estadore">
						<select class="estadocss"
							name="estado">
							<c:forEach var="estado_endereco" items="${estado}">
								<option class="formgestor" value="${estado_endereco.id_estado}"
									<c:if test="${estado_endereco.id_estado == paciente.estado.id_estado}" >
										<c:out value="selected=selected"/>
										</c:if>>${estado_endereco.sigla_estado}</option>
									</c:forEach>
						</select>
					</div>
					
			
					
					<div class="form-wrapper">
						<input class="formgestor" id="cep"
							type="text" name="cep"
							value="${empty paciente ? param.logradouro.cep : paciente.logradouro.cep }" placeholder="CEP" /><label class="formgestor" for="cep">CEP</label><span class="cepInvalido" style="display: none;">CEP Inválido.</span>
						</div>
						 <input type="hidden"
							value="${empty paciente ? param.logradouro.id_logradouro : paciente.logradouro.id_logradouro }"
							id="cepId" name="cepId" />
										

					<div class="form-wrapper2">
						<input class="formgestor"
							id="bairro" type="text" name="bairro" readonly="readonly" 
							value="${empty paciente ? param.logradouro.bairro : paciente.logradouro.bairro }" placeholder="Bairro" /><label class="formgestor" for="bairro">Bairro</label>
					</div>
					
					<div class="form-wrapper2">
						<input class="formgestor" id="rua" readonly="readonly"
							type="text" name="endereco"
							value="${empty paciente ? param.logradouro.endereco : paciente.logradouro.endereco }" placeholder="Endereço" /><label class="formgestor" for="rua">Endereço</label>
					</div>
					
					<div class="form-wrapper2">
						<input class="formgestor"
							id="numero" type="text" name="endereco_num"
							value="${empty paciente ? param.numero_endereco : paciente.numero_endereco }" placeholder="Numero"/><label class="formgestor" for="numero">Número</label>
					</div>
					
					<div class="form-wrapper2">
						<input class="formgestor"
							id="complemento" type="text" name="endereco_complemento"
							value="${empty paciente ? param.logradouro_complemento : paciente.logradouro_complemento }" placeholder="Complemento" /><label class="formgestor" for="complemento">Complemento</label>
					</div>			

					<div class="form-wrapper2">
						<input class="formgestor"
							id="telefone" type="text" name="telefone_paciente"
							value="${empty paciente ? param.telefone_paciente : paciente.telefone_paciente }" placeholder="Telefone" /><label class="formgestor" for="telefone">Telefone</label>
				</div>
					
					<div class="form-wrapper2">
						<input class="formgestor" id="email"
							type="text" name="email_paciente"
							onblur="validacaoEmail(paciente.email)"
							value="${empty paciente ? param.email_paciente : paciente.email_paciente }" placeholder="Email" /><label class="formgestor" for="email">Email</label><span class="emailInvalido" style="display: none;">Email Inválido.</span>
					</div>
											
					
					<div class="form-wrapper2">
						<input class="formgestor"
							id="convenio" type="text" name="convenio_paciente"
							value="${empty paciente ? param.convenio_paciente : paciente.convenio_paciente }" placeholder="Convenio" /><label class="formgestor" for="convenio">Convênio</label>
				</div>	
				
			<div class="botaore2">
					<input type="submit" value="Enviar" class="botaodeenviar" />
					</div>
					
				</form>

			</c:if>
		</div>

	</div>
</div>
