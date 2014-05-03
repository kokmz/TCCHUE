
public class TiraDuvidas 
{
	protected String nome, email, duvida;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDuvida() {
		return duvida;
	}

	public void setDuvida(String duvida) {
		this.duvida = duvida;
	}

	public String toString() {
		return "## Tira Duvidas ##\n\n"
				+"Nome: " + nome 
				+"\nEmail: " + email 
				+"\n\nDuvida: " + duvida;
	}

}
