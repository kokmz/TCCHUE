package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.ExamelabDao;
import site.vo.Examelab;

/**
 * Servlet implementation class ExameInternaServlet
 */
@WebServlet("/ExameInternaServlet")
public class ExameInternaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public ExameInternaServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
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
			getServletContext().getRequestDispatcher("/exame_laboratoriais.jsp").forward(request, response);
		}
		else
		{
			ExamelabDao examelabDao = new ExamelabDao();

			Examelab examelab = examelabDao.getExamelab(id_tabelaExame);

			//grava o aluno no escopo de requisição para acessar no arquivo index.jsp
			request.setAttribute("exame", examelab);
			getServletContext().getRequestDispatcher( "/montaMostraProcedimento.jsp").forward(request, response);
		}
	}
}
