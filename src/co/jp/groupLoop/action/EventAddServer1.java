package co.jp.groupLoop.action;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jp.groupLoop.db.DbUtility;
import co.jp.groupLoop.entity.Category;

/**
 * Servlet implementation class EventAddServer
 */
@WebServlet("/eventAddServer1")
public class EventAddServer1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String move = "eventAdd.jsp";

		//		String id_event = request.getParameter("id_event");
		//		String inputKn = request.getParameter("emp_kn");
		//		String inputMail = request.getParameter("emp_mail");
		//		String inputDepId = request.getParameter("dep_id");

		ArrayList<Category> emps = new ArrayList<>();

		//		HttpSession session = request.getSession();
		//		if(session.getAttribute(LoginServlet.LOGIN_USER) == null
		//				|| session.getAttribute(LoginServlet.DEP_DATA) == null) {
		//			move = "login.jsp";
		//			request.setAttribute("LOGIN_ERROR", "セッションが切れました。");
		//		}else {
		try (Connection con = DbUtility.connectionDb()) {

			String sql = "SELECT * FROM category";

			PreparedStatement pstmt = con.prepareStatement(sql);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Category emp = new Category();
				emp.setId_category(rs.getInt("id_category"));
				emp.setName_category(rs.getString("name_category"));
				emps.add(emp);
			}

			pstmt.close();
			rs.close();

			request.setAttribute("CATEGORYS", emps);
			request.setAttribute("EVENTCONTENT", null);

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}

		//		}

		//selectResult.jspに画面遷移
		request.getRequestDispatcher(move).forward(request, response);
	}

}
