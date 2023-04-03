SET FOREIGN_KEY_CHECKS = 0;
-- ユーザー
DROP TABLE user;
CREATE TABLE user (
  id_user INT AUTO_INCREMENT PRIMARY KEY,
  name_user VARCHAR(100) NOT NULL UNIQUE,
  birthday_user VARCHAR(30) NOT NULL,
  email_user VARCHAR(100) NOT NULL UNIQUE,
  password_user VARCHAR(100) NOT NULL UNIQUE,
  is_admin_user BOOLEAN NOT NULL DEFAULT 0,
  is_existance_user BOOLEAN NOT NULL DEFAULT 1,
  age_user INT,
  point_user INT DEFAULT 0,
  hobby_one_user TEXT,
  hobby_two_user TEXT,
  hobby_three_user TEXT,
  photo_user VARCHAR(300)
)
AUTO_INCREMENT = 10000;

-- イベント
DROP TABLE event;
CREATE TABLE event (
  id_event INT AUTO_INCREMENT PRIMARY KEY,
  title_event VARCHAR(100) NOT NULL,
  category_event INT,
  max_participant_event INT NOT NULL,
  contents_event TEXT NOT NULL,
  created_at_event TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at_event TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  id_user INT,
  FOREIGN KEY (id_user) REFERENCES user (id_user) ON DELETE SET NULL
);

-- 趣味テーブル
DROP TABLE hobby;
CREATE TABLE hobby (
  id_hobby INT AUTO_INCREMENT PRIMARY KEY,
  name_hobby VARCHAR(50) NOT NULL
);

-- カテゴリー
DROP TABLE category;
CREATE TABLE category (
  id_category INT AUTO_INCREMENT PRIMARY KEY,
  name_category TEXT NOT NULL
);

-- 景品テーブル
DROP TABLE gift;
CREATE TABLE gift (
  id_gift INT AUTO_INCREMENT PRIMARY KEY,
  name_gift TEXT NOT NULL,
  point_gift INT NOT NULL,
  image_gift VARCHAR(300) NOT NULL
);

-- ニュース
DROP TABLE news;
CREATE TABLE news (
  id_news INT AUTO_INCREMENT PRIMARY KEY,
  title_news VARCHAR(100) NOT NULL,
  real_fake_news BOOLEAN NOT NULL,
  contents_news TEXT NOT NULL,
  created_at_news TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at_news TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  id_user INT,
  FOREIGN KEY (id_user) REFERENCES user (id_user) ON DELETE SET NULL
);

-- 参加者
DROP TABLE participant;
CREATE TABLE participant (
  id_participant INT AUTO_INCREMENT PRIMARY KEY,
  id_user INT,
  id_event INT,
  FOREIGN KEY (id_user) REFERENCES user (id_user) ON DELETE SET NULL,
  FOREIGN KEY (id_event) REFERENCES event (id_event) ON DELETE SET NULL
);

-- コメント
DROP TABLE comment;
CREATE TABLE comment (
  id_comment INT AUTO_INCREMENT PRIMARY KEY,
  contents_comment TEXT NOT NULL,
  created_at_comment TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  id_user INT,
  id_event INT,
  id_news INT,
  FOREIGN KEY (id_user) REFERENCES user (id_user) ON DELETE SET NULL,
  FOREIGN KEY (id_event) REFERENCES event (id_event) ON DELETE SET NULL,
  FOREIGN KEY (id_news) REFERENCES news (id_news) ON DELETE SET NULL
);
SET FOREIGN_KEY_CHECKS = 1;


