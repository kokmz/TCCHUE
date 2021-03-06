<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<style>
.custom-combobox {
	position: relative;
	display: inline-block;
}

.custom-combobox-toggle {
	position: absolute;
	top: 0;
	bottom: 0;
	margin-left: -1px;
	padding: 0;
}

.custom-combobox-input {
	margin: 0;
	padding: 5px 10px;
	width: 410px;
}

.ui-autocomplete {
	max-height: 200px;
	width: 410px;
	overflow-y: auto; /* prevent horizontal scrollbar */
	overflow-x: hidden; /* add padding to account for vertical scrollbar */
	z-index: 6000 !important;
}
</style>
<script>
	(function($) {
		$
				.widget(
						"custom.combobox",
						{
							_create : function() {
								this.wrapper = $("<span>").addClass(
										"custom-combobox").insertAfter(
										this.element);

								this.element.hide();
								this._createAutocomplete();
								this._createShowAllButton();
							},

							_createAutocomplete : function() {
								var selected = this.element
										.children(":selected"), value = selected
										.val() ? selected.text() : "";

								this.input = $("<input>")
										.appendTo(this.wrapper)
										.val(value)
										.attr("title", "")
										.attr("placeholder", "Selecione...")
										.addClass(
												"custom-combobox-input ui-widget ui-widget-content ui-state-default ui-corner-left")
										.autocomplete({
											delay : 0,
											minLength : 0,
											source : $.proxy(this, "_source")
										}).tooltip({
											tooltipClass : "ui-state-highlight"
										});

								this._on(this.input, {
									autocompleteselect : function(event, ui) {
										ui.item.option.selected = true;
										this._trigger("select", event, {
											item : ui.item.option
										});
									},

									autocompletechange : "_removeIfInvalid"
								});
							},

							_createShowAllButton : function() {
								var input = this.input, wasOpen = false;

								$("<a>")
										.attr("tabIndex", -1)
										.attr("title", "Selecionar")
										.tooltip()
										.appendTo(this.wrapper)
										.button(
												{
													icons : {
														primary : "ui-icon-triangle-1-s"
													},
													text : false
												})
										.removeClass("ui-corner-all")
										.addClass(
												"custom-combobox-toggle ui-corner-right")
										.mousedown(
												function() {
													wasOpen = input
															.autocomplete(
																	"widget")
															.is(":visible");
												}).click(function() {
											input.focus();

											// Close if already visible
											if (wasOpen) {
												return;
											}

											// Pass empty string as value to search for, displaying all results
											input.autocomplete("search", "");
										});
							},

							_source : function(request, response) {
								var matcher = new RegExp($.ui.autocomplete
										.escapeRegex(request.term), "i");
								response(this.element
										.children("option")
										.map(
												function() {
													var text = $(this).text();
													if (this.value
															&& (!request.term || matcher
																	.test(text)))
														return {
															label : text,
															value : text,
															option : this
														};
												}));
							},

							_removeIfInvalid : function(event, ui) {

								// Selected an item, nothing to do
								if (ui.item) {
									return;
								}

								// Search for a match (case-insensitive)
								var value = this.input.val(), valueLowerCase = value
										.toLowerCase(), valid = false;
								this.element
										.children("option")
										.each(
												function() {
													if ($(this).text()
															.toLowerCase() === valueLowerCase) {
														this.selected = valid = true;
														return false;
													}
												});

								// Found a match, nothing to do
								if (valid) {
									return;
								}

								// Remove invalid value
								this.input.val("").attr("title",
										value + " didn't match any item")
										.tooltip("open");
								this.element.val("");
								this._delay(function() {
									this.input.tooltip("close").attr("title",
											"");
								}, 2500);
								this.input.autocomplete("instance").term = "";
							},

							_destroy : function() {
								this.wrapper.remove();
								this.element.show();
							}
						});
	})(jQuery);

	$(function() {
		$("#combobox").combobox();
		$("#combobox2").combobox();
		$("#toggle").click(function() {
			$("#combobox2").toggle();
		});
		$("#toggle").click(function() {
			$("#combobox").toggle();
		});
	});
</script>

<script src="script/jquery.maskedinput.js"></script>
<script>
	$(function() {
		$("#data_input").mask("99/99/9999");
	});
</script>

<script>
	$(function() {
		$("input#data_input").datepicker({
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
		<h1>Cadastro de Resultado de exames</h1>
		<form id="exame" action="cadResultadoExameServlet" method="post">

			<c:if test="${not empty exame}">
				<input type="hidden" name="idExame" value="${exame.id}" />
			</c:if>


			<div class="ui-widget">
				<label id="cboPaciente" for="paciente">Paciente: </label> <select
					id="combobox" name="paciente">
					<option value=""></option>
					<c:forEach var="paciente" items="${pacientes}">
						<option value="${paciente.id}"
							<c:if test="${paciente.id == exame.id_paciente}">
					<c:out value="selected=selected"/>
				</c:if>>${paciente.nome_paciente}</option>
					</c:forEach>
				</select>
			</div>

			<div class="ui-widget">
				<p>
					<label id="cboExame" for="exame">Exame: </label> <select
						id="combobox2" name="exame">
						<option value=""></option>
						<c:forEach var="exames" items="${exames}">
							<option value="${exames.id_tabelaExame}"
								<c:if test="${exames.id_tabelaExame == exame.id_tabelaExame}">
					<c:out value="selected=selected"/>
				</c:if>>${exames.exame_nome}</option>
						</c:forEach>
					</select>
			</div>

			<p>
				<label for="descricao">Descri��o / Resultado Exame:</label>
			</p>
			<textarea id=descricao name="descricao" rows="10" cols="75" />${empty exame ? param.descricao : exame.descricao}</textarea>


			<p>
				<label id="cboStatus" for="status">Status: </label> <select
					name="status">
					 <option value="" disabled selected>Selecione...</option>
					<c:forEach var="status_exame" items="${status}">						
						<option value="${status_exame.id_status}"
							<c:if test="${status_exame.id_status == exame.id_status}">
					<c:out value="selected=selected"/>
				</c:if>>${status_exame.status_nome}</option>
					</c:forEach>
				</select>
			<p>
				<label id="data" for="data">Data do Exame:</label> <input
					id="data_input" type="text" name="data"
					value="${empty exame ? param.data : exame.data_exame }" />
			</p>

			<p>
				<label id="nome_medico" for="nome_medico">Nome do M�dico:</label><input
					type="text" name="nome_medico"
					value="${empty exame ? param.nome_medico : exame.nome_medico }" />
			</p>

			<p>
				<label id="crm_medico" for="crm_medico">CRM do M�dico:</label><input
					type="text" name="crm_medico"
					value="${empty exame ? param.crm_medico : exame.crm_medico }" />
			</p>
			<br /> <br /> <input type="submit" value="Enviar" />
		</form>
	</div>
</div>
