package site.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import site.vo.Duvida;


public class DuvidaDao extends Dao {
	
	public Duvida getDuvida(int idDuvida)
	{
	    Connection conn = null;
	    
	    try
	    {
	      conn = getConnection();

	      String sql = "SELECT id_duvida, nome, email, mensagem, status FROM duvidas where id_duvida = ?";        

	      PreparedStatement stmt = conn.prepareStatement(sql);
	      stmt.setInt(1, idDuvida);
	      ResultSet result = stmt.executeQuery();

	      if (result.next())
	      {
	        Duvida duvida = new Duvida();	     
	        duvida.setId_duvida(result.getInt("id_duvida"));
	        duvida.setNome(result.getString("nome"));
	        duvida.setEmail(result.getString("email"));
	        duvida.setMensagem(result.getString("mensagem"));
	        duvida.setStatus(result.getString("status"));
			
	        return duvida;
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

	public List<Duvida> getDuvidas()
	{
		Connection conn = null;
		List<Duvida> duvidas = new ArrayList<Duvida>();

		try
		{
			conn = getConnection();

			String sql = "SELECT id_duvida, nome, email, mensagem, status FROM duvidas";         

			PreparedStatement stmt = conn.prepareStatement(sql);      
			ResultSet result = stmt.executeQuery();

			while (result.next())
			{
				Duvida duvida = new Duvida();
				duvida.setId_duvida(result.getInt("id_duvida"));
				duvida.setNome(result.getString("nome"));
				duvida.setEmail(result.getString("email"));
				duvida.setMensagem(result.getString("mensagem"));
				duvida.setStatus(result.getString("status"));
				
				duvidas.add(duvida);
			}

			return duvidas;
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
	
public boolean insertDuvida(Duvida duvida)
{
	Connection conn = null;

	try
	{
		//obtem conexao com o banco de dados
		conn = getConnection();
		conn.setAutoCommit(false);

		//define SQL para inserção
		String sql = "insert into duvidas (nome, email, mensagem, status) values (?, ?, ?, 'Pendente')";
			
				       

		//instance Prepared statement especificando os parâmetros do SQL
		PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1, duvida.getNome());
		stmt.setString(2, duvida.getEmail());
		stmt.setString(3, duvida.getMensagem());

		//executa a operação no banco de dados
		int affectedRows = stmt.executeUpdate();

		//verifica se deu certo. Se sim, obtem a chave id_aluno gerada 
		if (affectedRows > 0)
		{  
			ResultSet rs = stmt.getGeneratedKeys();
			rs.next();

			//obtem a chave id_aluno no resultado da inserção
			//1 indica primeira coluna no resultado vindo do banco de dados
			duvida.setId_duvida(rs.getInt(1));

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
				SendMail send = new SendMail();
				send.sendMail("pepsivini@gmail.com", "danilo.missio@hotmail.com", "Teste", "Come meu cu");
			}
			catch(Exception closeEx)
			{
				//do nothing
			}
		}
	}
}

public boolean updateDuvida(Duvida duvida)
{
	Connection conn = null;

	try
	{
		//obtem conexao com o banco de dados
		conn = getConnection();
		conn.setAutoCommit(false);

		//define SQL para atualização
		String sql = "UPDATE duvidas SET nome=?, email=?, mensagem=? status='Respondido' WHERE id_duvida=?";        

		//instance Prepared statement especificando os parâmetros do SQL
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, duvida.getNome());
		stmt.setString(2, duvida.getEmail());
		stmt.setString(3, duvida.getMensagem());
		stmt.setString(4, duvida.getStatus());
		stmt.setInt(5, duvida.getId_duvida());

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


}