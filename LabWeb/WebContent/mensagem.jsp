<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:choose>
  <c:when test="${not empty mensagemErro}">
    <div class="mensagemErro">
		  ${mensagemErro}
		</div>
  </c:when>
  <c:when test="${not empty mensagemSucesso}">
    <div class="mensagemSucesso">
		  ${mensagemSucesso}
		</div>
  </c:when>  
</c:choose>  