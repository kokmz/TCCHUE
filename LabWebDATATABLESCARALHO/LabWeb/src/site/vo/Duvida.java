package site.vo;

public class Duvida {
	private int id_duvida;
	private String nome, email, mensagem, status;
	
	public Duvida() {
		super();
	}
	public int getId_duvida() {
		return id_duvida;
	}
	public void setId_duvida(int id_duvida) {
		this.id_duvida = id_duvida;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMensagem() {
		return mensagem;
	}
	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}