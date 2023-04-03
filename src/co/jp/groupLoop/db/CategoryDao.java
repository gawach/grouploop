package co.jp.groupLoop.db;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.jp.groupLoop.entity.Category;

public interface CategoryDao {
	/**
	 * カテゴリー取得
	 * @param id Categroyの主キー
	 * @return ArrayList<Category>
	 * @throws SQLException
	 */
	public ArrayList<Category> find(String id) throws SQLException;

	/**
	 * RsからArrayListへ変換
	 * @param rs
	 * @return Arraylist<Category>
	 */
	public ArrayList<Category> getAll(ResultSet rs);
}
