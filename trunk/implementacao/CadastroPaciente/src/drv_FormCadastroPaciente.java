
public class drv_FormCadastroPaciente {

	public static void main(String[] args) {
		CadastroPaciente cp = new CadastroPaciente();
		cp.setNome("Andr� Madureira");
		cp.setRG(495164835);
		cp.setCPF("422.076.628-61");
		cp.setConvenio("Unimed");
		cp.setEndereco("Av das Oliveiras, n� 1695, S�o Bernardo");
		cp.setDt_nascimento("01/05/1987");
		cp.setTelefone(998455221);
		System.out.println(cp);
		
	}

}
