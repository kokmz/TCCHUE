
import java.util.Random;

public class drv_GeradorCodigo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

			GeraCodigo cd = new GeraCodigo ();
		    Random gerador = new Random();
		    cd.setCodigo(gerador.nextInt(99999999));
		    System.out.println(cd);
	
	}

}
