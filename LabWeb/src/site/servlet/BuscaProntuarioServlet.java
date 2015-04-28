package site.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.ExameDao;
import site.dao.PacienteDao;
import site.dao.PdfProntuario;
import site.vo.Exame;
import site.vo.Paciente;

/**
 * Servlet implementation class BuscaProntuarioServlet
 */
@WebServlet("/BuscaProntuarioServlet")
public class BuscaProntuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public BuscaProntuarioServlet() {
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
			PacienteDao pacienteDao = new PacienteDao();
			Paciente paciente = pacienteDao.getPaciente(idPaciente);
			
			ExameDao exameDao = new ExameDao();
			List<Exame> exame = exameDao.getExamePaciente(idPaciente);

			try {
			PdfProntuario pdf = new PdfProntuario();
			pdf.GerarPdf(exame, paciente);
						} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			request.setAttribute("mensagemErro", "O Relatório foi gerado com sucesso.");
			
			getServletContext().getRequestDispatcher( "/ListaPacienteProntuarioServlet").forward(request, response);
		}
	}
}
