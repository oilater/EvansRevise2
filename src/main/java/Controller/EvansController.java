package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import DAO.EvansDAO;
import DTO.Applicant;

@WebServlet("/")
public class EvansController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EvansDAO dao;
	private ServletContext ctx;

	public EvansController() {
		super();

	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		dao = new EvansDAO();
		ctx = getServletContext(); 
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doPro(request, response);
	}

	protected void doPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String context = request.getContextPath();
		String command = request.getServletPath();
		String site = null;

		System.out.println("getContextPath:" + request.getContextPath());
		System.out.println("getServletPath:" + request.getServletPath());
		System.out.println("command:" + command);

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
			site = getList(request);
			break;

		case "/B_insert":
			site = B_insert(request);
			break;

		case "/B_update":
			site = update(request);
			break;
			
		case "/B_delete":
			site = delete(request);
			break;	

		case "/apply":
			site = "apply.jsp";
			break;
		}
		getServletContext().getRequestDispatcher("/" + site).forward(request, response);
	}

	public String getList(HttpServletRequest request) {
		List<Applicant> list;
		try {
			list = dao.getList();
			request.setAttribute("applyList", list);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "리스트 목록 생성이 정상적으로 처리되지 않았어용!");
		}
		return "applylist.jsp";
	}

	public String B_insert(HttpServletRequest request) {
		Applicant applicant = new Applicant();
		try {
			BeanUtils.populate(applicant, request.getParameterMap());
			dao.insert(applicant);
		} catch (Exception e) {
			e.printStackTrace();
			ctx.log("추가 과정에서 오류 발생!"); 
			request.setAttribute("error", "게시물이 정상적으로 등록되지 않았습니다!!");
		}
		return "list";
	}

	public String update(HttpServletRequest request) {
		Applicant applicant = new Applicant();
		try {
			BeanUtils.populate(applicant, request.getParameterMap());
			dao.update(applicant);
		} catch (Exception e) {
			e.printStackTrace();
			ctx.log("수정과정에서 문제 발생!");
			request.setAttribute("error", "게시글이 정상적으로 수정되지 않았습니다");
			return getList(request);
		}
		// 오류뜨면 이 부분 확인해보기
		return "redirect:/applylist?no=" + applicant.getNo();
	}

	public String delete(HttpServletRequest request) {
		int no = Integer.parseInt(request.getParameter("no"));
		try {
			dao.delete(no);
		} catch (Exception e) {
			e.printStackTrace();
			ctx.log("삭제 과정에서 문제 발생!");
			request.setAttribute("error", "정상적으로 삭제되지 않았습니다!");
			return getList(request);
		}
		return "redirect:/list";
	}

}
