<div id="pagina">
<div id="conteudo">
<div id="formulario">
	<form action="cadastroServlet" method="post">
			<p>${msgerro}</p>
			<p>
				<label for="codigo">Codigo</label> <br /> <input type="text"
					name="codigo" value='${param.codigo}' />
			</p>
			<p>
				<label for="exame">Exame</label> <br /> <input type="text"
					name="exame" value='${param.exame}' />
			</p>
			<p>
				<label for="medico">Medico</label> <br /> <input type="text"
					name="medico" value='${param.medico}' />
			</p>
			<p>
				<label for="crm_medico">CRM Medico</label> <br /> <input type="text"
					name="crm_medico" value='${param.crm_medico}' />
			</p>
			<p>
				<label for="convenio">Convenio</label> <br /> <input type="text"
					name="convenio" value='${param.convenio}' />
			</p>
			<p>
				<label for="data_exame">Data do exame</label> <br /> <input type="text"
					name="data_exame" value='${param.data_exame}' />
			</p>
			<p>
				<label for="descricao">Descrição Medica</label> <br /> <input type="text"
					name="descricao" value='${param.descricao}' />
			</p>
			
			<input type="submit" value="Enviar" />
	</form>
</div>
</div>
</div>