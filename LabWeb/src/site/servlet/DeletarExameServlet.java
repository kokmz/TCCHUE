package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.ExameDao;

/**
 * Servlet implementation class DeletarExameServlet
 */
@WebServlet("/DeletarExameServlet")
public class DeletarExameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletarExameServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idExame = -1;
		if (request.getParameter("exame") != null)
		{
			try 
			{
				idExame = Integer.parseInt(request.getParameter("exame"));
			}
			catch (Exception ex)
			{
				//faz nada. idAluno ser� invalido
			}			
		}  

		//se id aluno for inv�lido, retorna usu�rio para a p�gina index para informar o erro
		if (idExame < 0)
		{
			request.setAttribute("mensagemErro", "Id do Exame inv�lido");
			getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
		else
		{
			ExameDao exameDao = new ExameDao();
			exameDao.deleteExame(idExame);

			//requisi��o foi bem sucedida, vamos finaliza-la e redirecionar o usuario para outro servlet
			response.sendRedirect(getServletContext().getContextPath() + "/ListaExameServlet");
		}
	}

}
