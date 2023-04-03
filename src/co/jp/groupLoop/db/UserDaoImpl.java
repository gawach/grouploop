/**
 * 
 */
package co.jp.groupLoop.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.jp.groupLoop.entity.User;

/**
 * @author user
 *
 */
public class UserDaoImpl implements UserDao {

	@Override
	public ArrayList<User> find(Connection con, String id) throws SQLException {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}

	@Override
	public ArrayList<User> findAll(Connection con, String id) throws SQLException {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}

	@Override
	public void Insert(Connection con, String... strings) throws SQLException {
		// TODO 自動生成されたメソッド・スタブ

	}

	@Override
	public void update(Connection con, String... strings) throws SQLException {
		// TODO 自動生成されたメソッド・スタブ

	}

	@Override
	public void logicalDelete(Connection con, String id) throws SQLException {
		// TODO 自動生成されたメソッド・スタブ

	}

	@Override
	public ArrayList<User> getAll(ResultSet rs) {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO 自動生成されたメソッド・スタブ

	}

}
