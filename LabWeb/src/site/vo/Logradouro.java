package site.vo;

public class Logradouro {
	private int id_logradouro;
	private String cep, endereco, bairro;
	
	public int getId_logradouro() {
		return id_logradouro;
	}
	public void setId_logradouro(int id_logradouro) {
		this.id_logradouro = id_logradouro;
	}
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
}
