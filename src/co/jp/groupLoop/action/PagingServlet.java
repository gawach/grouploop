package co.jp.groupLoop.action;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jp.groupLoop.db.DbUtility;
import co.jp.groupLoop.db.PagingDaoImpl;

@WebServlet("/PagingServlet")
public class PagingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PagingServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String page = request.getParameter(page);
		String launchButton_totalPageNum[] = new String[2];
		ArrayList<Gamer> gamers = new ArrayList<>();

		//ページ処理
		if (page == null || page == "") {
			page = "1";
		}

		try(Connection con = DbUtility.connectionDb()) {
			launchButton_totalPageNum = new PagingDaoImpl().adjustPaging(con, page);
			gamers = new PagingDaoImpl().findPerPage(con, page);
		}
		request.setAttribute("GAMER_LIST", gamers);
		request.setAttribute("CURRENT_PAGE", page);
		request.setAttribute("BUTTON", launchButton_totalPageNum[0]);
		request.setAttribute("TOTAL_PAGE_NUM", launchButton_totalPageNum[1]);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
