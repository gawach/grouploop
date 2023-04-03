package co.jp.groupLoop.action;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jp.groupLoop.db.DbUtility;
import co.jp.groupLoop.db.EventDao;
import co.jp.groupLoop.db.EventDaoImpl;
import co.jp.groupLoop.entity.Event;

/**
 * Servlet implementation class EventSelectServlet
 */
@WebServlet("/eventSelectServlet")
public class EventSelectServlet extends HttpServlet {
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String move = "eventSelect.jsp";

		EventDao empDao = new EventDaoImpl();
		ArrayList<Event> emps = new ArrayList<>();

		//		HttpSession session = request.getSession();
		//		if(session.getAttribute(LoginServlet.LOGIN_USER) == null
		//				|| session.getAttribute(LoginServlet.DEP_DATA) == null) {
		//			move = "login.jsp";
		//			request.setAttribute("LOGIN_ERROR", "セッションが切れました。");
		//		}else {
		try (Connection con = DbUtility.connectionDb()) {

			//				String[] inputColums = new String[6];

			emps = empDao.findAll(con);

			request.setAttribute("EVENTS", emps);

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}

		//		}

		//selectResult.jspに画面遷移
		request.getRequestDispatcher(move).forward(request, response);
	}

}
