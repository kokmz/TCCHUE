
public class CtlVerificaCodigo
{
	Stub_BD banco = new Stub_BD();
	
	void enviaCodigo(Codigo c)
	{
		banco.buscaInformacao(c);
	}

}
