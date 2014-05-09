
public class CtlCadastro 
{
	Stub_BD banco = new Stub_BD();
	
	void enviaInformacoes(Paciente p)
	{
		banco.salvaInformacoes(p);
	}

}
