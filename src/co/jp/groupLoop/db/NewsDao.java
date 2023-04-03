package co.jp.groupLoop.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.jp.groupLoop.entity.News;


public class NewsDao {

	//newsAll.html用
	public static final String SELECT_ALL = "SELECT * FROM news ORDER BY updated_at_news DESC LIMIT 10 OFFSET ?";
	//リアルとフェイクの切り替え
	public static final String SELECT_REAL_FAKE = "SELECT * FROM news WHERE real_fake_news = ? ORDER BY updated_at_news DESC LIMIT 10 OFFSET ?";
//	public static final String SELECT_FAKE = "SELECT * FROM news WHERE real_fake_news = 0 ORDER BY updated_at_news DESC LIMIT 10 OFFSET ?";
	//更新・削除のためのニュース検索
	public static final String SELECT_NEWS = "SELECT * FROM news WHERE id_news = ?";
	//insertNews.html用
	public static final String INSERT = "INSERT INTO news(title_news, real_fake_news, contents_news, id_user) VALUES(?,?,?,?)";
	//updateNews.html用
	public static final String UPDATE = "UPDATE news SET title_news = ?,real_fake_news = ?,contents_news = ? WHERE id_news = ?";
	//news.html用
	public static final String DELETE = "DELETE FROM news WHERE id_news = ?";


	//newsAll.htmlの一覧表示
	public ArrayList<News>findAll(Connection con) throws SQLException{
		ArrayList<News>nes = new ArrayList<>();

		//SQLインジェクション対策したStatement作成
		PreparedStatement pstmt = con.prepareStatement(SELECT_ALL);
		//SQL実行　実行結果はResultSet
		ResultSet rs = pstmt.executeQuery();
		nes = getAll(rs);
		//Statementのクローズ
		pstmt.close();
		return nes;
	}

	public ArrayList<News> findPerPage(Connection con, String current_page) throws SQLException {
		ArrayList<News> nes = new ArrayList<>();
		String sql = SELECT_ALL;
		PreparedStatement pstmt = con.prepareStatement(sql);
		int num = (Integer.parseInt(current_page) - 1) * 10;
		pstmt.setInt(1, num);
		ResultSet rs = pstmt.executeQuery();
		nes = getAll(rs);
		pstmt.close();
		return nes;
	}

	//リアル
	public ArrayList<News>findRealFakePerPage(Connection con, String current_page, String realFake) throws SQLException{
		ArrayList<News>nes = new ArrayList<>();
		String sql = SELECT_REAL_FAKE;
		//SQLインジェクション対策したStatement作成
		PreparedStatement pstmt = con.prepareStatement(sql);
		int num = (Integer.parseInt(current_page) - 1) * 10;
		pstmt.setString(1, realFake);
		pstmt.setInt(2, num);
		//SQL実行　実行結果はResultSet
		ResultSet rs = pstmt.executeQuery();
		nes = getAll(rs);
		//Statementのクローズ
		pstmt.close();
		return nes;
	}

//	//フェイク
//	public ArrayList<News>findFake(Connection con) throws SQLException{
//		ArrayList<News>nes = new ArrayList<>();
//
//		//SQLインジェクション対策したStatement作成
//		PreparedStatement pstmt = con.prepareStatement(SELECT_FAKE);
//
//		//SQL実行　実行結果はResultSet
//		ResultSet rs = pstmt.executeQuery();
//
//		nes = getAll(rs);
//		//Statementのクローズ
//		pstmt.close();
//
//		return nes;
//	}

	//news検索
		public ArrayList<News>findNews(Connection con,String idNews) throws SQLException{
			ArrayList<News>nes = new ArrayList<>();

			//SQLインジェクション対策したStatement作成
			PreparedStatement pstmt = con.prepareStatement(SELECT_NEWS);
			pstmt.setString(1, idNews);

			//SQL実行　実行結果はResultSet
			ResultSet rs = pstmt.executeQuery();

			nes = getAll(rs);
			//Statementのクローズ
			pstmt.close();

			return nes;
		}

	//insertNews.html
	public void insertRecord(Connection con,String title,String realFake,String contents,String idUser) throws SQLException {
		//SQLインジェクション対策したStatment作成
		PreparedStatement pstmt = con.prepareStatement(INSERT);

		//SQLへの設定
		pstmt.setString(1, title);
		pstmt.setString(2, realFake);
		pstmt.setString(3, contents);
		pstmt.setString(4, idUser);

		pstmt.executeUpdate();

		//Statmentのクローズ
		pstmt.close();
	}

	//updateNews.html
	public void updateRecord(Connection con,String title,String realFake,String contents,String idNews) throws SQLException {
		//SQLインジェクション対策したStatment作成
		PreparedStatement pstmt = con.prepareStatement(UPDATE);

		//SQLへの設定
		pstmt.setString(1, title);
		pstmt.setString(2, realFake);
		pstmt.setString(3, contents);
		pstmt.setString(4, idNews);

		pstmt.executeUpdate();

		//Statmentのクローズ
		pstmt.close();
	}

	//news.html
	public void deleteRecord(Connection con,String idNews) throws SQLException {
		//SQLインジェクション対策したStatment作成
		PreparedStatement pstmt = con.prepareStatement(DELETE);

		//SQLへの設定
		pstmt.setString(1, idNews);

		pstmt.executeUpdate();

		//Statmentのクローズ
		pstmt.close();
	}

	public ArrayList<News> getAll(ResultSet rs) throws SQLException {
		ArrayList<News> nes = new ArrayList<>();
		while(rs.next()) {
			//Bandのインスタンス生成＋１レコードの情報を格納
			News ne = new News();
			ne.setId_news(rs.getString("id_news"));
			ne.setTitle_news(rs.getString("title_news"));
			ne.setReal_fake_news(rs.getString("real_fake_news"));
			ne.setContents_news(rs.getString("contents_news"));
			ne.setCreated_at_news(rs.getString("created_at_news"));
			ne.setUpdated_at_news(rs.getString("updated_at_news"));
			ne.setId_user(rs.getString("id_user"));
			//1レコード文の情報を詰めてコレクションに追加
			nes.add(ne);
		}
		return nes;

	}

}
