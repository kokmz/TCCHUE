package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.DuvidaDao;
import site.vo.Duvida;


/**
 * Servlet implementation class DuvidaServlet
 */
@WebServlet("/DuvidaServlet")
public class DuvidaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DuvidaServlet() {
		super();
	} 

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {    
			String idDuvida = request.getParameter("idDuvida");
			String nome = request.getParameter("nome");
			String email = request.getParameter("email");
			String mensagem = request.getParameter("mensagem");
			

			if (nome != null && !nome.isEmpty() && email != null && !email.isEmpty() && mensagem != null && !mensagem.isEmpty()){
				
				if (mensagem == null)
				{
					request.setAttribute("mensagemErro", "campos vazios!");
					getServletContext().getRequestDispatcher("/contato.jsp").forward(request, response);          
				}
				else
				{
				
					Duvida novaDuvida = new Duvida();
					novaDuvida.setNome(nome);
					novaDuvida.setEmail(email);
					novaDuvida.setMensagem(mensagem);

					if (idDuvida != null)
					{
						novaDuvida.setId_duvida(Integer.parseInt(idDuvida));
					}
					
					DuvidaDao DuvidaDao = new DuvidaDao();
					
					boolean sucesso = false;
					if (novaDuvida.getId_duvida() > 0)
					{
												
					}
					else
					{
						sucesso = DuvidaDao.insertDuvida(novaDuvida);
						
					}
					
					if (sucesso)
					{
			            //requisição foi bem sucedida, vamos finaliza-la e redirecionar o usuario para outro servlet
						response.sendRedirect(getServletContext().getContextPath() + "/ListaDuvidaServlet");                            
					}
					else
					{
						request.setAttribute("mensagemErro", "Não foi possível salvar dados do Paciente.");
						getServletContext().getRequestDispatcher("/contato.jsp").forward(request, response);
					}
				}			
		}
			else {
				request.setAttribute("mensagemErro", "Informações do paciente estão inválida.");
				getServletContext().getRequestDispatcher("/contato.jsp").forward(request, response);	    	
			}
		}
		catch (Exception e) {
			request.setAttribute("mensagemErro", "Informações do Paciente estão inválidas.");
			getServletContext().getRequestDispatcher("/contato.jsp").forward(request, response);
		}
	}    
}
