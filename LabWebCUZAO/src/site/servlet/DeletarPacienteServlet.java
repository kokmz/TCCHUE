package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.PacienteDao;

/**
 * Servlet implementation class DeletarAlunoServlet
 */
@WebServlet("/DeletarPacienteServlet")
public class DeletarPacienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletarPacienteServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
		else
		{
			PacienteDao pacienteDao = new PacienteDao();
			pacienteDao.deletePaciente(idPaciente);

			//requisição foi bem sucedida, vamos finaliza-la e redirecionar o usuario para outro servlet
			response.sendRedirect(getServletContext().getContextPath() + "/ListaPacienteServlet");
		}
	}

}
