
public class Login {
	protected String login, senha;

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	@Override
	public String toString() {
		return "Usu�rio: " + login +"\n\nLOGIN EFETUADO!!";
	}
	
	

}
