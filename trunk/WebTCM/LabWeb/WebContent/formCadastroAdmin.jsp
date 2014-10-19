<div id="formulario">
	<form action="PacienteServlet" method="post">
		<fieldset>
			<p>${msgerro}</p>
			<p>
				<label for="nome">Nome</label> <br /> <input type="text"
					name="nome" value='${param.nome}' />
			</p>
			<p>
				<label for="rg">RG</label> <br /> <input type="text"
					name="rg" value='${param.rg}' />
			</p>
			<p>
				<label for="email">E-mail</label> <br /> <input type="text"
					name="email" value='${param.email}' />
			</p>
			<p>
				<label for="password">Senha</label> <br /> <input type="password"
					name="password" />
			</p>
			<p>
				<label for="passwordValida">Repita a Senha</label> <br /> <input type="password"
					name="passwordValida" />
			</p>
			<p>
				<input type="checkbox" name="gestor" value="Gestor">Gestor
			</p>
			<input type="submit" value="Enviar" />
		</fieldset>
	</form>
</div>