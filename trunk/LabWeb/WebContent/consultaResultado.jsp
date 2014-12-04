<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="site.vo.Exame" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
<script type='text/javascript' src="menu_jquery.js"></script>
<link rel="stylesheet" type="text/css" href="estilos.css"/>
<title>Hue - Laboratorio Medicinal</title>
</head>
<body>
	
	<%@include file="inicio.jsp" %>
	<%@include file="paginasjsp/menu.jsp" %>
	<jsp:include page="mensagem.jsp"/>
	
<div id="pagina">
<div id="conteudo">
<h1>Resultado exames</h1>
<c:choose>
  <c:when test="${empty resultado}">
    <p>Você não possui nenhum resultado cadastrado!</p>
  </c:when>
  <c:otherwise>
  <table id="tabelaresultado" border="1">
    <tr>    
      <th>Exame</th>
      <th>Status</th>
    </tr>
    
    <c:forEach var="resultado" items="${resultado}">    
  
  	  <tr>
  		<td >
        <a href="ResultadoServlet?resultado=${resultado.id}">${resultado.examelab.exame_nome}</a>
      </td>
       <td>
    	${resultado.status.status_nome}
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