package co.jp.groupLoop.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.jp.groupLoop.entity.Comment;

public class CommentDaoImpl implements CommentDao {
	public final String SELECT_ALL = "SELECT * FROM comment ";
	public final String INSERT = "INSERT INTO comment(contents_comment, id_user, id_event, id_news) VALUE(?, ?, ?, ?)";
	public final String DELETE = "DELETE FROM comment WHERE id = ?";

	@Override
	public ArrayList<Comment> findEventCommentAll(Connection con, String id_event) throws SQLException {
		ArrayList<Comment> comments = new ArrayList<>();
		String sql = SELECT_ALL + "JOIN event ON comment.id_event = event.id_event JOIN user ON comment.id_user = user.id_user WHERE event.id_event = ? ORDER BY created_at_comment ASC";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id_event);
		ResultSet rs = pstmt.executeQuery();
		comments = getAll(rs);
		return comments;
	}

	@Override
	public ArrayList<Comment> findNewsCommentAll(Connection con, String id_news) throws SQLException {
		ArrayList<Comment> comments = new ArrayList<>();
		String sql = SELECT_ALL + "JOIN news ON comment.id_news = news.id_news JOIN user ON comment.id_user = user.id_user WHERE news.id_news = ? ORDER BY created_at_comment ASC";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id_news);
		ResultSet rs = pstmt.executeQuery();
		comments = getAll(rs);
		return comments;
	}

	@Override
	public void insert(Connection con, String... strings) throws SQLException {
		String sql = INSERT;
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, strings[1]);
		pstmt.setString(2, strings[2]);
		if (strings[0].equals("event")) {
			pstmt.setString(3, strings[3]);
			pstmt.setString(4, null);
		} else if (strings[0].equals("news")) {
			pstmt.setString(3, null);
			pstmt.setString(4, strings[3]);
		}
		pstmt.executeUpdate();
		pstmt.close();
	}

	@Override
	public void delete(Connection con, String id) throws SQLException {

	}

	@Override
	public ArrayList<Comment> getAll(ResultSet rs) throws SQLException {
		ArrayList<Comment> comments = new ArrayList<>();
		while(rs.next()) {
			Comment c = new Comment();
			c.setId_comment(rs.getString("id_comment"));
			c.setContents_comment(rs.getString("contents_comment"));
			c.setCreated_at_comment(rs.getString("created_at_comment"));
			c.setId_user(rs.getString("id_user"));
			c.setId_event(rs.getString("id_event"));
			c.setId_news(rs.getString("id_news"));
			c.setName_user(rs.getString("name_user"));
			comments.add(c);
		}
		return comments;
	}


}
