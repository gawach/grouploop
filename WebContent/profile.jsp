<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>GROUP LOOP plofile</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="ここにサイト説明を入れます">
<meta name="keywords" content="キーワード１,キーワード２,キーワード３,キーワード４,キーワード５">
<!-- コピーしてください！ -->
<!--Bootstrap4設定-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link rel="stylesheet" href="css/_sampleHeader.css">
<!--                        -->
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/openclose.js"></script>
<script type="text/javascript" src="ddmenu_min.js"></script>
<link rel="stylesheet" href="css/fixmenu.css">
<link rel="icon" href="images/image.png" />
<script type="text/javascript" src="js/fixmenu.js"></script>
</head>
​
<body>


	<header>
		<!-- ナビゲーションバー -->
		<div class="header">
			<nav class="navbar fixed-top"
				style="background-image: linear-gradient(135deg, #FD6E6A 10%, #FFC600 100%);"
				id="navbarNavbar">
				<!-- タイトル -->
				<a class="navbar-brand" href="menu.html"><img
					src="images/image.png" alt="グループループのロゴ" id="logo-img"></a> <a
					class="navbar-brand col-1 offset-9" style="color: black;"
					href="profileView.html">山田太郎</a>

				<!-- ハンバーガーメニュー -->
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNav" aria-controls="navbarNav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<!-- ナビゲーションメニュー -->
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item active d-flex justify-content-end"><a
							class="nav-link" href="menu.html"><i
								class="fas fa-home fa-2x"></i> <span
								style="margin: 0 13px 0 10px;">Home</span> </a></li>
						<li class="nav-item d-flex justify-content-end"><a
							class="nav-link" href="newsAll.html"><i
								class="far fa-newspaper fa-2x"></i> <span
								style="margin: 0 17px 0 10px;">News</span> </a></li>
						<li class="nav-item d-flex justify-content-end"><a
							class="nav-link" href="eventSelect.html"><i
								class="far fa-calendar-check fa-2x"></i> <span
								style="margin: 0 16px 0 10px;">Event</span> </a></li>
						<li class="nav-item d-flex justify-content-end"><a
							class="nav-link" href="#" data-toggle="tooltip"
							data-placement="top" title="工事中"><i
								class="fas fa-mail-bulk fa-2x"></i> <s><span
									style="margin: 0 19px 0 10px;">&nbsp;Box&nbsp;</span></s> </a></li>
						<li class="nav-item d-flex justify-content-end"><a
							class="nav-link" href="profileView.html"> <i
								class="far fa-user-circle fa-2x"></i> <span
								style="margin: 0 14px 0 10px;">Profile</span>
						</a></li>
						<li class="nav-item d-flex justify-content-end"><a
							class="nav-link" href="pointUse.html"><i
								class="fab fa-product-hunt fa-2x"></i> <span
								style="margin: 0 23px 0 10px;">Point</span> </a></li>
						<li class="nav-item d-flex justify-content-end"><a
							class="nav-link" href="loginForm.html"><i
								class="fas fa-sign-in-alt fa-2x"></i> <span
								style="margin: 0 20px 0 10px;">Login</span> </a></li>
						<li class="nav-item d-flex justify-content-end"><a
							class="nav-link" href="loginForm.html" onClick="return Check()"><i
								class="fas fa-sign-out-alt fa-2x"></i> <span
								style="margin: 0 10px;">Logout</span> </a></li>
						<script type="text/javascript">
							function Check() {
								var checked = confirm("ログアウトしますか？");
								if (checked == true) {
									return true;
								} else {
									return false;
								}
							}
						</script>
					</ul>
				</div>
			</nav>
		</div>
	</header>

	<div id="container">


		​
		<!--<div id="contents">-->
		​
		<div id="main">
			​
			<div style="margin: -40px;">
				<section>
			</div>
			​
			<h2>プロフィール登録</h2>
			​
			<table class="ta1">

				​ ​

				<!-- <tr>
            <th>地図</th>
            <td><a href="http://template-party.com/file/pickup_googlemap.html">Google Mapを使いたい人はこちらの解説をご覧下さい。</a></td>
        </tr> -->
				​
				<tr>
					<th>趣味1</th>
					<td><select name="趣味選択">
							<option value="" selected="selected">趣味選択</option>
							<option value="北海道">ゲーム</option>
							<option value="石川県">漫画</option>
							<option value="青森県">映画鑑賞</option>
							<option value="岩手県">動画鑑賞</option>
							<option value="宮城県">睡眠</option>
							<option value="石川県">音楽鑑賞</option>
							<option value="秋田県">ドラマ鑑賞</option>
							<option value="山形県">アニメ鑑賞</option>
							<option value="石川県">バラエティー番組鑑賞</option>
							<option value="福島県">読書</option>
							<option value="石川県">ボードゲーム</option>
							<option value="茨城県">料理</option>
							<option value="栃木県">掃除</option>
							<option value="石川県">勉強</option>
							<option value="静岡県">カラオケ</option>
							<option value="群馬県">散歩</option>
							<option value="埼玉県">ランニング</option>
							<option value="千葉県">サッカー</option>
							<option value="静岡県">海外サッカー観戦</option>
							<option value="東京都">野球</option>
							<option value="神奈川県">バスケットボール</option>
							<option value="新潟県">ゴルフ</option>
							<option value="富山県">テニス</option>
							<option value="石川県">ダンス</option>
							<option value="京都府">ヨガ</option>
							<option value="石川県">サーフィン</option>
							<option value="福井県">筋トレ</option>
							<option value="山梨県">キャンプ</option>
							<option value="長野県">食べ歩き</option>
							<option value="石川県">カフェ巡り</option>
							<option value="岐阜県">ガーデニング</option>

							<option value="愛知県">ファッション</option>
							<option value="三重県">ボランティア</option>
							<option value="滋賀県">温泉巡り</option>

							<option value="大阪府">美術館巡り</option>


					</select></td>
				</tr>
				​
				<tr>
					<th>趣味2</th>
					<td><select name="趣味選択">
							<option value="" selected="selected">趣味選択</option>
							<option value="北海道">ゲーム</option>
							<option value="石川県">漫画</option>
							<option value="青森県">映画鑑賞</option>
							<option value="岩手県">動画鑑賞</option>
							<option value="宮城県">睡眠</option>
							<option value="石川県">音楽鑑賞</option>
							<option value="秋田県">ドラマ鑑賞</option>
							<option value="山形県">アニメ鑑賞</option>
							<option value="石川県">バラエティー番組鑑賞</option>
							<option value="福島県">読書</option>
							<option value="石川県">ボードゲーム</option>
							<option value="茨城県">料理</option>
							<option value="栃木県">掃除</option>
							<option value="石川県">勉強</option>
							<option value="静岡県">カラオケ</option>
							<option value="群馬県">散歩</option>
							<option value="埼玉県">ランニング</option>
							<option value="千葉県">サッカー</option>
							<option value="静岡県">海外サッカー観戦</option>
							<option value="東京都">野球</option>
							<option value="神奈川県">バスケットボール</option>
							<option value="新潟県">ゴルフ</option>
							<option value="富山県">テニス</option>
							<option value="石川県">ダンス</option>
							<option value="京都府">ヨガ</option>
							<option value="石川県">サーフィン</option>
							<option value="福井県">筋トレ</option>
							<option value="山梨県">キャンプ</option>
							<option value="長野県">食べ歩き</option>
							<option value="石川県">カフェ巡り</option>
							<option value="岐阜県">ガーデニング</option>

							<option value="愛知県">ファッション</option>
							<option value="三重県">ボランティア</option>
							<option value="滋賀県">温泉巡り</option>

							<option value="大阪府">美術館巡り</option>


					</select></td>
				</tr>

				<tr>
					<th>趣味3</th>
					<td><select name="趣味選択">
							<option value="" selected="selected">趣味選択</option>
							<option value="北海道">ゲーム</option>
							<option value="石川県">漫画</option>
							<option value="青森県">映画鑑賞</option>
							<option value="岩手県">動画鑑賞</option>
							<option value="宮城県">睡眠</option>
							<option value="石川県">音楽鑑賞</option>
							<option value="秋田県">ドラマ鑑賞</option>
							<option value="山形県">アニメ鑑賞</option>
							<option value="石川県">バラエティー番組鑑賞</option>
							<option value="福島県">読書</option>
							<option value="石川県">ボードゲーム</option>
							<option value="茨城県">料理</option>
							<option value="栃木県">掃除</option>
							<option value="石川県">勉強</option>
							<option value="静岡県">カラオケ</option>
							<option value="群馬県">散歩</option>
							<option value="埼玉県">ランニング</option>
							<option value="千葉県">サッカー</option>
							<option value="静岡県">海外サッカー観戦</option>
							<option value="東京都">野球</option>
							<option value="神奈川県">バスケットボール</option>
							<option value="新潟県">ゴルフ</option>
							<option value="富山県">テニス</option>
							<option value="石川県">ダンス</option>
							<option value="京都府">ヨガ</option>
							<option value="石川県">サーフィン</option>
							<option value="福井県">筋トレ</option>
							<option value="山梨県">キャンプ</option>
							<option value="長野県">食べ歩き</option>
							<option value="石川県">カフェ巡り</option>
							<option value="岐阜県">ガーデニング</option>

							<option value="愛知県">ファッション</option>
							<option value="三重県">ボランティア</option>
							<option value="滋賀県">温泉巡り</option>

							<option value="大阪府">美術館巡り</option>


					</select></td>
				</tr>

				<tr>
					<th>生年月日</th>
					<td><input type="date" size="70"></td>
				</tr>
				<tr>
					<th>年齢</th>
					<td><input type="text" style="width: 150px;"></td>
				</tr>
				<tr>
					<th>ポイント</th>
					<td><input type="text" style="width: 150px;"></td>
				</tr>

				<!--  <tr>
            <th>性別</th>
            <td>
                女：<input type="radio" name="sex"/>
                男：<input type="radio" name="sex"/>
            </td>
        </tr>-->
				​
				<tr>
					<th>写真</th>
					<td>
						<div style="position: relative;">
							<!--设置input的position为absolute，使其不按文档流排版，并设置其包裹整个布局 -->
							<!-- 设置opactity为0，使input变透明 -->
							<!-- 只接受jpg，gif和png格式 -->
							<input id="upload-input"
								style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; opacity: 0;"
								type="file" name="pict" accept="image/gif, image/jpg, image/png"
								onchange="showImg(this)" />

							<script type="text/javascript">
								function showImg(input) {
									var file = input.files[0];
									var reader = new FileReader()
									// 图片读取成功回调函数
									reader.onload = function(e) {
										document.getElementById('upload').src = e.target.result
									}
									reader.readAsDataURL(file)
								}
							</script>

							<!-- 自定义按钮效果 -->
							<div style="text-align: top">
								<span style="font-size: 12px;">：</span> <img id="upload"
									src="images/uploadphoto.png"
									style="width: 140px; height: 140px; vertical-align: middle;" />
							</div>
						</div>
					</td>
				</tr>
				​

			</table>
			​
			<tr>

				<form action="profileView.html">
					<div class="insertButton" style="text-align: right;">
						<!--  <input type="submit" name="name" value="登録">-->
						<input type="submit" class="" value="登録" onClick="return Check()">
					</div>
				</form>
				<script type="text/javascript">
					function Check() {
						var checked = confirm("登録します");
						if (checked == true) {
							return true;
						} else {
							return false;
						}
					}
				</script>
			</tr>
			</section>
			​
		</div>
		<!--/main-->
		​


		<div id="sub">
			​
			<!--801px以上端末用メニュー-->

			​
			<!--<aside>
