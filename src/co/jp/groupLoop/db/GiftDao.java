package co.jp.groupLoop.db;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import co.jp.groupLoop.entity.Gift;

public interface GiftDao {

	/**
	 *ギフトを取得
	 * @param con データペース接続情報
	 * @param con id_giftの主キー
	 * @return 該当のGiftデータ
	 * @throws SQLException
	 */
	public ArrayList<Gift> find(Connection con, String id) throws SQLException;

}
