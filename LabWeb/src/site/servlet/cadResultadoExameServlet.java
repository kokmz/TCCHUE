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
 * Servlet implementation class cadResultadoExameServlet
 */
@WebServlet("/cadResultadoExameServlet")
public class cadResultadoExameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public cadResultadoExameServlet() {
		super();
	} 

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {    
			String idExame = request.getParameter("idExame");
			int paciente = Integer.parseInt(request.getParameter("paciente"));
			int tabelaExame = Integer.parseInt(request.getParameter("exame"));
			String descricao = request.getParameter("descricao");
			int status = Integer.parseInt(request.getParameter("status"));
			String data = request.getParameter("data");
			
			
			
			if (paciente != 0 && tabelaExame != 0 && status != 0 ){
				if (paciente == 0 && tabelaExame == 0)
				{
					request.setAttribute("mensagemErro", "Campos vazios");
					getServletContext().getRequestDispatcher("/montaGestor.jsp").forward(request, response);          
				}
				else
				{
					
					Exame novoExame = new Exame();
					novoExame.setId_paciente(paciente);;
					novoExame.setId_tabelaExame(tabelaExame);
					novoExame.setDescricao(descricao);
					novoExame.setId_status(status);
					novoExame.setData_exame(data);
														
					if (idExame != null)
					{
						novoExame.setId(Integer.parseInt(idExame));
					}
					
					ExameDao ExameDao = new ExameDao();
					
					boolean sucesso = false;
					if (novoExame.getId() > 0)
					{
						sucesso = ExameDao.updateExame(novoExame);
						
					}
					else
					{
						sucesso = ExameDao.insertExame(novoExame);
						
					}
					
					if (sucesso)
					{
			            //requisi��o foi bem sucedida, vamos finaliza-la e redirecionar o usuario para outro servlet
						//response.sendRedirect(getServletContext().getContextPath() + "/ListaGestorServlet"); 
							request.setAttribute("mensagemErro", "Cadastro concluido com suceso!");
							getServletContext().getRequestDispatcher("/ExameServlet").forward(request, response);
					}
					else
					{
						request.setAttribute("mensagemErro", "N�o foi poss�vel salvar dados do Paciente.");
						getServletContext().getRequestDispatcher("/ExameServlet").forward(request, response);
					}
				}			
		}
			else {
				request.setAttribute("mensagemErro", "Informa��es do paciente est�o inv�lida.");
				getServletContext().getRequestDispatcher("/ExameServlet").forward(request, response);	    	
			}
		}
		catch (Exception e) {
			request.setAttribute("mensagemErro", "Informa��es do Paciente est�o inv�lidas.");
			getServletContext().getRequestDispatcher("/ExameServlet").forward(request, response);
		}
	}    
}
