/**
 *
 */
package co.jp.groupLoop.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.jp.groupLoop.entity.Event;

/**
 * @author user
 *
 */
public class EventDaoImpl implements EventDao {
	public final String SELECT_BASE = "SELECT * FROM event JOIN user ON event.id_user = user.id_user "
			+ "RIGHT JOIN category ON event.category_event = category.id_category ORDER BY created_at_event DESC LIMIT 10 OFFSET ?";

	public final String INSERT_BASE = "INSERT INTO event(title_event,category_event,max_participant_event,contents_event,id_user)"
			+ " VALUES(?,?,?,?,?)";

	public final String DELETE_BASE = "DELETE FROM event WHERE id_event = ?";

	public final String UPDATE_BASE = "UPDATE event SET title_event = ?,category_event = ?,max_participant_event = ?,contents_event = ?"
			+ "WHERE id_event = ?;";

	public final String SELECTPART_BASE = "SELECT * FROM event JOIN user ON event.id_user = user.id_user RIGHT JOIN category \r\n"
			+ "ON event.category_event = category.id_category WHERE event.id_event = ?";

	@Override
	public ArrayList<Event> findAll(Connection con) throws SQLException {
		ArrayList<Event> emps = new ArrayList<>();
		String sql = SELECT_BASE;
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			emps.add(setList(rs));
		}
		pstmt.close();
		return emps;
	}

	//ページ毎のデータ取得
	public ArrayList<Event> findPerPage(Connection con, String current_page) throws SQLException {
		ArrayList<Event> events = new ArrayList<>();
		String sql = SELECT_BASE;
		PreparedStatement pstmt = con.prepareStatement(sql);
		int num = (Integer.parseInt(current_page) - 1) * 10;
		pstmt.setInt(1, num);
		ResultSet rs = pstmt.executeQuery();
		events = getAll(rs);
		pstmt.close();
		return events;
	}

	@Override
	public ArrayList<Event> find(Connection con, String id_event) throws SQLException {
		ArrayList<Event> emps = new ArrayList<>();
		String sql = SELECTPART_BASE;
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id_event);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			emps.add(setList(rs));
		}
		pstmt.close();
		return emps;
	}

	/**
	 * 1レコード分をEventインスタンスに格納する
	 * @param rs 1レコード分の検索情報
	 * @return DTOに格納したインスタンス
	 * @throws SQLException
	 */
	public Event setList(ResultSet rs) throws SQLException {
		Event e = new Event();
		e.setId_event(rs.getInt("id_event"));
		e.setTitle_event(rs.getString("title_event"));
		e.setCategory_event(rs.getInt("category_event"));
		e.setMax_participant_event(rs.getInt("max_participant_event"));
		e.setContents_event(rs.getString("contents_event"));
		e.setCreated_at_event(rs.getString("created_at_event"));
		e.setUpdated_at_event(rs.getString("updated_at_event"));
		e.setId_user(rs.getInt("id_user"));
		e.setName_category(rs.getString("name_category"));
		e.setName_user(rs.getString("name_user"));
		return e;
	}

	@Override
	public void insert(Connection con, String... inputColums) throws SQLException {
		String sql = INSERT_BASE;

		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, inputColums[1]);
		pstmt.setString(2, inputColums[2]);
		pstmt.setString(3, inputColums[3]);
		pstmt.setString(4, inputColums[4]);
		pstmt.setInt(5, 10000);
		//		pstmt.setInt(6,Integer.parseInt(inputColums[6]));
		pstmt.executeUpdate();
		pstmt.close();
	}

	@Override
	public void update(Connection con, String... inputColums) throws SQLException {
		String sql = UPDATE_BASE;
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, inputColums[1]);
		pstmt.setString(2, inputColums[2]);
		pstmt.setString(3, inputColums[3]);
		pstmt.setString(4, inputColums[4]);
		pstmt.setString(5, inputColums[5]);
		pstmt.executeUpdate();
		pstmt.close();
	}

	@Override
	public void delete(Connection con, String id_event) throws SQLException {
		String sql = DELETE_BASE;
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id_event);
		pstmt.executeUpdate();
		pstmt.close();
	}

	@Override
	public ArrayList<Event> getAll(ResultSet rs) throws SQLException {
		ArrayList<Event> events = new ArrayList<>();
		while(rs.next()) {
			Event e = new Event();
			e.setId_event(rs.getInt("id_event"));
			e.setTitle_event(rs.getString("title_event"));
			e.setCategory_event(rs.getInt("category_event"));
			e.setMax_participant_event(rs.getInt("max_participant_event"));
			e.setContents_event(rs.getString("contents_event"));
			e.setCreated_at_event(rs.getString("created_at_event"));
			e.setUpdated_at_event(rs.getString("updated_at_event"));
			e.setId_user(rs.getInt("id_user"));
			e.setName_category(rs.getString("name_category"));
			e.setName_user(rs.getString("name_user"));
			events.add(e);
		}
		return events;
	}

}
