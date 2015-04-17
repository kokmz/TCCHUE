package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.ExameDao;
import site.vo.Exame;

/**
 * Servlet implementation class ResultadoServlet
 */
@WebServlet("/ResultadoServlet")
public class ResultadoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public ResultadoServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int id_exame = -1;
		if (request.getParameter("resultado") != null)
		{
			try 
			{
				id_exame = Integer.parseInt(request.getParameter("resultado"));
			}
			catch (Exception ex)
			{
				//faz nada. idAluno ser� invalido
			}			
		}  

		//se id aluno for inv�lido, retorna usu�rio para a p�gina index para informar o erro
		if (id_exame < 0)
		{
			request.setAttribute("mensagemErro", "Id do exame inv�lido.");
			getServletContext().getRequestDispatcher("/consultaResultado.jsp").forward(request, response);
		}
		else
		{
			ExameDao exameDao = new ExameDao();

			Exame resultado = exameDao.getExame(id_exame);

			//grava o aluno no escopo de requisi��o para acessar no arquivo index.jsp
			request.setAttribute("resultado", resultado);
			getServletContext().getRequestDispatcher( "/montaPaginaResultado.jsp").forward(request, response);
		}
	}
}
