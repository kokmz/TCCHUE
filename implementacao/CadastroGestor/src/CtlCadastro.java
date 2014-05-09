
public class CtlCadastro 
{
	Stub_BD banco = new Stub_BD();
	
	void enviaInformacoes(Gestor novo)
	{
		banco.salvaInformacoes(novo);
	}

}
