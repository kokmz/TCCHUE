package site.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import site.vo.Exame;
import site.vo.Examelab;
import site.vo.Paciente;

public class ExamelabDao extends Dao {
	
	public Examelab getExamelab(int id_tabelaExame)
	{
	    Connection conn = null;
	    
	    try
	    {
	      conn = getConnection();
	      String sql = "SELECT id_tabelaExame, exame_nome, procedimento FROM tabela_exame WHERE id_tabelaExame=?";        

	      PreparedStatement stmt = conn.prepareStatement(sql);
	      stmt.setInt(1, id_tabelaExame);
	      ResultSet result = stmt.executeQuery();

	      if (result.next())
	      {
	        Examelab examelab = new Examelab();	     
	        examelab.setId_tabelaExame(result.getInt("id_tabelaExame"));
	        examelab.setExame_nome(result.getString("exame_nome"));
	        examelab.setProcedimento(result.getString("procedimento"));

	        return examelab;
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
	
	public List<Examelab> getExameslabs()
	{
		Connection conn = null;
		List<Examelab> examelabs = new ArrayList<Examelab>();

		try
		{
			conn = getConnection();

			 String sql = "SELECT id_tabelaExame, exame_nome, procedimento FROM tabela_exame";       

			PreparedStatement stmt = conn.prepareStatement(sql);      
			ResultSet result = stmt.executeQuery();

			while (result.next())
			{
				Examelab exame = new Examelab();
				exame.setId_tabelaExame(result.getInt("id_tabelaExame"));
		        exame.setExame_nome(result.getString("exame_nome"));
		        exame.setProcedimento(result.getString("procedimento"));

				examelabs.add(exame);
			}

			return examelabs;
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

	public List<Examelab> getExamelabs(String letraBusca)
	{
		Connection conn = null;
		List<Examelab> examelabs = new ArrayList<Examelab>();

		try
		{
			conn = getConnection();
			
			String sql = "SELECT id_tabelaExame, exame_nome, procedimento FROM tabela_exame";
			
			if (letraBusca != "") {
				sql += " WHERE exame_nome like '" + letraBusca +"%'"; 
			}

			PreparedStatement stmt = conn.prepareStatement(sql);      
			ResultSet result = stmt.executeQuery();

			while (result.next())
			{
				Examelab examelab = new Examelab();
				examelab.setId_tabelaExame(result.getInt("id_tabelaExame"));
				examelab.setExame_nome(result.getString("exame_nome"));
				examelab.setProcedimento(result.getString("procedimento"));
				
				examelabs.add(examelab);
			}

			return examelabs;
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
	
	public boolean insertExamelab(Examelab examelab)
	{
		Connection conn = null;

		try
		{
			//obtem conexao com o banco de dados
			conn = getConnection();
			conn.setAutoCommit(false);

			//define SQL para inserção
			String sql = "insert into tabela_exame (exame_nome, procedimento) values (?, ?);";        

			//instance Prepared statement especificando os parâmetros do SQL
			PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			stmt.setString(1, examelab.getExame_nome());
			stmt.setString(2, examelab.getProcedimento());

			//executa a operação no banco de dados
			int affectedRows = stmt.executeUpdate();

			//verifica se deu certo. Se sim, obtem a chave gerada 
			if (affectedRows > 0)
			{  
				ResultSet rs = stmt.getGeneratedKeys();
				rs.next();

				//obtem a chave no resultado da inserção
				//1 indica primeira coluna no resultado vindo do banco de dados
				examelab.setId_tabelaExame(rs.getInt(1));

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

	public boolean updateExamelab(Examelab examelab)
	{
		Connection conn = null;

		try
		{
			//obtem conexao com o banco de dados
			conn = getConnection();
			conn.setAutoCommit(false);

			//define SQL para atualização
			String sql = "UPDATE tabela_exame SET exame_nome=?, procedimento=? WHERE id_tabelaExame=?";        

			//instance Prepared statement especificando os parâmetros do SQL
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, examelab.getExame_nome());
			stmt.setString(2, examelab.getProcedimento());
			stmt.setInt(3, examelab.getId_tabelaExame());

			//executa a operação no banco de dados
			int affectedRows = stmt.executeUpdate();

			//verifica se deu certo. Se sim, atualiza a valor 
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

	public boolean deleteExamelab(int id_tabelaExame)
	{
		Connection conn = null;

		try
		{
			//obtem conexao com o banco de dados
			conn = getConnection();

			//define SQL para atualização
						
			String sql= "DELETE FROM tabela_exame WHERE id_tabelaExame=? ";
		     

			//instance Prepared statement especificando os parâmetros do SQL
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, id_tabelaExame);

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