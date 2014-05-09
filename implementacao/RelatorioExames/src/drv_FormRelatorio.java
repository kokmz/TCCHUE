
public class Drv_FormRelatorio 
{
	public static void main(String[] args) {
		
		Relatorio re = new Relatorio();
		re.exame.add("\n- Exame de Sangue - André Madureira");
		re.exame.add("\n- Exame de Urina - André Madureira");
		re.exame.add("\n- Exame de Fezes - André Madureira");
		re.exame.add("\n- Exame de Glicemia - Pedro Gimenes");
		re.exame.add("\n- Hemograma - Pedro Gimenes");
		re.exame.add("\n- Sorologia (Hepatite B, Sífilis e HIV) - Vitor Silva");
		re.exame.add("\n- Triglicérides - Barbara Soares");
		re.exame.add("\n- Tipagem Sanguínea - Gabriela Souza");
		re.setPeriodo("Diário");
		CtlRelatorio ctlr = new CtlRelatorio();
		ctlr.solicitaRelatorio(re);
		

	}

}
