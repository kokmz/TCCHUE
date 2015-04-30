<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" /> 
<script src="http://code.jquery.com/jquery-1.9.1.js"></script> 
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

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
		$("#telefone").mask("(99)9999-9999");
	});
</script>
 <script>
 var dialog;
  dialog= $(function() {
    $( "#dialog-form" ).dialog({
      autoOpen: false,
      show: {
        effect: "blind",
        duration: 1000
      },
      hide: {
        effect: "explode",
        duration: 1000
      },
      buttons: {
          Alterar: function() {
        	  get: mudarsenhaServlet;       	  
          },
          Cancel: function() {
            dialog.dialog( "close" );
          }
        },
     close: function() {
          form[ 0 ].reset();
          allFields.removeClass( "ui-state-error" );
        }
    });
 
    $( "#abrirtela").button().on( "click", function() {
        dialog.dialog("open");
    });
  });
  </script>

<div id="pagina">
<div id="conteudo">

<c:if test="${empty loginUsuario}">
<jsp:forward page="index.jsp"/>  
</c:if>

<h1>Editar Gestor</h1>

<div id="formulario">

 <c:if test="${loginUsuario.perfil.admin}">  
 <p>
		<a href="ListaGestorServlet"><img src="images/botaovisualisagestor.png"></img></a>
</p><br/>
	<form id="gestor" action="GestorEditServlet" method="post">
					
			<c:if test="${not empty gestor}">
			<input type="hidden" name="idUsuario" value="${gestor.id_usuario}"/>
		  	</c:if>
			<p><label id="nome_g" for="nome">Nome:</label><input id="nome" type="text" name="nome" value="${empty gestor ? param.nome : gestor.nome}"/></p>
			<p><label id="telefone_g" for="telefone">Telefone:</label><input id="telefone" type="text"	name="telefone" value="${empty gestor ? param.telefone : gestor.telefone}"/></p>
			<p><label id="email_g" for="email">Email:</label><input id="email" type="text" name="email" onblur="validacaoEmail(gestor.email)" value="${empty gestor ? param.email : gestor.email}"/><span
							class="emailInvalido" style="display: none;">Email
							Inválido.</span></p>			
			<input id="botaum_g" type="submit" value="Enviar" />
	</form>	
	
<div id="dialog-form" title="Create new user" style="display:none">
  <p class="validateTips">All form fields are required.</p>
 
  <form>
    <fieldset>
      <label for="name">Name</label>
      <input type="text" name="name" id="name" value="Jane Smith" class="text ui-widget-content ui-corner-all">
      <label for="email">Email</label>
      <input type="text" name="email" id="email" value="jane@smith.com" class="text ui-widget-content ui-corner-all">
      <label for="password">Password</label>
      <input type="password" name="password" id="password" value="xxxxxxx" class="text ui-widget-content ui-corner-all">
 
      <!-- Allow form submission with keyboard without duplicating the dialog button -->
      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
  </form>
</div>
	<button id="abrirtela">Alterar senha</button>

</c:if>
</div>
</div>
</div>