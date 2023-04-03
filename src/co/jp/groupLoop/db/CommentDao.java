package co.jp.groupLoop.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.jp.groupLoop.entity.Comment;

public interface CommentDao {
	/**
	 * コメントを取得
	 * @param con デートベース接続情報
	 * @param id Event又はNewsの主キー
	 * @return 該当のCommentデータ
	 * @throws SQLException
	 */
	public ArrayList<Comment> find(Connection con, String id) throws SQLException;

	/**
	 * コメントを追加
	 * @param con デートベース接続情報
	 * @param strings 追加する情報
	 * @return 該当のCommentデータ
	 * @throws SQLException
	 */
	public ArrayList<Comment> insert(Connection con, String... strings) throws SQLException;

	/**
	 * コメントを削除
	 * @param con デートベース接続情報
	 * @param id Commentの主キー
	 * @return 該当のEventデータ
	 * @throws SQLException
	 */
	public ArrayList<Comment> delete(Connection con, String id) throws SQLException;
	/**
	 * ArrayList変換
	 * @param rs
	 * @return ArrayList<Comment>
	 */
	public ArrayList<Comment> getAll(ResultSet rs);
}
