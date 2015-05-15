
package site.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.ExameDao;
import site.dao.PacienteDao;
import site.dao.PdfHistorico;
import site.dao.PdfProntuario;
import site.vo.Exame;
import site.vo.Paciente;

/**
 * Servlet implementation class BuscaHistoricoServlet
 */
@WebServlet("/BuscaHistoricoServlet")
public class BuscaHistoricoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public BuscaHistoricoServlet() {
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
			getServletContext().getRequestDispatcher("/ListaPacienteProntuarioServlet").forward(request, response);
		}
		else
		{
			Integer idPaciente1 = Integer.parseInt(request.getParameter("paciente"));
			
			ExameDao exameDao = new ExameDao();				
			List<Exame> historico = exameDao.getHistorico(idPaciente1);
			
			PacienteDao pacienteDao = new PacienteDao();
			Paciente paciente = pacienteDao.getPaciente(idPaciente1);
			
			try {
				PdfHistorico pdf = new PdfHistorico();
				pdf.GerarPdf(historico, paciente);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
			//grava a lista de alunos no escopo de requisição para acessar no arquivo alunos.jsp
			request.setAttribute("paciente", paciente);
			request.setAttribute("historico", historico);
			getServletContext().getRequestDispatcher( "/consultaHistorico.jsp").forward(request, response);
		}
	}
}
