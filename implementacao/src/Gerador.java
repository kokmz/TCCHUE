import java.util.Random;

public class Gerador
{
	public static void main(String[] args) 
	{
		Codigo cd = new Codigo ();
	    Random gerador = new Random();
	    cd.setCodigo(gerador.nextInt(99999999));
	    System.out.println(cd);
	}

}
