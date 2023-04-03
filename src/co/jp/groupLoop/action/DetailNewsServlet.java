package co.jp.groupLoop.action;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jp.groupLoop.db.CommentDaoImpl;
import co.jp.groupLoop.db.NewsDao;
import co.jp.groupLoop.entity.Comment;
import co.jp.groupLoop.entity.News;

/**
 * Servlet implementation class DetailNewsServlet
 */
@WebServlet("/DetailNewsServlet")
public class DetailNewsServlet extends HttpServlet {

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String move = "news.jsp";

		String inputIdNews = request.getParameter("idNews");
		ArrayList<Comment> comments = new ArrayList<>();
		try {
			//DAOのインスタンス生成
			NewsDao neDao = new NewsDao();

			//JDBCドライバの読み込み
			Class.forName("com.mysql.cj.jdbc.Driver");
			//Connectionの生成
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1:3306/techdb",
					"seed",
					"Tech_123"
					);

			//findNewsメソッドを呼び出す
			ArrayList<News> nes = neDao.findNews(con,inputIdNews);

			request.setAttribute("DETAIL_NEWS", nes.get(0));

			comments = new CommentDaoImpl().findNewsCommentAll(con, inputIdNews);
		}catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		request.setAttribute("COMMENT_CONTENT", comments);
		request.getRequestDispatcher(move).forward(request, response);
	}

}



