package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.EvansDAO;

@WebServlet("/")
public class EvansController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EvansController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPro(request, response);
	}

	protected void doPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String context = request.getContextPath();
		String command = request.getServletPath();
		String site = null;
		System.out.println(context + "," + command);

		EvansDAO dao = new EvansDAO();

		switch (command) {
		case "/home":
			site = "index.jsp";
			break;

		case "/hislife":
			site = "hislife.jsp";
			break;

		case "/titlesong":
			site = "titlesong.jsp";
			break;
			
		case "/list":
			site = dao.selectAll(request, response);
			break;
			
		case "/insert":
			site = dao.insert(request, response);
			break;
			
		case "/apply":
			site = dao.nextApplyno(request, response);
			break;
		}
		getServletContext().getRequestDispatcher("/" + site).forward(request, response);
	}
}







