package co.jp.groupLoop.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.jp.groupLoop.entity.Event;

public interface EventDao {
	/**
	 *
	 */
	public ArrayList<Event> findAll(Connection con) throws SQLException;

	/**
	 * イベントを取得
	 * @param con デートベース接続情報
	 * @param id Eventの主キー
	 * @return 該当のEventデータ
	 * @throws SQLException
	 */
	public ArrayList<Event> find(Connection con, String id) throws SQLException;

	/**
	 * イベントを追加
	 * @param con デートベース接続情報
	 * @param strings 追加する情報
	 * @return 該当のEventデータ
	 * @throws SQLException
	 */
	public void insert(Connection con, String... strings) throws SQLException;

	/**
	 * イベントを再編集
	 * @param con デートベース接続情報
	 * @param strings 編集する情報
	 * @return 該当のEventデータ
	 * @throws SQLException
	 */
	public void update(Connection con, String... strings) throws SQLException;

	/**
	 * イベントを削除
	 * @param con デートベース接続情報
	 * @param id Newsの主キー
	 * @return 該当のEventデータ
	 * @throws SQLException
	 */
	public void delete(Connection con, String id) throws SQLException;

	/**
	 * ArrayList変換
	 * @param rs
	 * @return ArrayList<Hobby>
	 */
	public ArrayList<Event> getAll(ResultSet rs);

}
