
import java.util.ArrayList;
import java.util.Arrays;

public class drv_FormRelatorio 
{
	public static void main(String[] args) {
		
		RelatorioExames re = new RelatorioExames();
		re.exame.add("\n- Exame de Sangue - Andr� Madureira");
		re.exame.add("\n- Exame de Urina - Andr� Madureira");
		re.exame.add("\n- Exame de Fezes - Andr� Madureira");
		re.exame.add("\n- Exame de Glicemia - Pedro Gimenes");
		re.exame.add("\n- Hemograma - Pedro Gimenes");
		re.exame.add("\n- Sorologia (Hepatite B, S�filis e HIV) - Vitor Silva");
		re.exame.add("\n- Triglic�rides - Barbara Soares");
		re.exame.add("\n- Tipagem Sangu�nea - Gabriela Souza");
		re.setPeriodo("Di�rio");
		System.out.println(re);
		

	}

}
