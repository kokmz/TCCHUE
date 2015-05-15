package site.vo;


public class Exame {
	int id, id_paciente, id_tabelaExame, id_status;
	Paciente paciente;
	String descricao, nome_medico, crm_medico;
	Status status;
	Examelab examelab;
	String data_exame;
	
	
	public String getNome_medico() {
		return nome_medico;
	}
	public void setNome_medico(String nome_medico) {
		this.nome_medico = nome_medico;
	}
	public String getCrm_medico() {
		return crm_medico;
	}
	public void setCrm_medico(String crm_medico) {
		this.crm_medico = crm_medico;
	}
	public Paciente getPaciente() {
		return paciente;
	}
	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public int getId_paciente() {
		return id_paciente;
	}
	public void setId_paciente(int id_paciente) {
		this.id_paciente = id_paciente;
	}
	public int getId_status() {
		return id_status;
	}
	public void setId_status(int id_status) {
		this.id_status = id_status;
	}
	public Examelab getExamelab() {
		return examelab;
	}
	public void setExamelab(Examelab examelab) {
		this.examelab = examelab;
	}
	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}
	public int getId_tabelaExame() {
		return id_tabelaExame;
	}
	public void setId_tabelaExame(int id_tabelaExame) {
		this.id_tabelaExame = id_tabelaExame;
	}	
	
	public String getData_exame() {
		return data_exame;
	}
	public void setData_exame(String data_exame) {
		this.data_exame = data_exame;
	}

}
