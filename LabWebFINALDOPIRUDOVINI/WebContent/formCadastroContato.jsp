<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" type="text/css" href="contatonovo.css"/>
<div id="pagina">
<div id="conteudo">

<div id="ondestamos">
<h1>Onde estamos?</h1>
<ul>
  <li>Av. Dr. Moraes Sales nº40, proximo do Terminal Central</li>
</ul>
<p>Acompanhe o mapa abaixo!</p>
<p>Horario de funcionamento: Seg a Sex das 09h as 17h e Sab e Dom das 08h ao 12h</p>
</div>

<h1>Contato</h1>
<p>Preencha os campos abaixo e envie sua duvida para nós!</p>

<div id="formulario">

	<div class="contact">
	<form class="frame" id="duvida" action="DuvidaServlet" method="post">
					
			<c:if test="${not empty duvida}">
			<input type="hidden" name="idDuvida" value="${duvida.id_duvida}"/>
			</c:if>
	
  	 <label class="required">
      Nome
      <input class="novocontato" type="text" name="nome" id="nome" placeholder="Digite o nome" title="Exemplo: Jóse da Silva" value="${empty duvida ? param.nome : duvida.nome }" required />
    </label>
    <label  class="required">
      E-mail
      <input class="novocontato" type="email" name="email" id="nome" placeholder="Digite o email" title="Exemplo: Jose_silva@endereço.com" value="${empty duvida ? param.email : duvida.email}" required />
    </label>
    <label class="required">
     Mensagem
      <textarea class="novocontato" name="mensagem" rows="3" placeholder="Insira uma mensagem" title="Exemplo: Boa tarde! Gostaria de saber..." required>${empty duvida ? param.mensagem : duvida.mensagem}</textarea>
    </label>
    <div class="text-center add-sm-top">
    <input type="hidden" name="status" value="${duvida.status}"/>
      <button id="botaum" class="btn btn-success" type="submit"><i class="fa fa-envelope"></i> &nbsp; Enviar</button>
    </div>    
  </form>
  </div>
  </div>	

<div id="mapacontato">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3675.215546124018!2d-47.05248241050848!3d-22.905419268872684!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c8c8b741925a85%3A0x7f65542c4ec76958!2sCentro%2C+Campinas+-+SP!5e0!3m2!1spt-BR!2sbr!4v1428498738040" width="800" height="230" frameborder="0" style="border:0"></iframe><!--  <img src="images/mapacontato.png" alt="Mapa contato"></img> -->
</div>
</div>
</div>