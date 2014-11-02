package site.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import site.vo.Examelab;

public class ExamelabDao extends Dao {
	
	public Examelab getExamelab(int idExamelab)
	{
	    Connection conn = null;
	    
	    try
	    {
	      conn = getConnection();
	      String sql = "SELECT id_tabelaExame, exame_nome, procedimento FROM tabela_exame WHERE exame_nome  like '&id' || '%'";        

	      PreparedStatement stmt = conn.prepareStatement(sql);
	      stmt.setInt(1, idExamelab);
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

	public List<Examelab> getExamelabs()
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
}