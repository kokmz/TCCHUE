package site.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.ConsultaDao;
import site.dao.Pdf;
import site.vo.FluxoExames;


/**
 * Servlet implementation class cadResultadoExameServlet
 */
@WebServlet("/FluxoDeExamesServlet")
public class FluxoDeExamesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FluxoDeExamesServlet() {
		super();
	} 
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String data_inicio = request.getParameter("data_inicio");
		String data_fim = request.getParameter("data_fim");

		
		if (data_fim.isEmpty() || data_inicio.isEmpty())
		{
			request.setAttribute("mensagemErro", "Preencha os campos solicitados");
			getServletContext().getRequestDispatcher("/fluxoExames.jsp").forward(request, response);          
		}
		else
		{
		ConsultaDao ConsultaDao = new ConsultaDao();	
		List<FluxoExames> fluxo = ConsultaDao.buscaExame(data_inicio, data_fim);
		
		request.setAttribute("fluxo", fluxo);
		getServletContext().getRequestDispatcher( "/consultaFluxo.jsp").forward(request, response);
		
		try {
			Pdf pdf = new Pdf();
			pdf.GerarPdf(fluxo);
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
	}    
}
