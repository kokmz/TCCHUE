
public class Paciente 
{
	protected String nome, endereco, convenio, CPF, dt_nascimento;
	protected int RG, Telefone;
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getConvenio() {
		return convenio;
	}
	public void setConvenio(String convenio) {
		this.convenio = convenio;
	}
	public int getRG() {
		return RG;
	}
	public void setRG(int rG) {
		RG = rG;
	}
	public String getCPF() {
		return CPF;
	}
	public void setCPF(String cPF) {
		CPF = cPF;
	}
	public String getDt_nascimento() {
		return dt_nascimento;
	}
	public void setDt_nascimento(String dt_nascimento) {
		this.dt_nascimento = dt_nascimento;
	}
	public int getTelefone() {
		return Telefone;
	}
	public void setTelefone(int telefone) {
		Telefone = telefone;
	}
	public String toString() {
		return "## Paciente Cadastrado com Sucesso ##"
				+ "\nNome: " + nome 
				+ "\nEndereço: " + endereco
				+ "\nConvenio: " + convenio 
				+ "\nCPF: " + CPF
				+ "\nData de Nascimento: " + dt_nascimento 
				+ "\nRG: " + RG
				+ "\nTelefone: " + Telefone;
	}
	

}
