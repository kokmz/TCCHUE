
public class Drv_TelaLogin {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Login lg = new Login();
		lg.setLogin("JorgeSilva");
		lg.setSenha("abc123");
		CtlLog ctlg = new CtlLog();
		ctlg.enviaInformacao(lg);

	}

}
