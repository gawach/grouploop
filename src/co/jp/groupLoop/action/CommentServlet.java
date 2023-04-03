package co.jp.groupLoop.action;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jp.groupLoop.db.CommentDaoImpl;
import co.jp.groupLoop.db.DbUtility;

@WebServlet("/CommentServlet")
public class CommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CommentServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String move = null;
		String access = request.getParameter("access");
		String[] strings = new String[4];

		if (access.equals("event")) {
			move = request.getContextPath() + "/eventContentServer";
			strings[0] = "event";
			strings[3] = request.getParameter("id_event");
			move += "?id_event=" + strings[3];
		} else if (access.equals("news")) {
			move = request.getContextPath() + "/DetailNewsServlet";
			strings[0] = "news";
			strings[3] = request.getParameter("idNews");
			move += "?idNews=" + strings[3];
		}
		strings[1] = request.getParameter("comment");
		strings[2] = request.getParameter("id_user");
		try(Connection con = DbUtility.connectionDb()) {
			//コメント挿入
			new CommentDaoImpl().insert(con, strings);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		response.sendRedirect(move);
	}

}
