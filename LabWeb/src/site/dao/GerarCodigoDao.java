package site.dao;

import java.util.Random;

import site.vo.Paciente;

public class GerarCodigoDao extends Dao {
	
	public void createCodigo(int cod_verif){
		
		Paciente paciente = new Paciente();
		Random gerador = new Random();
	    paciente.setCod_verif(gerador.nextInt(999999999));

	}
}