-- テストデータ
-- ユーザー
INSERT INTO user(name_user, birthday_user, email_user, password_user, is_admin_user) VALUES('長谷川 次郎','2021/0623','hasegawa.j@eagle','c8e467307cc4a2bd11b52282da0e7295ba4f4ea7', 1); -- 10000hj0001
INSERT INTO user(name_user, birthday_user, email_user, password_user, is_admin_user) VALUES('町田 五郎','2021/0623','machida.g@eagle','6575ddc9594bacd89734b20de31474142ba7bec1', 1); -- 10001mg0001
INSERT INTO user(name_user, birthday_user, email_user, password_user, is_admin_user) VALUES('小野 四郎','2021/0623','ono.s@eagle','285fa24eabc642f396b97637e876b8c173b38b38', 1); -- 10002os0001
INSERT INTO user(name_user, birthday_user, email_user, password_user, is_admin_user) VALUES('斎藤 六郎','2021/0623','saitou.r@eagle','6e97b0f43a3a35f3e341590cc52f93e5c3b82771', 1); -- 10003sr0001
INSERT INTO user(name_user, birthday_user, email_user, password_user, is_admin_user) VALUES('五反田 太郎','2021/0623','gotanda.t@eagle','c7c5e4e12423b74a626d1dfa021550644554203d', 1); -- 10004gt0001
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('南房 鈴花','2021/0623','nambo.s@eagle','9145f85d6691b87b30bb15a8fa81226bd55e0a04'); -- 10005ns0001
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('中川 嘉高','2021/0623','nakagawa.y@eagle','1d9fe5d918430c6b6aff5bbbf95c0e47c661fd82'); -- 10006ny0001
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('森田 滉平','2021/0623','morita.k@eagle','c4d64a2e1ca8bf940a30529eca5cb40f3e714825'); -- 10007mk0001
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('菊田 花歩','2021/0623','kikuta.k@eagle','7c459fafda214c1761b21f54a90f0b38a4134f66'); -- 10008kk0001
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('田村 凌','2021/0623','tamura.r@eagle','ce3728d7ff6712f054db3a52aa98ce109ec23e71'); -- 10009tr0001
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('李 健宇','2021/0623','ri.k@eagle','d88d60391610c00e6fdedcd3eddd5c845c545099'); -- 10010rk0001
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('山田 太郎','2021/0623','yamada.t@eagle','18ecbd7be102877e774fa7452ee9e721182b7f12'); -- 10011yt0001
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('山田 花子','2021/0623','yamada.h@eagle','e1429e737724386802e0f2b211d72b6e6a7478f1'); -- yh0001
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('小林 太郎','2021/0623','kobayashi.j@eagle','b1001adae480c1d40a8b9cffa068713d32603306'); -- kt0001
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('小林 花子','2021/0623','kobayashi.h@eagle','45b693a5e79227196b78d26e682c571847d1531e'); -- kh0001
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('佐藤 次郎','2021/0623','satou.j@eagle','53b749205894149511a1a7950256b957ccfe665e'); -- sj0001
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('佐藤 花子','2021/0623','satou.h@eagle','1f5dfcc4761f90b3b60679281c7aaea41d773324'); -- sh0001
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('青山 花子','2021/0623','aoyama.h@eagle','986ef61ae0842fec8daf0e333b61c417f4368c58'); -- ah0001
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('井上 誠','2021/0623','inoue.m@eagle','cfa107da58e658e8c293b421bd8ab98a88c911ae'); -- im0001
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('上野 太郎','2021/0623','ueno.t@eagle','ba93d594f5417c5c83aba204433829fe105f270e'); -- ut0001
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('秋葉 花子','2021/0623','akiba.h@eagle','c98fffa63d0312c06cb7cda42f61f0c7e44ab352'); -- ah0002
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('新橋 次郎','2021/0623','shinbashi.j@eagle','6979c428ffad396a7abb37216db5fb72b75851c1'); -- sj0002
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('佐々木 三郎','2021/0623','sasaki.s@eagle','c9a26dbc1c49d17140317a0b6ec10876e6d87d7a'); -- sj0003
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('工藤 太郎','2021/0623','kudou.t@eagle','6a6e7d6d9962dd913b62b57a16b5d8a779eb9c9a'); -- kt0002
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('近藤 花子','2021/0623','kondou.h@eagle','2e7b23ea7161225d2f387f186d5a482ad0cda9e6'); -- kh0002
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('佐藤 誠','2021/0623','satou.m@eagle','18083713353224bb0d0b29b5911463c83b1c95d9'); -- sm0001
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('佐藤 太郎','2021/0623','satou.t@eagle','def9c089c9086767ce52fb3d852ef203e70bdd4a'); -- st0001
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('中田 花','2021/0623','nakata.h@eagle','b4e9b0eb989e1f3778d8df9841cfdf957069d6bc'); -- nh0001
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('佐野 太郎','2021/0623','sano.t@eagle','acfa15b8089a586b89f596afd80267b5be4362fd'); -- st0002
INSERT INTO user(name_user, birthday_user, email_user, password_user) VALUES('長谷川 太郎','2021/0623','hasegawa.t@eagle','ce39ef261b41be71a317f9833a4cca81efed9f96'); --ht0001

