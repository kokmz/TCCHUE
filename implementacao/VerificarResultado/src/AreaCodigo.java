
public class AreaCodigo
{
	
	protected int codigo;
	protected String status;
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public AreaCodigo(int codigo, String status) {
		super();
		this.codigo = codigo;
		this.status = status;
	}
	public AreaCodigo() {
		super();
	}
	
	public String toString() {
		return "Codigo Utilizado: " + codigo + "\nStatus do Exame: " + status;
	}
	
}
