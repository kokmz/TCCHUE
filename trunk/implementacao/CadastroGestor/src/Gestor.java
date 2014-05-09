
public class Gestor {
	protected String nome, endereco, convenio, CPF, dt_nascimento;
	protected int RG, Telefone;
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
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

	public String toString() {
		return "## Gestor Cadastrado com Sucesso ##"
				+ "\nNome: " + nome 
				+ "\nCPF: " + CPF
				+ "\nData de Nascimento: " + dt_nascimento 
				+ "\nRG: " + RG;
	}
}
