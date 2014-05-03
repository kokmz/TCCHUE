public class Codigo 
{
	protected int codigo;
	public Codigo() {
		super();
	}
	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public Codigo(int codigo) {
		super();
		this.codigo = codigo;
	}
	
	public String toString() {
		return "Codigo gerado: " + codigo;
	}
	
	
	
}
