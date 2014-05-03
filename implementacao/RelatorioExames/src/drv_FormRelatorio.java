
import java.util.ArrayList;
import java.util.Arrays;

public class drv_FormRelatorio 
{
	public static void main(String[] args) {
		
		RelatorioExames re = new RelatorioExames();
		re.exame.add("\n- Exame de Sangue - André Madureira");
		re.exame.add("\n- Exame de Urina - André Madureira");
		re.exame.add("\n- Exame de Fezes - André Madureira");
		re.exame.add("\n- Exame de Glicemia - Pedro Gimenes");
		re.exame.add("\n- Hemograma - Pedro Gimenes");
		re.exame.add("\n- Sorologia (Hepatite B, Sífilis e HIV) - Vitor Silva");
		re.exame.add("\n- Triglicérides - Barbara Soares");
		re.exame.add("\n- Tipagem Sanguínea - Gabriela Souza");
		re.setPeriodo("Diário");
		System.out.println(re);
		

	}

}
