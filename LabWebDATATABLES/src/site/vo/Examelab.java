package site.vo;

public class Examelab {
	int id_tabelaExame;
	String exame_nome, procedimento;
	
	public Examelab() {
		super();
	}

	public int getId_tabelaExame() {
		return id_tabelaExame;
	}

	public void setId_tabelaExame(int id_tabelaExame) {
		this.id_tabelaExame = id_tabelaExame;
	}

	public String getExame_nome() {
		return exame_nome;
	}

	public void setExame_nome(String exame_nome) {
		this.exame_nome = exame_nome;
	}

	public String getProcedimento() {
		return procedimento;
	}

	public void setProcedimento(String procedimento) {
		this.procedimento = procedimento;
	}

	
}
