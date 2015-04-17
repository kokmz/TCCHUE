<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="site.vo.Paciente" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
<script type='text/javascript' src="menu_jquery.js"></script>
<link rel="stylesheet" type="text/css" href="estilos.css"/>
<title>Clinica Lab - Laboratorio Medicinal</title>
</head>
<body>
	
<%@include file="inicio.jsp" %>
<%@include file="paginasjsp/menu.jsp" %>
<jsp:include page="mensagem.jsp"/>

<div id="pagina">
<div id="conteudo">
<h1>Exames Laboratoriais</h1>
<p id="textotabela">Para consultar o Manual de Procedimentos de Coleta de exame basta você localizar o seu exame clicando em uma das letras<br/> abaixo caso queira consultá-lo por ordem alfabética.</p>
<div id="conteudoexames" class="conteudoExames">

 <c:if test="${loginUsuario.perfil.gestor || loginUsuario.perfil.admin}">  
  <p>
    <a href="montaExamelab.jsp"><img src="images/botaonovo.png"></img></a> 
  </p>
  </c:if>

		<ol>
		
		<li><a href="ListaExamelabServlet?letra=A">A</a></li>			
		<li><a href="ListaExamelabServlet?letra=B">B</a></li>
		<li><a href="ListaExamelabServlet?letra=C">C</a></li>
		<li><a href="ListaExamelabServlet?letra=D">D</a></li>
		<li><a href="ListaExamelabServlet?letra=E">E</a></li>
		<li><a href="ListaExamelabServlet?letra=F">F</a></li>
		<li><a href="ListaExamelabServlet?letra=G">G</a></li>
		<li><a href="ListaExamelabServlet?letra=H">H</a></li>
		<li><a href="ListaExamelabServlet?letra=I">I</a></li>
		<li><a href="ListaExamelabServlet?letra=J">J</a></li>
		<li><a href="ListaExamelabServlet?letra=K">K</a></li>
		<li><a href="ListaExamelabServlet?letra=L">L</a></li>
		<li><a href="ListaExamelabServlet?letra=M">M</a></li>
		<li><a href="ListaExamelabServlet?letra=N">N</a></li>
		<li><a href="ListaExamelabServlet?letra=O">O</a></li>
		<li><a href="ListaExamelabServlet?letra=P">P</a></li>
		<li><a href="ListaExamelabServlet?letra=Q">Q</a></li>
		<li><a href="ListaExamelabServlet?letra=R">R</a></li>
		<li><a href="ListaExamelabServlet?letra=S">S</a></li>
		<li><a href="ListaExamelabServlet?letra=T">T</a></li>
		<li><a href="ListaExamelabServlet?letra=U">U</a></li>
		<li><a href="ListaExamelabServlet?letra=V">V</a></li>
		<li><a href="ListaExamelabServlet?letra=W">W</a></li>
		<li><a href="ListaExamelabServlet?letra=X">X</a></li>
		<li><a href="ListaExamelabServlet?letra=Y">Y</a></li>
		<li><a href="ListaExamelabServlet?letra=Z">Z</a></li>
	</ol>

<c:choose>
   
  <c:when test="${empty examelabs}">
    <p></p>
  </c:when>
  <c:otherwise>
  
  <ul class="lista-exames">
    
    <c:forEach var="exame" items="${examelabs}">    
  
    <li>      
      <a href="ExameInternaServlet?exame=${exame.id_tabelaExame}">${exame.exame_nome}</a>
      <c:if test="${loginUsuario.perfil.gestor || loginUsuario.perfil.admin}"> 
      <a href="DeletarExamelabServlet?exame=${exame.id_tabelaExame}" id="deletarexame"><img src="images/botaodeletar.png"></img></a>
      <a href="ObterExamelabServlet?exame=${exame.id_tabelaExame}" id="editarexame"><img src="images/botaoeditar.png"></img></a>      
      </c:if>
    </li>
    
     
   
    </c:forEach>
    
  </ul> 

  </c:otherwise>
 </c:choose>
 
 
 
 

</div>
</div>
</div>
<%@include file="paginas/rodape.html" %>
</body>
</html>