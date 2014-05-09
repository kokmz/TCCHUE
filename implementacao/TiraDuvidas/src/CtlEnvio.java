
public class CtlEnvio
{	
	Stub_EmailClinica email = new Stub_EmailClinica();
	
	void enviaFormulario(TiraDuvidas td)
	{
		email.enviaDuvidas(td);
	}

}
