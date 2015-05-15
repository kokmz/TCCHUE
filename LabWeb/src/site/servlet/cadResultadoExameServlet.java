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

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		try {
			String idExame = request.getParameter("idExame");
			int paciente = Integer.parseInt(request.getParameter("paciente"));
			int tabelaExame = Integer.parseInt(request.getParameter("exame"));
			String descricao = request.getParameter("descricao");
			int status = Integer.parseInt(request.getParameter("status"));
			String data = request.getParameter("data");
			String nome_medico = request.getParameter("nome_medico");
			String crm_medico = request.getParameter("crm_medico");

			if (paciente == 0 || tabelaExame == 0 || data.isEmpty()
					|| nome_medico.isEmpty() || crm_medico.isEmpty()) {
				request.setAttribute("mensagemErro", "Campos vazios");
				getServletContext().getRequestDispatcher("/ExameServlet")
						.forward(request, response);
			} else {

				Exame novoExame = new Exame();
				novoExame.setId_paciente(paciente);
				novoExame.setId_tabelaExame(tabelaExame);
				novoExame.setDescricao(descricao);
				novoExame.setId_status(status);
				novoExame.setData_exame(data);
				novoExame.setNome_medico(nome_medico);
				novoExame.setCrm_medico(crm_medico);

				if (idExame != null) {
					novoExame.setId(Integer.parseInt(idExame));
				}

				ExameDao ExameDao = new ExameDao();

				boolean sucesso_insert = false;
				boolean sucesso_update = false;
				if (novoExame.getId() > 0) {
					sucesso_update = ExameDao.updateExame(novoExame);

				} else {
					sucesso_insert = ExameDao.insertExame(novoExame);

				}

				if (sucesso_insert) {
					// requisição foi bem sucedida, vamos finaliza-la e
					// redirecionar o usuario para outro servlet
					// response.sendRedirect(getServletContext().getContextPath()
					// + "/ListaGestorServlet");
					request.setAttribute("mensagemErro",
							"Cadastro concluido com sucesso!");
					getServletContext().getRequestDispatcher(
							"/ListaExameServlet").forward(request, response);
				} else if (sucesso_update) {
					getServletContext().getRequestDispatcher(
							"/ListaExameServlet").forward(request, response);
				} else {
					request.setAttribute("mensagemErro",
							"Não foi possível salvar dados do Resultado do Exame");
					getServletContext().getRequestDispatcher("/ExameServlet")
							.forward(request, response);
				}
			}
		}

		catch (Exception e) {
			request.setAttribute("mensagemErro", "Campos vazios");
			getServletContext().getRequestDispatcher("/ExameServlet").forward(
					request, response);
		}
	}
}
