
public class CtlRelatorio
{
	Stub_BD banco = new Stub_BD();
	
	void solicitaRelatorio(Relatorio r)
	{
		banco.consultaPeriodo(r);
	}
}
