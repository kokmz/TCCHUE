package site.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import site.vo.Exame;
import site.vo.Examelab;
import site.vo.FluxoExames;
import site.vo.Paciente;
import site.vo.Status;

public class ConsultaDao extends Dao{
	
	public List<FluxoExames> buscaExame(String data_inicio, String data_fim)
	{
		Connection conn = null;
		List<FluxoExames> fluxo = new ArrayList<FluxoExames>();

		try
		{
			conn = getConnection();

			String sql = "select te.exame_nome, p.nome_paciente, DATE_FORMAT(e.data_exame, '%d/%m/%Y') data_exame, se.status_nome "
					+ "from exame e, tabela_exame te, paciente p, status_exame se  "
					+ "where te.id_tabelaExame = e.id_tabelaExame "
					+ "and p.id_paciente = e.id_paciente "
					+ "and e.id_status = se.id_Status "
					+ "and DATE_FORMAT(e.data_exame, '%d/%m/%Y') between '" + data_inicio + "' and '"+ data_fim + "'";        

			PreparedStatement stmt = conn.prepareStatement(sql);      
			ResultSet result = stmt.executeQuery();

			while (result.next())
			{
				FluxoExames FluxoExamesVO = new FluxoExames(); 
				
				
				Exame data_exame = new Exame();
				data_exame.setData_exame(result.getString("data_exame"));

				FluxoExamesVO.setExame(data_exame);
				
				Paciente paciente = new Paciente();
				paciente.setNome_paciente(result.getString("nome_paciente"));
				FluxoExamesVO.setPaciente(paciente);
			
				Examelab nomeExame = new Examelab();
				nomeExame.setExame_nome(result.getString("exame_nome"));
				
				FluxoExamesVO.setExamelab(nomeExame);
				
				Status stats = new Status();
				stats.setStatus_nome(result.getString("status_nome"));
				FluxoExamesVO.setStatus(stats);
				
				fluxo.add(FluxoExamesVO);
			}

			return fluxo;
		}
		catch (Exception ex)
		{
			ex.printStackTrace();
			return null;
		}
		finally
		{
			if (conn != null)
			{
				try
				{
					conn.close();
				}
				catch(Exception closeEx)
				{
					//do nothing
				}
			}
		}
	}
}
		
	