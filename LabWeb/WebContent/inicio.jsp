<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet" type="text/css" href="estilos.css" />
<title>Clinica Lab - Laboratorio Medicinale</title>
</head>
<body>

	<div id="cabecalho">
		<%@include file="paginas/banner.html"%>

		<div id="login">
			<c:if test="${empty loginUsuario}">
				<fieldset id="fieldsetform">
					<form id="loginform" action="LoginServlet" method="post">
						<label for="logincss">Login:</label> <input id="logincss"
							type="text" name="login" value="${param.login}" value="usuario" />
						<label for="senhacss">Senha:</label> <input id="senhacss"
							type="password" name="password" /> <input id="esquecicss"
							onClick="window.location.href='EsqueciMinhaSenha.jsp'"
							type="button" value="Esqueci minha senha" /> <input
							id="entrarcss" type="submit" value="Entrar" />
					</form>

				</fieldset>

			</c:if>
			<c:if
				test="${loginUsuario.perfil.gestor || loginUsuario.perfil.admin}">
				<fieldset id="fieldsetbem">
					<label id="bemvindo">Bem vindo,</label> <label id="usuarionome">${loginUsuario.nome}</label>
					<a id="trocasenha" href="AlterarSenhaServlet?alterarsenha=${loginUsuario.id_usuario}">Alterar Senha</a>
					<a id="bemvindo1" href="LogoutServlet"><img
						src="images/botaosair.png"></img></a>
				</fieldset>
			</c:if>
		</div>

	</div>

	<!-- validando se ha erros e mostrando uma menssagem caso positivo -->
	<c:if test="${not empty mensagemErro}">
		<script type="text/javascript">
			alert('${mensagemErro}');
		</script>
	</c:if>
</body>
</html>