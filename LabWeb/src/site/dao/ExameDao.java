package site.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import site.vo.Exame;
import site.vo.Examelab;
import site.vo.Paciente;
import site.vo.Status;

import com.mysql.jdbc.Statement;

public class ExameDao extends Dao {
	
	public List<Exame> getExamePaciente(int idPaciente)
	{
		Connection conn = null;
		List<Exame> exames = new ArrayList<Exame>();

		try
		{
			conn = getConnection();

			String sql = "select e.id_exame, te.exame_nome, DATE_FORMAT(e.data_exame, '%d/%m/%Y') data_exame "
					+ "FROM exame e, tabela_Exame te, paciente p "
					+ "where te.id_tabelaExame = e.id_tabelaExame "
					+ "and p.id_paciente = e.id_paciente "
					+ "and p.id_paciente = ?";        

			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, idPaciente);
			ResultSet result = stmt.executeQuery();
			

			while (result.next())
			{							
				
				Exame exame = new Exame();
				exame.setId(result.getInt("id_exame"));
				exame.setData_exame(result.getString("data_exame"));
				
				Examelab nomeExame = new Examelab();
				nomeExame.setExame_nome(result.getString("exame_nome"));
				exame.setExamelab(nomeExame);
				
					
				exames.add(exame);
				
			}

			return exames;
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
	
	
	public List<Exame> getExames()
	{
		Connection conn = null;
		List<Exame> exames = new ArrayList<Exame>();

		try
		{
			conn = getConnection();

			String sql = "select e.id_exame, te.exame_nome, p.nome_paciente, DATE_FORMAT(e.data_exame, '%d/%m/%Y') data_exame, se.status_nome "
					+ "FROM exame e, tabela_Exame te, paciente p, status_exame se  "
					+ "where te.id_tabelaExame = e.id_tabelaExame "
					+ "and p.id_paciente = e.id_paciente "
					+ "and e.id_status = se.id_Status ";        

			PreparedStatement stmt = conn.prepareStatement(sql);      
			ResultSet result = stmt.executeQuery();

			while (result.next())
			{							
				
				Exame exame = new Exame();
				exame.setId(result.getInt("id_exame"));
				exame.setData_exame(result.getString("data_exame"));
				
				Examelab nomeExame = new Examelab();
				nomeExame.setExame_nome(result.getString("exame_nome"));
				exame.setExamelab(nomeExame);
				
				Paciente paciente = new Paciente();
				paciente.setNome_paciente(result.getString("nome_paciente"));
				exame.setPaciente(paciente);
								
				Status status = new Status();
				status.setStatus_nome(result.getString("status_nome"));
				exame.setStatus(status);
				
				exames.add(exame);
				
			}

			return exames;
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
	
	public Exame getExame(int idExame)
	{
		Connection conn = null;
		
		try{			
		conn = getConnection();
		String sql = "SELECT exame.id_exame, exame.id_tabelaExame, exame.id_paciente, exame.descricao, exame.id_status, DATE_FORMAT(exame.data_exame, '%d/%m/%Y') data_exame, tabela_exame.exame_nome, status_exame.status_nome, paciente.nome_paciente"
				+ "   FROM exame, tabela_exame, status_exame, paciente "
				+ "WHERE exame.id_tabelaExame = tabela_exame.id_tabelaExame "
				+ "AND exame.id_status = status_exame.id_status "
				+ "AND exame.id_paciente = paciente.id_paciente "
				+ "AND id_exame=?";
		
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, idExame);
		ResultSet result = stmt.executeQuery();
		
		if(result.next())
		{
			Exame exame = new Exame();
			
			exame.setId(result.getInt("id_exame"));
			exame.setId_tabelaExame(result.getInt("id_tabelaExame"));
			exame.setId_paciente(result.getInt("id_paciente"));
			exame.setDescricao(result.getString("descricao").replaceAll("\n", "<br/>"));
			exame.setData_exame(result.getString("data_exame"));
			exame.setId_status(result.getInt("id_status"));
			
			Examelab nomeExame = new Examelab();
			nomeExame.setExame_nome(result.getString("exame_nome"));
			exame.setExamelab(nomeExame);
			
			Paciente paciente = new Paciente();
			paciente.setNome_paciente(result.getString("nome_paciente"));
			exame.setPaciente(paciente);
							
			Status status = new Status();
			status.setStatus_nome(result.getString("status_nome"));
			exame.setStatus(status);
			
			return exame;
		}
		else
	      {
	        return null;
	      }
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

	
public List<Exame> getResultado(int cod_verif)
	{
		Connection conn = null;
		List<Exame> resultado = new ArrayList<Exame>();
		
		try
		{
			conn = getConnection();
						
			String sql = "SELECT exame.id_exame, exame.id_paciente, exame.id_tabelaExame, DATE_FORMAT(exame.data_exame, '%d/%m/%Y') data_exame, tabela_exame.exame_nome, status_exame.status_nome "
					+ "FROM paciente, tabela_exame, status_exame, exame "
					+ "WHERE exame.id_paciente = paciente.id_paciente "
					+ "AND exame.id_tabelaExame = tabela_exame.id_tabelaExame "
					+ "AND exame.id_status = status_exame.id_status "
					+ "AND paciente.cod_verif ="+cod_verif;

			PreparedStatement stmt = conn.prepareStatement(sql);      
			ResultSet result = stmt.executeQuery();

			while (result.next())
			{
				Exame resultadoExame = new Exame();
				resultadoExame.setId(result.getInt("id_exame"));
				resultadoExame.setId_paciente(result.getInt("id_paciente"));
				resultadoExame.setId_tabelaExame(result.getInt("id_tabelaExame"));
				resultadoExame.setData_exame(result.getString("data_exame"));
				
				Examelab nomeExame = new Examelab();
				nomeExame.setExame_nome(result.getString("exame_nome"));
				resultadoExame.setExamelab(nomeExame);
				
				
				Status stats = new Status();
				stats.setStatus_nome(result.getString("status_nome"));
				resultadoExame.setStatus(stats);
				
				resultado.add(resultadoExame);
			}

			return resultado;
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
	

public List<Exame> getHistorico(int idPaciente)
{
	Connection conn = null;
	List<Exame> resultado = new ArrayList<Exame>();
	
	try
	{
		conn = getConnection();
					
		String sql = "SELECT exame.id_exame, exame.id_paciente, exame.id_tabelaExame, DATE_FORMAT(exame.data_exame, '%d/%m/%Y') data_exame, tabela_exame.exame_nome, status_exame.status_nome "
				+ "FROM paciente, tabela_exame, status_exame, exame "
				+ "WHERE exame.id_paciente = paciente.id_paciente "
				+ "AND exame.id_tabelaExame = tabela_exame.id_tabelaExame "
				+ "AND exame.id_status = status_exame.id_status "
				+ "AND paciente.id_paciente=?";

		PreparedStatement stmt = conn.prepareStatement(sql);    
		stmt.setInt(1, idPaciente);
		ResultSet result = stmt.executeQuery();

		while (result.next())
		{
			Exame resultadoExame = new Exame();
			resultadoExame.setId(result.getInt("id_exame"));
			resultadoExame.setId_paciente(result.getInt("id_paciente"));
			resultadoExame.setId_tabelaExame(result.getInt("id_tabelaExame"));
			resultadoExame.setData_exame(result.getString("data_exame"));
			
			Examelab nomeExame = new Examelab();
			nomeExame.setExame_nome(result.getString("exame_nome"));
			resultadoExame.setExamelab(nomeExame);
						
			Status stats = new Status();
			stats.setStatus_nome(result.getString("status_nome"));
			resultadoExame.setStatus(stats);
			
			resultado.add(resultadoExame);
		}

		return resultado;
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


public List<Status> getStatus()
	{
		Connection conn = null;
		List<Status> status = new ArrayList<Status>();

		try
		{
			conn = getConnection();

			String sql = "SELECT id_status, status_nome FROM status_exame";        

			PreparedStatement stmt = conn.prepareStatement(sql);      
			ResultSet result = stmt.executeQuery();

			while (result.next())
			{
				Status statusVO = new Status();
				statusVO.setId_status(result.getInt("id_status"));
				statusVO.setStatus_nome(result.getString("status_nome"));
				
				status.add(statusVO);
			}

			return status;
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

public boolean insertExame(Exame exame)
{
	Connection conn = null;

	try
	{
		//obtem conexao com o banco de dados
		conn = getConnection();
		conn.setAutoCommit(false);

		//define SQL para inserção
		String sql = "insert into exame (id_paciente, id_tabelaExame, descricao, id_status, data_exame) values (?, ?, ?, ?, DATE_FORMAT(STR_TO_DATE(?, '%d/%m/%Y'), '%Y-%m-%d'));";
			      

		//instance Prepared statement especificando os parâmetros do SQL
		PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		stmt.setInt(1, exame.getId_paciente());
		stmt.setInt(2, exame.getId_tabelaExame());		
		stmt.setString(3, exame.getDescricao());
		stmt.setInt(4, exame.getId_status());
		stmt.setString(5, exame.getData_exame());

		//executa a operação no banco de dados
		int affectedRows = stmt.executeUpdate();

		//verifica se deu certo. Se sim, obtem a chave id_aluno gerada 
		if (affectedRows > 0)
		{  
			ResultSet rs = stmt.getGeneratedKeys();
			rs.next();

			//obtem a chave id_aluno no resultado da inserção
			//1 indica primeira coluna no resultado vindo do banco de dados
			exame.setId(rs.getInt(1));

		}
		else
		{
			//cancela as modificações no banco de dados
			conn.rollback();
			return false;
		}
			//confirma as modificações no banco de dados
			conn.commit();        
			return true;    
	
	}  
	catch (Exception ex)
	{
		ex.printStackTrace();
		return false;
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

public boolean updateExame(Exame exame)
{
	Connection conn = null;

	try
	{
		//obtem conexao com o banco de dados
		conn = getConnection();
		conn.setAutoCommit(false);

		//define SQL para atualização
		String sql = "UPDATE exame SET id_tabelaExame=?, id_paciente=?, descricao=?, id_status=?, data_exame=DATE_FORMAT(STR_TO_DATE(?, '%d/%m/%Y'), '%Y-%m-%d') WHERE id_exame=?";        

		//instance Prepared statement especificando os parâmetros do SQL
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, exame.getId_tabelaExame());
		stmt.setInt(2, exame.getId_paciente());
		stmt.setString(3, exame.getDescricao());
		stmt.setInt(4, exame.getId_status());
		stmt.setString(5, exame.getData_exame());
		stmt.setInt(6, exame.getId());

		//executa a operação no banco de dados
		int affectedRows = stmt.executeUpdate();

		//verifica se deu certo. Se sim, atualiza a nota 
		if (affectedRows > 0)
		{  
				//confirma as modificações no banco de dados
				conn.commit();        
				return true;
			}
			else
			{
				//cancela as modificações no banco de dados
				conn.rollback();
				return false;
			}				      

	}
	catch (Exception ex)
	{
		ex.printStackTrace();
		return false;
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

public boolean deleteExame(int idExame)
{
	Connection conn = null;

	try
	{
		//obtem conexao com o banco de dados
		conn = getConnection();

		//define SQL para atualização
					
		String sql= "DELETE FROM exame WHERE id_exame=? ";
	     

		//instance Prepared statement especificando os parâmetros do SQL
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, idExame);

		//executa a operação no banco de dados
		return stmt.executeUpdate() > 0;
	}
	catch (Exception ex)
	{
		ex.printStackTrace();
		return false;
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