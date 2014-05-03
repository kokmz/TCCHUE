import java.util.ArrayList;


public class RelatorioExames 
{
	ArrayList<String> exame = new ArrayList<String> ();
	protected String periodo;
	protected ArrayList<String> getExame() {
		return exame;
	}
	public void setExame(ArrayList<String> exame) {
		this.exame = exame;
	}
	

	public String getPeriodo() {
		return periodo;
	}
	public void setPeriodo(String periodo) {
		this.periodo = periodo;
	}
	public String toString() {
		return "## Relatorio de Exames ##\n"+ "\nPeriodo Escolhido: " +periodo + exame + "\n\nTotal de exames: " + exame.size();
	}

}
