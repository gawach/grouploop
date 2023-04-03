package co.jp.groupLoop.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PagingService {
	public String[] adjustPaging(Connection con, String page) throws SQLException {
		int launch = Integer.parseInt(page) - 2;
		int totalPageNum = totalRecord(con);
		String[] launchButton_totalPageNum = new String[2];
		if ((totalPageNum % 10) > 0) {
			//表示件数が、中途半端な時はページ数＋１
			totalPageNum = (totalPageNum / 10) + 1;
		} else {
			totalPageNum /= 10;
		}
		int flow = launch + 4 - totalPageNum;
		if (launch <= 0) {
			//下回った分をスタート地点に足す
			launch += (launch - 1) * -1; //0も下回ったとカウントするから追加で-1
		} else if (flow > 0) {
			//上回った分をスタート地点から引く
			launch -= flow;
		}
		launchButton_totalPageNum[0] = String.valueOf(launch);
		launchButton_totalPageNum[1] = String.valueOf(totalPageNum);
		return launchButton_totalPageNum;
	}

	public int totalRecord(Connection con) throws SQLException {
		int amountRecord = 0;
		String sql = "SELECT COUNT(name_gamer) FROM ～";
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		amountRecord = rs.getInt(1);

		return amountRecord;
	}

}
