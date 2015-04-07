package site.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.ExameDao;
import site.vo.Status;

/**
 * Servlet implementation class StatusExamesServlet
 */
@WebServlet("/StatusExamesServlet")
public class StatusExamesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public StatusExamesServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		ExameDao exameDao = new ExameDao();
		List<Status> status = exameDao.getStatus();

		
		request.setAttribute("status", status);
		getServletContext().getRequestDispatcher( "/paciente.jsp").forward(request, response);
	}

}
