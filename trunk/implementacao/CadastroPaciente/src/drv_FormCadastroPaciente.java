
public class Drv_FormCadastroPaciente {

	public static void main(String[] args) {
		Paciente p = new Paciente();
		p.setNome("André Madureira");
		p.setRG(495164835);
		p.setCPF("422.076.628-61");
		p.setConvenio("Unimed");
		p.setEndereco("Av das Oliveiras, nº 1695, São Bernardo");
		p.setDt_nascimento("01/05/1987");
		p.setTelefone(998455221);
		CtlCadastro Ctl = new CtlCadastro();
		Ctl.enviaInformacoes(p);
	}

}
