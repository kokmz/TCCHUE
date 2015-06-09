package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.ExameDao;
import site.dao.PdfResultadoExame;
import site.vo.Exame;

/**
 * Servlet implementation class BuscaResultadoExameServlet
 */
@WebServlet("/BuscaResultadoExameServlet")
public class BuscaResultadoExameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public BuscaResultadoExameServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int idExame = -1;
		if (request.getParameter("exame") != null)
		{
			try 
			{
				idExame = Integer.parseInt(request.getParameter("exame"));
			}
			catch (Exception ex)
			{
				//faz nada. idAluno será invalido
			}			
		}  

		//se id aluno for inválido, retorna usuário para a página index para informar o erro
		if (idExame < 0)
		{
			request.setAttribute("mensagemErro", "Id do exame inválido.");
			getServletContext().getRequestDispatcher("/#").forward(request, response);
		}
		else
		{
			ExameDao exameDao = new ExameDao();
			Exame exame = exameDao.getExame(idExame);

			try {
			PdfResultadoExame pdf = new PdfResultadoExame();
			pdf.GerarPdf(exame);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			getServletContext().getRequestDispatcher("/ResultadoExame.pdf").forward(request, response);
		}
	}
}
