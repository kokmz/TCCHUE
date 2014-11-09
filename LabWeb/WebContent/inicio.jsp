<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet" type="text/css" href="estilos.css"/>
<title>Hue - Laboratorio Medicinale</title>
</head>
<body>
<%@include file="paginas/banner.html" %>
<div id="cabecalho">
	
	<c:if test="${empty loginUsuario}">
					<div id="login">
					<fieldset>
						<form id="loginform" action="LoginServlet" method="post">
						    <label><b> Login: </b></label><br>
						    <label for="Loginform">Login:</label>
						    <input type="text" name="login" value="${param.login}" value="usuario" />
							<br /> 
							<p>
							<label for="senha">Senha:</label>
							<input type="password" name="password" />
							</p>
							<input type="submit" value="Esqueci minha senha" />
							<input type="submit" value="Entrar" />
							</form>	
					</fieldset>					
					</div>
				</c:if>
</div> 

	<!-- validando se ha erros e mostrando uma menssagem caso positivo -->	
		<c:if test="${not empty mensagemErro}">
			  <script type="text/javascript">
			  		alert('${mensagemErro}');
			  </script>
		</c:if>  
</body>
</html>