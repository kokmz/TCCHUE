package site.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import site.vo.Estado;
import site.vo.Logradouro;
import site.vo.Paciente;


public class PacienteDao extends Dao {

	public Paciente getPaciente(int idPaciente)
	{
		Connection conn = null;
		
		try
		{
			conn = getConnection();

			String sql = "SELECT id_paciente, cod_verif, nome_paciente, rg_paciente, cpf_paciente, datanasc_paciente, endereco_rua, endereco_num, endereco_bairro, cep, telefone_paciente, email_paciente, convenio_paciente FROM paciente WHERE id_paciente = ?";        

			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, idPaciente);
			ResultSet result = stmt.executeQuery();

			if (result.next())
			{
				Paciente paciente = new Paciente();
				paciente.setId(result.getInt("id_paciente"));
				paciente.setCod_verif(result.getInt("cod_verif"));
				paciente.setNome_paciente(result.getString("nome_paciente"));
				paciente.setRg_paciente(result.getString("rg_paciente"));
				paciente.setCpf_paciente(result.getString("cpf_paciente"));
				paciente.setDatanasc_paciente(result.getString("datanasc_paciente"));
				paciente.setEndereco_rua(result.getString("endereco_rua"));
				paciente.setEndereco_num(result.getInt("endereco_num"));
				paciente.setEndereco_bairro(result.getString("endereco_bairro"));
				paciente.setCep(result.getString("cep"));
				paciente.setTelefone_paciente(result.getString("telefone_paciente"));
				paciente.setEmail_paciente(result.getString("email_paciente"));
				paciente.setConvenio_paciente(result.getString("convenio_paciente"));

				return paciente;
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
	
	public List<Paciente> getPacientes()
	{
		Connection conn = null;
		List<Paciente> pacientes = new ArrayList<Paciente>();

		try
		{
			conn = getConnection();

			String sql = "SELECT p.id_paciente, p.cod_verif, p.nome_paciente, p.rg_paciente, p.cpf_paciente, p.datanasc_paciente, p.cidade_endereco, p.numero_endereco, p.complemento_endereco, p.telefone_paciente, p.email_paciente, p.convenio_paciente, l.id_logradouro, l.cep, l.endereco, l.bairro, e.id_estado, e.sigla_estado FROM paciente p, logradouro l, estado e";        

			PreparedStatement stmt = conn.prepareStatement(sql);      
			ResultSet result = stmt.executeQuery();

			while (result.next())
			{
				Paciente paciente = new Paciente();
				paciente.setId(result.getInt("id_paciente"));
				paciente.setCod_verif(result.getInt("cod_verif"));
				paciente.setNome_paciente(result.getString("nome_paciente"));
				paciente.setRg_paciente(result.getString("rg_paciente"));
				paciente.setCpf_paciente(result.getString("cpf_paciente"));
				paciente.setDatanasc_paciente(result.getString("datanasc_paciente"));
				paciente.setTelefone_paciente(result.getString("telefone_paciente"));
				paciente.setEmail_paciente(result.getString("email_paciente"));
				paciente.setConvenio_paciente(result.getString("convenio_paciente"));
				paciente.setEndereco_cidade(result.getString("cidade_endereco"));
				paciente.setNumero_endereco(result.getInt("numero_endereco"));
				paciente.setLogradouro_complemento(result.getString("complemento_endereco"));
				
				Logradouro logradouro = new Logradouro();
				logradouro.setId_logradouro(result.getInt("id_logradouro"));
				logradouro.setCep(result.getString("cep"));
				logradouro.setEndereco(result.getString("endereco"));
				logradouro.setBairro(result.getString("bairro"));
				paciente.setLogradouro(logradouro);
				
				Estado estado = new Estado();
				estado.setId_estado(result.getInt("id_estado"));
				estado.setSigla_estado(result.getString("sigla_estado"));
				paciente.setEstado(estado);

				pacientes.add(paciente);
			}

			return pacientes;
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

	public boolean insertPaciente(Paciente paciente)
	{
		Connection conn = null;

		try
		{
			//obtem conexao com o banco de dados
			conn = getConnection();
			conn.setAutoCommit(false);

			//define SQL para inserção
			String sql = "insert into paciente (cod_verif, nome_paciente, rg_paciente, cpf_paciente, datanasc_paciente, endereco_rua, endereco_num, endereco_bairro, cep, telefone_paciente, email_paciente, convenio_paciente) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";        

			//instance Prepared statement especificando os parâmetros do SQL
			PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			stmt.setInt(1, paciente.getCod_verif());
			stmt.setString(2, paciente.getNome_paciente());
			stmt.setString(3, paciente.getRg_paciente());
			stmt.setString(4, paciente.getCpf_paciente());
			stmt.setString(5, paciente.getDatanasc_paciente());
			stmt.setString(6, paciente.getEndereco_rua());
			stmt.setInt(7, paciente.getEndereco_num());
			stmt.setString(8, paciente.getEndereco_bairro());
			stmt.setString(9, paciente.getCep());
			stmt.setString(10, paciente.getTelefone_paciente());
			stmt.setString(11, paciente.getEmail_paciente());
			stmt.setString(12, paciente.getConvenio_paciente());

			//executa a operação no banco de dados
			int affectedRows = stmt.executeUpdate();

			//verifica se deu certo. Se sim, obtem a chave gerada 
			if (affectedRows > 0)
			{  
				ResultSet rs = stmt.getGeneratedKeys();
				rs.next();

				//obtem a chave no resultado da inserção
				//1 indica primeira coluna no resultado vindo do banco de dados
				paciente.setId(rs.getInt(1));

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

	public boolean updatePaciente(Paciente paciente)
	{
		Connection conn = null;

		try
		{
			//obtem conexao com o banco de dados
			conn = getConnection();
			conn.setAutoCommit(false);

			//define SQL para atualização
			String sql = "UPDATE paciente SET cod_verif=?, nome_paciente=?, rg_paciente=?, cpf_paciente=?, datanasc_paciente=?, endereco_rua=?, endereco_num=?, endereco_bairro=?, cep=?, telefone_paciente=?, email_paciente=?, convenio_paciente=? WHERE id_paciente=?";        

			//instance Prepared statement especificando os parâmetros do SQL
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, paciente.getCod_verif());
			stmt.setString(2, paciente.getNome_paciente());
			stmt.setString(3, paciente.getRg_paciente());
			stmt.setString(4, paciente.getCpf_paciente());
			stmt.setString(5, paciente.getDatanasc_paciente());
			stmt.setString(6, paciente.getEndereco_rua());
			stmt.setInt(7, paciente.getEndereco_num());
			stmt.setString(8, paciente.getEndereco_bairro());
			stmt.setString(9, paciente.getCep());
			stmt.setString(10, paciente.getTelefone_paciente());
			stmt.setString(11, paciente.getEmail_paciente());
			stmt.setString(12, paciente.getConvenio_paciente());
			stmt.setInt(13, paciente.getId());

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

	public boolean deletePaciente(int idPaciente)
	{
		Connection conn = null;

		try
		{
			//obtem conexao com o banco de dados
			conn = getConnection();

			//define SQL para atualização
						
			String sql= "DELETE FROM paciente WHERE id_paciente=? ";
		     

			//instance Prepared statement especificando os parâmetros do SQL
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, idPaciente);

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
