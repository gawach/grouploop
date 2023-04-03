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

import co.jp.groupLoop.db.CommentDaoImpl;
import co.jp.groupLoop.db.DbUtility;
import co.jp.groupLoop.db.EventDaoImpl;
import co.jp.groupLoop.db.ParticipantDaoImpl;
import co.jp.groupLoop.entity.Comment;
import co.jp.groupLoop.entity.Event;
import co.jp.groupLoop.entity.Participant;
import co.jp.groupLoop.entity.User;

/**
 * Servlet implementation class EventContentServer
 */
@WebServlet("/eventContentServer")
public class EventContentServer extends HttpServlet {
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String move = "eventContent.jsp";
//		イベントについて
		String id_event = request.getParameter("id_event");
		Event event = new Event();
//		参加について
		User loginUser = (User)request.getSession().getAttribute("USER_DATA");
		String loginUserName = loginUser.getName_user();
		boolean exist = false;
		boolean canJoin = true;
		ArrayList<Participant> participants = new ArrayList<>();
//		コメントについて
		ArrayList<Comment> comments = new ArrayList<>();

		try (Connection con = DbUtility.connectionDb()) {
			event = new EventDaoImpl().find(con, id_event).get(0);
			participants = new ParticipantDaoImpl().findAll(con, id_event);
			exist = new ParticipantDaoImpl().joinStatus(participants, loginUserName);
			if (event.getMax_participant_event() == participants.size()) {
				canJoin = false;
			}
			comments = new CommentDaoImpl().findEventCommentAll(con, id_event);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}

		String id_user = loginUser.getId_user();
		boolean self = false;
		if (Integer.parseInt(id_user) == event.getId_user()) {
			self = true;
		} else {
			self = false;
		}

		request.setAttribute("EVENT", event);
		request.setAttribute("PARTICIPANTS", participants);
		String judge = new ParticipantDaoImpl().displayButtonJudge(self, exist, canJoin);
		request.setAttribute("JUDGE", judge);
		request.setAttribute("COMMENT_CONTENT", comments);
		request.getRequestDispatcher(move).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
}
