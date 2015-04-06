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
	
<c:if test="${empty loginUsuario}">

<jsp:forward page="contato.jsp"/>  

</c:if>
<div id="pagina">
<div id="conteudo">

<c:choose>
  <c:when test="${empty duvidas}">
    <p>Nenhuma Duvida registrada!</p>
  </c:when>
  <c:otherwise>
  <table id="tabeladuvida" border="1">
    <tr>    
      <th>Nome</th>
      <th>Email</th>
      <th>Mensagem</th>
      <th>Status</th>     
      <th colspan="2">Op��es</th>
    </tr>
    
    <c:forEach var="duvida" items="${duvidas}">    
  
    <tr>

      <td>      
        ${duvida.nome}
      </td>
          <td>
    	${duvida.email}
    </td>
     <td>      
        ${duvida.mensagem}
      </td>
      <td style= "color: red">
         ${duvida.status}
       	</td>
      <td>       
      	<a href="mailto:${duvida.email}">Responder</a>
      </td>
    </tr>
    
    </c:forEach>
    
  </table>  

  </c:otherwise>
 </c:choose>

</div>
</div>
<%@include file="paginas/rodape.html" %>
</body>
</html>