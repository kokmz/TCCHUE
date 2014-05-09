
public class Drv_FormDuvida {

	public static void main(String[] args) 
	{
		TiraDuvidas td = new TiraDuvidas();
		td.setNome("João Vitor");
		td.setEmail("joaovitor@hotmail.com");
		td.setDuvida("Bom dia,\nGostaria de saber qual o procedimento que devo seguir para realizar o exame de sangue.\n Att");
		CtlEnvio ctle = new CtlEnvio();
		ctle.enviaFormulario(td);
	}

}
