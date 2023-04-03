package co.jp.groupLoop.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.jp.groupLoop.entity.Participant;

public interface ParticipantDao {

	/**
	 * 参加者を追加
	 * @param con 接続情報
	 * @param strings 更新する情報（User id , event id）
	 * @return insertデータ
	 * @throws SQLException
	 */
	public void insert(Connection con, String... strings) throws SQLException;

	/**
	 *	参加者を削除
	 * @param con
	 * @param strings
	 * @return deleteデータ
	 * @throws SQLException
	 */
	public void delete(Connection con, String... strings) throws SQLException;

	/**
	 *	ArrayList変換
	 * @param rs
	 * @return	ArrayList<Participant>
	 */
	public ArrayList<Participant> getAll(ResultSet rs);

}
