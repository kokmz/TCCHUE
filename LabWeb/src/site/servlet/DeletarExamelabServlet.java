package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.ExamelabDao;

/**
 * Servlet implementation class DeletarExamelabServlet
 */
@WebServlet("/DeletarExamelabServlet")
public class DeletarExamelabServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletarExamelabServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id_tabelaExame = -1;
		if (request.getParameter("exame") != null)
		{
			try 
			{
				id_tabelaExame = Integer.parseInt(request.getParameter("exame"));
			}
			catch (Exception ex)
			{
				//faz nada. idAluno será invalido
			}			
		}  

		//se id aluno for inválido, retorna usuário para a página index para informar o erro
		if (id_tabelaExame < 0)
		{
			request.setAttribute("mensagemErro", "Id do exame inválido.");
			getServletContext().getRequestDispatcher("/exames_laboratoriais.jsp").forward(request, response);
		}
		else
		{
			ExamelabDao examelabDao = new ExamelabDao();
			examelabDao.deleteExamelab(id_tabelaExame);

			//requisição foi bem sucedida, vamos finaliza-la e redirecionar o usuario para outro servlet
			response.sendRedirect(getServletContext().getContextPath() + "/exames_laboratoriais.jsp");
		}
	}

}
