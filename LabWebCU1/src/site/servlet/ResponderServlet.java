package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.DuvidaDao;
import site.dao.SendMail;
import site.vo.Duvida;


/**
 * Servlet implementation class ResponderServlet
 */
@WebServlet("/ResponderServlet")
public class ResponderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ResponderServlet() {
		super();
	} 

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {    
			String email = request.getParameter("email");
			String resposta = request.getParameter("resposta");
			int idDuvida = Integer.parseInt(request.getParameter("idDuvida"));
			

				if (resposta.isEmpty()){					
					request.setAttribute("mensagemErro", "Preencha o campo Resposta!");
					getServletContext().getRequestDispatcher("/montaRespoderDuvida.jsp").forward(request, response);   
				}
				else
				{
					SendMail send = new SendMail();
					send.sendMail("pepsivini@gmail.com", email, "Resposta Dúvida - Clinica Lab", resposta);
					
					DuvidaDao duvidaDao = new DuvidaDao();
					duvidaDao.updateStatus(idDuvida);
					Duvida variavel = duvidaDao.getStatus(idDuvida);
					
					request.setAttribute("status", variavel);
					request.setAttribute("mensagemErro", "Resposta Enviada com sucesso!");
					getServletContext().getRequestDispatcher("/ListaDuvidaServlet").forward(request, response);
				}
			}
		catch (Exception e) {
			request.setAttribute("mensagemErro", "Informações digitadas estão inválidas.");
			getServletContext().getRequestDispatcher("/contato.jsp").forward(request, response);
		}
	}    
}
