import java.util.Random;

public class Drv_GeradorCodigo
{
	public static void main(String[] args) 
	{
		Codigo cd = new Codigo ();
	    Random gerador = new Random();
	    cd.setCodigo(gerador.nextInt(99999999));
	    CtlGerador ctlg = new CtlGerador();
	    ctlg.enviaInformacoes(cd);
	}

}