<h2>その他のメニュー</h2>
<ul class="submenu">
<li><a href="#">関連情報メニュー</a></li>
<li><a href="#">関連情報メニュー</a></li>
<li><a href="#">関連情報メニュー</a></li>
</ul>
</aside-->
			​
		</div>
		<!--/sub-->
		​
		<p id="pagetop">
			<a href="#">↑</a>
		</p>
		​
	</div>
	<!--/contents-->
	​
	</div>
	<!--/container-->
	​
	<footer style="position: relative; bottom: -38px">


		<div id="copyright">
			<small>Copyright&copy; <a href="index.html">GROUP LOOP</a>
				All Rights Reserved.
			</small> <span class="pr">《<a href="http://template-party.com/"
				target="_blank">Web Design:Template-Party</a>》
			</span>
		</div>

	</footer>
	​
	<!--メニューの３本バー-->
	<div id="menubar_hdr" class="close">
		<span></span><span></span><span></span>
	</div>
	<!--800px以下端末用メニュー-->
	<nav id="menubar-s">
		<ul class="submenu">
			<li class="menuimg menu1"><a href="menu.html"><span>Home</span>トップページ</a></li>
			<li class="menuimg menu2"><a href="newsAll.html"><span>News</span>個人的ニュース</a></li>
			<li class="menuimg menu3"><a href="eventSelect.html"><span>Event</span>イベント募集</a></li>
			<li class="menuimg menu2"><a href="box.html"><span>Box</span>目安箱</a></li>
			<li class="menuimg menu3"><a href="profileView.html"><span>Profile</span>プロフィール</a></li>
			<li class="menuimg menu3"><a href="pointUse.html"><span>Point</span>ポイント交換</a></li>
			<!--<li class="menuimg menu4"><a href="contact.html"><span>Contact</span>お問い合わせ</a></li>-->
		</ul>
	</nav>
	<!--メニューの開閉処理条件設定　800px以下-->
	<script type="text/javascript">
		if (OCwindowWidth() <= 800) {
			open_close("menubar_hdr", "menubar-s");
		}
	</script>
	<!--スマホ用更新情報　800px以下-->
	<script type="text/javascript">
		if (OCwindowWidth() <= 800) {
			open_close("newinfo_hdr", "newinfo");
		}
	</script>

	​
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
		integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
		crossorigin="anonymous"></script>

</body>
</html>
