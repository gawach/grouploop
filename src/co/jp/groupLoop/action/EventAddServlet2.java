package co.jp.groupLoop.action;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jp.groupLoop.db.DbUtility;
import co.jp.groupLoop.db.EventDao;
import co.jp.groupLoop.db.EventDaoImpl;

/**
 * Servlet implementation class EventAddServlet2
 */
@WebServlet("/eventAddServlet2")
public class EventAddServlet2 extends HttpServlet {
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String update = request.getParameter("update");

		String move = "eventSelectServlet";

		String id_event = request.getParameter("id_event");
		String title_event = request.getParameter("title_event");
		String category_event = request.getParameter("category_event");
		String max_participant_event = request.getParameter("max_participant_event");
		String contents_event = request.getParameter("contents_event");
		//		String id_user = request.getParameter("id_user");

		EventDao empDao = new EventDaoImpl();
		//		ArrayList<EventDao> emps = new ArrayList<>();

		//		HttpSession session = request.getSession();
		//		if(session.getAttribute(LoginServlet.LOGIN_USER) == null
		//				|| session.getAttribute(LoginServlet.DEP_DATA) == null) {
		//			move = "login.jsp";
		//			request.setAttribute("LOGIN_ERROR", "セッションが切れました。");
		//		}else if(!inputPass.equals(inputRePass)) {
		//			move = "insert.jsp";
		//			request.setAttribute("PASS_ERROR", "パスワードが違います。");
		//
		//		}else {
		try (Connection con = DbUtility.connectionDb()) {
			System.out.println("yes");
			String[] inputColums = {
					"", title_event, category_event, max_participant_event, contents_event, id_event
			};
			if (Integer.parseInt(update) == 1) {
				empDao.insert(con, inputColums);
			} else {
				empDao.update(con, inputColums);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			System.out.println("no");
		}

		//		}

		request.getRequestDispatcher(move).forward(request, response);
	}
}
