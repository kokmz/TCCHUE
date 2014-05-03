
public class GeraCodigo {
	
	protected int codigo;
	
	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	
	public String toString() {
		return "Codigo de verificação gerado: " + codigo;
	}

}
