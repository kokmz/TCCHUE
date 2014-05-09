
public class CtlLog 
{
	Stub_BD banco = new Stub_BD();
	
	void enviaInformacao(Login g)
	{
		banco.autenticaLogin(g);
	}

}
