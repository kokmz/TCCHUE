package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.PacienteDao;
import site.vo.Exame;
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
		// TODO Auto-generated constructor stub
	} 

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {    
			String idPaciente = request.getParameter("idPaciente");
			String idExame = request.getParameter("idExame");
			Integer cod_verif = Integer.parseInt(request.getParameter("cod_verif"));
			String nome_paciente = request.getParameter("nome_paciente");
			String rg_paciente = request.getParameter("rg_paciente");
			String cpf_paciente = request.getParameter("cpf_paciente");
			String datanasc_paciente =request.getParameter("datanasc_paciente");
			String endereco_rua = request.getParameter("endereco_rua");
			Integer endereco_num = Integer.parseInt(request.getParameter("endereco_num"));
			String endereco_bairro = request.getParameter("endereco_bairro");	
			String cep = request.getParameter("cep");
			String telefone_paciente = request.getParameter("telefone_paciente");
			String email_paciente = request.getParameter("email_paciente");
			String convenio_paciente = request.getParameter("convenio_paciente");
			String descricao =  request.getParameter("descricao");

			if (cod_verif != null && nome_paciente != null && !nome_paciente.isEmpty() && rg_paciente != null && !rg_paciente.isEmpty() && cpf_paciente != null && !cpf_paciente.isEmpty() && datanasc_paciente != null && !datanasc_paciente.isEmpty() && endereco_rua != null && !endereco_rua.isEmpty() && endereco_num != null && endereco_bairro !=null && !endereco_bairro.isEmpty() && cep !=null && !cep.isEmpty() && telefone_paciente !=null && !telefone_paciente.isEmpty() && email_paciente !=null && !email_paciente.isEmpty() && convenio_paciente !=null && !convenio_paciente.isEmpty()){
				if (descricao == null)
				{
					request.setAttribute("mensagemErro", "campos vazios!");
					getServletContext().getRequestDispatcher("/gestor1.jsp").forward(request, response);          
				}
				else
				{
					Exame novoExame = new Exame();
					novoExame.setDescricao(descricao);

					Paciente novoPaciente = new Paciente();
					novoPaciente.setCod_verif(cod_verif);
					novoPaciente.setNome_paciente(nome_paciente);
					novoPaciente.setRg_paciente(rg_paciente);
					novoPaciente.setCpf_paciente(cpf_paciente);
					novoPaciente.setDatanasc_paciente(datanasc_paciente);
					novoPaciente.setEndereco_rua(endereco_rua);
					novoPaciente.setEndereco_num(endereco_num);
					novoPaciente.setEndereco_bairro(endereco_bairro);
					novoPaciente.setCep(cep);
					novoPaciente.setTelefone_paciente(telefone_paciente);
					novoPaciente.setEmail_paciente(email_paciente);
					novoPaciente.setConvenio_paciente(convenio_paciente);
					novoPaciente.setExame(novoExame);
					

					if (idPaciente != null)
					{
						novoPaciente.setId(Integer.parseInt(idPaciente));
						novoExame.setId(Integer.parseInt(idExame));
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
						getServletContext().getRequestDispatcher("/gestor1.jsp").forward(request, response);
					}
				}			
		}
			else {
				request.setAttribute("mensagemErro", "Informações do paciente estão inválida.");
				getServletContext().getRequestDispatcher("/gestor1.jsp").forward(request, response);	    	
			}
		}
		catch (Exception e) {
			request.setAttribute("mensagemErro", "Informações do Paciente estão inválidas.");
			getServletContext().getRequestDispatcher("/gestor1.jsp").forward(request, response);
		}
	}    
}