-- 趣味
INSERT INTO hobby(name_hobby) VALUES('漫画');
INSERT INTO hobby(name_hobby) VALUES('映画鑑賞');
INSERT INTO hobby(name_hobby) VALUES('動画鑑賞');
INSERT INTO hobby(name_hobby) VALUES('音楽鑑賞');
INSERT INTO hobby(name_hobby) VALUES('ドラマ鑑賞');
INSERT INTO hobby(name_hobby) VALUES('アニメ鑑賞');
INSERT INTO hobby(name_hobby) VALUES('バラエティー番組鑑賞');
INSERT INTO hobby(name_hobby) VALUES('読書');
INSERT INTO hobby(name_hobby) VALUES('ボードゲーム');
INSERT INTO hobby(name_hobby) VALUES('料理');
INSERT INTO hobby(name_hobby) VALUES('掃除');
INSERT INTO hobby(name_hobby) VALUES('勉強');
INSERT INTO hobby(name_hobby) VALUES('カラオケ');
INSERT INTO hobby(name_hobby) VALUES('散歩');
INSERT INTO hobby(name_hobby) VALUES('ランニング');
INSERT INTO hobby(name_hobby) VALUES('サッカー');
INSERT INTO hobby(name_hobby) VALUES('海外サッカー観戦');
INSERT INTO hobby(name_hobby) VALUES('野球');
INSERT INTO hobby(name_hobby) VALUES('バスケットボール');
INSERT INTO hobby(name_hobby) VALUES('ゴルフ');
INSERT INTO hobby(name_hobby) VALUES('テニス');
INSERT INTO hobby(name_hobby) VALUES('ダンス');
INSERT INTO hobby(name_hobby) VALUES('ヨガ');
INSERT INTO hobby(name_hobby) VALUES('サーフィン');
INSERT INTO hobby(name_hobby) VALUES('筋トレ');
INSERT INTO hobby(name_hobby) VALUES('キャンプ');
INSERT INTO hobby(name_hobby) VALUES('食べ歩き');
INSERT INTO hobby(name_hobby) VALUES('カフェ巡り');
INSERT INTO hobby(name_hobby) VALUES('ガーデニング');
INSERT INTO hobby(name_hobby) VALUES('ファッション');
INSERT INTO hobby(name_hobby) VALUES('ボランティア');
INSERT INTO hobby(name_hobby) VALUES('温泉巡り');
INSERT INTO hobby(name_hobby) VALUES('美術館巡り');

-- カテゴリー
INSERT INTO category(name_category) VALUES('飲み会');
INSERT INTO category(name_category) VALUES('ゲーム');
INSERT INTO category(name_category) VALUES('旅行');
INSERT INTO category(name_category) VALUES('カラオケ');
INSERT INTO category(name_category) VALUES('結婚式');
INSERT INTO category(name_category) VALUES('スキー');
INSERT INTO category(name_category) VALUES('お花見');
INSERT INTO category(name_category) VALUES('その他');

-- 景品
INSERT INTO gift(name_gift,point_gift,image_gift) VALUES('カップ麵',5,'./images/cupNoodles.png');
INSERT INTO gift(name_gift,point_gift,image_gift) VALUES('お弁当',10,'./images/bento.jpg');
INSERT INTO gift(name_gift,point_gift,image_gift) VALUES('プリペイドカード',20,'./images/prepaidCard.jpg');

-- イベント
INSERT INTO event(title_event,category_event,max_participant_event,contents_event,id_user)
 VALUES('今夜８時飲み会',1,6,'飲みましょう！！！',10000);
INSERT INTO event(title_event, category_event, max_participant_event, contents_event, id_user)
 VALUES('システム修正', 8, 100, '今日の夜11時から朝7時までやります。', 10000);
INSERT INTO event(title_event,category_event,max_participant_event,contents_event,id_user)
 VALUES('APEXをやろ！',2,3,'今夜8時から、12時までで！',10009);
