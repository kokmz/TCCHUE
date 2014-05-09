
public class CtlGerador
{	
	Stub_BD banco = new Stub_BD();
	
	void enviaInformacoes(Codigo c)
	{
		banco.salvaInformacoes(c);
	}

}
