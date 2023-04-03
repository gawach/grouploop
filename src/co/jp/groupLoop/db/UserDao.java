package co.jp.groupLoop.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.jp.groupLoop.entity.User;

public interface UserDao {

	/**
	 * 特定のユーザー取得
	 * @param con
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public ArrayList<User> find(Connection con, String id) throws SQLException;
	/**
	 * ユーザー一覧取得
	 * @param con
	 * @param id
	 * @return ユーザー一覧
	 * @throws SQLException
	 */
	public ArrayList<User> findAll(Connection con, String id) throws SQLException;

	/**
	 * ユーザー登録
	 * @param con
	 */
	public void Insert(Connection con, String... strings) throws SQLException;

	/**
	 * ユーザー情報更新
	 * @param con
	 * @param strings
	 * @return
	 * @throws SQLException
	 */
	public void update(Connection con, String... strings) throws SQLException;

	/**
	 * 論理削除
	 * @param con
	 * @param id
	 * @throws SQLException
	 */
	public void logicalDelete(Connection con, String id) throws SQLException;

	/**
	 * ArrayList変換
	 * @param rs
	 * @return
	 */
	public ArrayList<User> getAll(ResultSet rs);
}