INSERT INTO event(title_event,category_event,max_participant_event,contents_event,id_user)
 VALUES('明日北海道へ！',3,6,'明日朝、6時に池袋駅集まる！',10008);
INSERT INTO event(title_event,category_event,max_participant_event,contents_event,id_user)
 VALUES('今夜８時飲カラオケ',4,6,'たくさん歌を歌ってください！',10001);
INSERT INTO event(title_event,category_event,max_participant_event,contents_event,id_user)
 VALUES('明後日　結婚式',5,1000,'明後日、10時に東京ドームで行う！',10002);
INSERT INTO event(title_event,category_event,max_participant_event,contents_event,id_user)
 VALUES('来年1月1日北海道で！スキー！',6,6,'いい雪！いい天気！いい感じ！行きましょう！',10008);
INSERT INTO event(title_event,category_event,max_participant_event,contents_event,id_user)
 VALUES('来年4月　お花見！',7,7,'いい花！いい匂い！いい場所！桜たくさんある！行きましょう！',10010);
INSERT INTO event(title_event,category_event,max_participant_event,contents_event,id_user)
 VALUES('うまい焼肉！',8,6,'コロナのため、このイベントを取り消します！（編集済）',10008);
INSERT INTO event(title_event,category_event,max_participant_event,contents_event,id_user)
 VALUES('映画館行きましょうか？',8,10,'怖い映画を見に行きましょう！人数が多いから、安心できる！',10008);
INSERT INTO event(title_event,category_event,max_participant_event,contents_event,id_user)
 VALUES('飲み会！！',1,6,'今夜9時に！うまいお酒！たくさん飲んでください！',10000);
INSERT INTO event(title_event,category_event,max_participant_event,contents_event,id_user)
 VALUES('今日の残業',8,6,'早めに仕事を完成したので、残業は要らない！（編集済）',10001);
INSERT INTO event(title_event,category_event,max_participant_event,contents_event,id_user)
 VALUES('サッカー！',8,12,'いつもコーディングするのは、頭絶対痛くなる！サッカーをして、リラックスを取りましょう！',10002);
INSERT INTO event(title_event,category_event,max_participant_event,contents_event,id_user)
 VALUES('来週！韓国へ！',3,6,'韓国料理がうまいので！来週食べに行きましょうか？',10003);
INSERT INTO event(title_event,category_event,max_participant_event,contents_event,id_user)
 VALUES('明後日　カラオケ！',4,6,'一緒に歌を歌いましょう！',10004);

-- 参加者
INSERT INTO participant(id_user, id_event) VALUES(10002, 1);
INSERT INTO participant(id_user, id_event) VALUES(10004, 3);
INSERT INTO participant(id_user, id_event) VALUES(10002, 1);
INSERT INTO participant(id_user, id_event) VALUES(10002, 1);

-- ニュース
INSERT INTO news(title_news, real_fake_news, contents_news, id_user) VALUES('味噌汁風呂作ってみた',0, '東海オンエアの真似をしてみました', 10005);
INSERT INTO news(title_news, real_fake_news, contents_news, id_user) VALUES('ライオン飼い始めました',0, 'ついにライオン飼ったよ～～！', 10006);
INSERT INTO news(title_news, real_fake_news, contents_news, id_user) VALUES('部長のカツラ',0, '久々出社したら部長のデスクにカツラがおいてあった、、、まさか、、、？', 10006);
INSERT INTO news(title_news, real_fake_news, contents_news, id_user) VALUES('猫見つけた～～！',1, '会社の前にかわいい猫がいた', 10007);
INSERT INTO news(title_news, real_fake_news, contents_news, id_user) VALUES('最高の寿司を食べた',1, '誕生日に回らない寿司をご馳走してもらいました！！', 10008);
INSERT INTO news(title_news, real_fake_news, contents_news, id_user) VALUES('結婚します♡',1, '素敵な方にプロポーズされた、、、夢を見ました', 10009);
INSERT INTO news(title_news, real_fake_news, contents_news, id_user) VALUES('部長のカツラ続報',0, '以前の飲み会で使ったものでした。安心した！', 10001);
INSERT INTO news(title_news, real_fake_news, contents_news, id_user) VALUES('zoomでミスった',1, 'zoom会議の後切り忘れて汚い部屋を大公開しちゃいました。皆さんも気をつけてください！', 10002);
INSERT INTO news(title_news, real_fake_news, contents_news, id_user) VALUES('ランチにおすすめ！',1, '会社の近くにすごく綺麗でおいしいお店を見つけました！正面のコンビニを右に曲がってすぐのイタリアンです。パスタがおすすめです。', 10003);
INSERT INTO news(title_news, real_fake_news, contents_news, id_user) VALUES('zoom飲み',1, 'こないだのzoom飲みめっちゃ盛り上がったので次回参加者増えるの期待してます！', 10010);
INSERT INTO news(title_news, real_fake_news, contents_news, id_user) VALUES('からあげ',1, '至高のからあげ作りました！毎日食べちゃう、、、', 10003);
INSERT INTO news(title_news, real_fake_news, contents_news, id_user) VALUES('10キロ太った',0, '毎日からあげ食べてたら太りました', 10003);


