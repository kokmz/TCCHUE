package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.PacienteDao;
import site.vo.Paciente;


/**
 * Servlet implementation class PacienteServlet
 */
@WebServlet("/PacienteServlet")
public class PacienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PacienteServlet() {
		super();
	} 

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {    
			String idPaciente = request.getParameter("idPaciente");
			Integer cod_verif = Integer.parseInt(request.getParameter("cod_verif"));
			String nome_paciente = request.getParameter("nome_paciente");
			String rg_paciente = request.getParameter("rg_paciente");
			String cpf_paciente = request.getParameter("cpf_paciente");
			String datanasc_paciente =request.getParameter("datanasc_paciente");
			String cidade_paciente = request.getParameter("cidade");
			int estado = Integer.parseInt(request.getParameter("estado"));
			int cep = Integer.parseInt(request.getParameter("cepId"));
			int endereco_num = Integer.parseInt(request.getParameter("endereco_num"));
			String endereco_complemento = request.getParameter("endereco_complemento");
			String telefone_paciente = request.getParameter("telefone_paciente");
			String email_paciente = request.getParameter("email_paciente");
			String convenio_paciente = request.getParameter("convenio_paciente");

				if (cod_verif == 0 || nome_paciente.isEmpty() || rg_paciente.isEmpty() || cpf_paciente.isEmpty() || 
					datanasc_paciente.isEmpty() || cidade_paciente.isEmpty() || endereco_num == 0 || 
					endereco_complemento.isEmpty() ||estado == 0 || cep == 0 || telefone_paciente.isEmpty() ||
					email_paciente.isEmpty() || convenio_paciente.isEmpty())
				{
					request.setAttribute("mensagemErro", "campos vazios!");
					getServletContext().getRequestDispatcher("/TelaPacienteServlet").forward(request, response);          
				}
				else
				{
					Paciente novoPaciente = new Paciente();
					
					novoPaciente.setCod_verif(cod_verif);
					novoPaciente.setNome_paciente(nome_paciente);
					novoPaciente.setRg_paciente(rg_paciente);
					novoPaciente.setCpf_paciente(cpf_paciente);
					novoPaciente.setDatanasc_paciente(datanasc_paciente);
					novoPaciente.setCidade_paciente(cidade_paciente);
					novoPaciente.setId_estado(estado);
					novoPaciente.setId_logradouro(cep);
					novoPaciente.setEndereco_complemento(endereco_complemento);
					novoPaciente.setNumero_endereco(endereco_num);
					novoPaciente.setTelefone_paciente(telefone_paciente);
					novoPaciente.setEmail_paciente(email_paciente);
					novoPaciente.setConvenio_paciente(convenio_paciente);
									

					if (idPaciente != null)
					{
						novoPaciente.setId(Integer.parseInt(idPaciente));
					}
					
					PacienteDao PacienteDao = new PacienteDao();
					
					boolean sucesso = false;
					if (novoPaciente.getId() > 0)
					{
						sucesso = PacienteDao.updatePaciente(novoPaciente);
						
					}
					else
					{
						sucesso = PacienteDao.insertPaciente(novoPaciente);
						
					}
					
					if (sucesso)
					{
			            //requisição foi bem sucedida, vamos finaliza-la e redirecionar o usuario para outro servlet
						response.sendRedirect(getServletContext().getContextPath() + "/ListaPacienteServlet");                            
					}
					else
					{
						request.setAttribute("mensagemErro", "Não foi possível salvar dados do Paciente.");
						getServletContext().getRequestDispatcher("/TelaPacienteSerlvet").forward(request, response);
					}
				}			
		}
		catch (Exception e) {
			request.setAttribute("mensagemErro", "Informações do Paciente estão inválidas.");
			getServletContext().getRequestDispatcher("/TelaPacienteServlet").forward(request, response);
		}
	}    
}
