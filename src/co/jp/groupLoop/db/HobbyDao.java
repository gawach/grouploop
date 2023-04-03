package co.jp.groupLoop.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.jp.groupLoop.entity.Hobby;

public interface HobbyDao {
	/**
	 * 趣味を取得
	 * @param con データベース接続情報
	 * @param id hobbyの主キー
	 * @return 該当のhobbyデータ
	 * @throws SQLException
	 */
	public Hobby find(Connection con, String id) throws SQLException;

	/**
	 * 趣味一覧を取得
	 * @param con
	 * @param id
	 * @return hobbyデータ一覧
	 * @throws SQLException
	 */
	public ArrayList<Hobby> findAll(Connection con, String id) throws SQLException;

	/**
	 * ArrayList変換
	 * @param rs
	 * @return ArrayList<Hobby>
	 */
	public ArrayList<Hobby> getAll(ResultSet rs);

}