-- コメント
INSERT INTO comment(contents_comment, id_user, id_event, id_news) VALUES('Hello World Event', 10000, 1, NULL);
INSERT INTO comment(contents_comment, id_user, id_event, id_news) VALUES('', 10000, 1, NULL);
INSERT INTO comment(contents_comment, id_user, id_event, id_news) VALUES('Hello World Event', 10000, 1, NULL);
INSERT INTO comment(contents_comment, id_user, id_event, id_news) VALUES('Hello World Event', 10000, 1, NULL);
INSERT INTO comment(contents_comment, id_user, id_event, id_news) VALUES('Hello World Event', 10000, 1, NULL);


INSERT INTO comment(contents_comment, id_user, id_event, id_news) VALUES('Hello World News', 10000, NULL, 1);
INSERT INTO comment(contents_comment, id_user, id_event, id_news) VALUES('Hello World News', 10000, NULL, 1);
INSERT INTO comment(contents_comment, id_user, id_event, id_news) VALUES('Hello World News', 10000, NULL, 1);
INSERT INTO comment(contents_comment, id_user, id_event, id_news) VALUES('Hello World News', 10000, NULL, 1);


UPDATE user SET age_user = 43,hobby_one_user = 'ゲーム',hobby_two_user = 'サッカー',hobby_three_user = '野球',photo_user = 'upload/' WHERE id_user = 10000;
UPDATE user SET age_user = 24,hobby_one_user = 'ヨガ',hobby_two_user = 'ファッション',hobby_three_user = '映画鑑賞',photo_user = 'upload/' WHERE id_user = 10001;
UPDATE user SET age_user = 57,hobby_one_user = 'アニメ鑑賞',hobby_two_user = '睡眠',hobby_three_user = '音楽鑑賞',photo_user = 'upload/' WHERE id_user = 10002;
UPDATE user SET age_user = 26,hobby_one_user = 'ボードゲーム',hobby_two_user = '料理',hobby_three_user = '筋トレ',photo_user = 'upload/' WHERE id_user = 10003;
UPDATE user SET age_user = 27,hobby_one_user = 'ヨガ',hobby_two_user = '食べ歩き',hobby_three_user = 'ファッション',photo_user = 'upload/' WHERE id_user = 10004;
UPDATE user SET age_user = 22,hobby_one_user = 'ヨガ',hobby_two_user = '食べ歩き',hobby_three_user = 'ダンス',photo_user = 'upload/' WHERE id_user = 10005;
UPDATE user SET age_user = 22,hobby_one_user = '筋トレ',hobby_two_user = 'サーフィン',hobby_three_user = 'ダンス',photo_user = 'upload/' WHERE id_user = 10006;
UPDATE user SET age_user = 22,hobby_one_user = 'テニス',hobby_two_user = 'アニメ鑑賞',hobby_three_user = 'ゲーム',photo_user = 'upload/' WHERE id_user = 10007;
UPDATE user SET age_user = 22,hobby_one_user = '料理',hobby_two_user = 'カラオケ',hobby_three_user = '食べ歩き',photo_user = 'upload/' WHERE id_user = 10008;
UPDATE user SET age_user = 22,hobby_one_user = 'ゲーム',hobby_two_user = '海外サッカー観戦',hobby_three_user = '動画鑑賞',photo_user = 'upload/' WHERE id_user = 10009;
UPDATE user SET age_user = 27,hobby_one_user = '筋トレ',hobby_two_user = '映画鑑賞',hobby_three_user = '漫画',photo_user = 'upload/' WHERE id_user = 10010;
UPDATE user SET age_user = 30,hobby_one_user = 'ゲーム',hobby_two_user = 'サッカー',hobby_three_user = '野球',photo_user = 'upload/' WHERE id_user = 10011;
UPDATE user SET age_user = 36,hobby_one_user = '睡眠',hobby_two_user = 'サッカー',hobby_three_user = '野球',photo_user = 'upload/' WHERE id_user = 10012;
UPDATE user SET age_user = 23,hobby_one_user = 'バスケットボール',hobby_two_user = 'ガーデニング',hobby_three_user = 'キャンプ',photo_user = 'upload/' WHERE id_user = 10013;
UPDATE user SET age_user = 28,hobby_one_user = '温泉巡り',hobby_two_user = 'ボランティア',hobby_three_user = 'ゴルフ',photo_user = 'upload/' WHERE id_user = 10014;
UPDATE user SET age_user = 24,hobby_one_user = '散歩',hobby_two_user = 'ランニング',hobby_three_user = 'カラオケ',photo_user = 'upload/' WHERE id_user = 10015;
UPDATE user SET age_user = 25,hobby_one_user = 'キャンプ',hobby_two_user = '掃除',hobby_three_user = '海外サッカー観戦',photo_user = 'upload/' WHERE id_user = 10016;
UPDATE user SET age_user = 25,hobby_one_user = 'ゲーム',hobby_two_user = 'サッカー',hobby_three_user = 'ドラマ鑑賞',photo_user = 'upload/' WHERE id_user = 10017;
UPDATE user SET age_user = 27,hobby_one_user = 'ゲーム',hobby_two_user = '漫画',hobby_three_user = 'バラエティー番組鑑賞',photo_user = 'upload/' WHERE id_user = 10018;
UPDATE user SET age_user = 28,hobby_one_user = '読書',hobby_two_user = '漫画',hobby_three_user = '掃除',photo_user = 'upload/' WHERE id_user = 10019
UPDATE user SET age_user = 29,hobby_one_user = 'ボードゲーム',hobby_two_user = '料理',hobby_three_user = '音楽鑑賞',photo_user = 'upload/' WHERE id_user = 10020;
UPDATE user SET age_user = 31,hobby_one_user = 'ランニング',hobby_two_user = '散歩',hobby_three_user = '野球',photo_user = 'upload/' WHERE id_user = 10021;
UPDATE user SET age_user = 32,hobby_one_user = 'ゴルフ',hobby_two_user = '筋トレ',hobby_three_user = '美術館巡り',photo_user = 'upload/' WHERE id_user = 10022;
UPDATE user SET age_user = 53,hobby_one_user = '温泉巡り',hobby_two_user = 'サッカー',hobby_three_user = '読書',photo_user = 'upload/' WHERE id_user = 10023;
UPDATE user SET age_user = 55,hobby_one_user = 'カラオケ',hobby_two_user = '美術館巡り',hobby_three_user = 'サッカー',photo_user = 'upload/' WHERE id_user = 10024;
UPDATE user SET age_user = 33,hobby_one_user = 'カフェ巡り',hobby_two_user = 'ガーデニング',hobby_three_user = 'ボランティア',photo_user = 'upload/' WHERE id_user = 10025;
UPDATE user SET age_user = 27,hobby_one_user = '勉強',hobby_two_user = '読書',hobby_three_user = 'ドラマ鑑賞',photo_user = 'upload/' WHERE id_user = 10026
UPDATE user SET age_user = 22,hobby_one_user = 'バスケットボール',hobby_two_user = '音楽鑑賞',hobby_three_user = 'サーフィン',photo_user = 'upload/' WHERE id_user = 10027;
UPDATE user SET age_user = 45,hobby_one_user = 'ヨガ',hobby_two_user = '勉強',hobby_three_user = 'アニメ鑑賞',photo_user = 'upload/' WHERE id_user = 10028;
UPDATE user SET age_user = 26,hobby_one_user = 'ゴルフ',hobby_two_user = 'サッカー',hobby_three_user = '映画鑑賞',photo_user = 'upload/' WHERE id_user = 10029;