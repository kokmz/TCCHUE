package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.ExamelabDao;
import site.vo.Examelab;


/**
 * Servlet implementation class ExamelabServlet
 */
@WebServlet("/ExamelabServlet")
public class ExamelabServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ExamelabServlet() {
		super();
	} 

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {    
			String id_tabelaExame = request.getParameter("id_tabelaExame");
			String exame_nome = request.getParameter("exame_nome");
			String procedimento = request.getParameter("procedimento");

			if (exame_nome != null && !exame_nome.isEmpty()){
				if (procedimento == null)
				{
					request.setAttribute("mensagemErro", "campos vazios!");
					getServletContext().getRequestDispatcher("/montaExamelab.jsp").forward(request, response);          
				}
				else
				{
					Examelab novoExamelab = new Examelab();
					novoExamelab.setExame_nome(exame_nome);
					novoExamelab.setProcedimento(procedimento);
					

					if (id_tabelaExame != null)
					{
						novoExamelab.setId_tabelaExame(Integer.parseInt(id_tabelaExame));
					}
					
					ExamelabDao ExamelabDao = new ExamelabDao();
					
					boolean sucesso = false;
					if (novoExamelab.getId_tabelaExame() > 0)
					{
						sucesso = ExamelabDao.updateExamelab(novoExamelab);
						
					}
					else
					{
						sucesso = ExamelabDao.insertExamelab(novoExamelab);
						
					}
					
					if (sucesso)
					{
			            //requisição foi bem sucedida, vamos finaliza-la e redirecionar o usuario para outro servlet
						request.setAttribute("mensagemErro", "Cadastro salvo com sucesso!");    
						response.sendRedirect(getServletContext().getContextPath() + "/exames_laboratoriais.jsp");                            
					}
					else
					{
						request.setAttribute("mensagemErro", "Não foi possível salvar dados do Exame.");
						getServletContext().getRequestDispatcher("/montaExamelab.jsp").forward(request, response);
					}
				}			
		}
			else {
				request.setAttribute("mensagemErro", "Informações do exame estão inválida.");
				getServletContext().getRequestDispatcher("/montaExamelab.jsp").forward(request, response);	    	
			}
		}
		catch (Exception e) {
			request.setAttribute("mensagemErro", "Informações do exame estão inválidas.");
			getServletContext().getRequestDispatcher("/montaExamelab.jsp").forward(request, response);
		}
	}    
}
