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
 * Servlet implementation class ObterPacienteServlet
 */
@WebServlet("/ObterPacienteServlet")
public class ObterPacienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public ObterPacienteServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int idPaciente = -1;
		if (request.getParameter("paciente") != null)
		{
			try 
			{
				idPaciente = Integer.parseInt(request.getParameter("paciente"));
			}
			catch (Exception ex)
			{
				//faz nada. idAluno será invalido
			}			
		}  

		//se id aluno for inválido, retorna usuário para a página index para informar o erro
		if (idPaciente < 0)
		{
			request.setAttribute("mensagemErro", "Id do paciente inválido.");
			getServletContext().getRequestDispatcher("/gestor1.jsp").forward(request, response);
		}
		else
		{
			PacienteDao pacienteDao = new PacienteDao();

			Paciente paciente = pacienteDao.getPaciente(idPaciente);

			//grava o aluno no escopo de requisição para acessar no arquivo index.jsp
			request.setAttribute("paciente", paciente);
			getServletContext().getRequestDispatcher( "/TelaPacienteServlet").forward(request, response);
		}
	}
}
