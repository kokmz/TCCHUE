
public class Drv_FormCadastroGestor {

	public static void main(String[] args) {
		Gestor g = new Gestor();
		g.setNome("João Vitor");
		g.setRG(414988978);
		g.setCPF("399.989.348-69");
		g.setDt_nascimento("31/12/1980");
		CtlCadastro Ctl = new CtlCadastro();
		Ctl.enviaInformacoes(g);

	}

}
