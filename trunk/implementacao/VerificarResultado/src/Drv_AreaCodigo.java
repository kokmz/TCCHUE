
public class Drv_AreaCodigo 
{

	public static void main(String[] args)
	{
		
		Codigo cd = new Codigo ();
		cd.setCodigo(204521642);
		cd.setStatus("Em An�lise");
		CtlVerificaCodigo ctlv = new CtlVerificaCodigo();
		ctlv.enviaCodigo(cd);
		
	}

}
