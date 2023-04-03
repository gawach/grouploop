<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>GROUP LOOP Menu</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="ここにサイト説明を入れます">
<meta name="keywords" content="キーワード１,キーワード２,キーワード３,キーワード４,キーワード５">
<link rel="stylesheet" href="css/style.css">
<!-- コピーしてください！ -->
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

<script type="text/javascript" src="js/openclose.js"></script>
<script type="text/javascript" src="ddmenu_min.js"></script>

<link rel="icon" href="images/image.png" />
<link rel="stylesheet" href="css/fixmenu.css">

<script type="text/javascript" src="js/fixmenu.js"></script>
<style type="text/css">
#photo {
	width: 1000px;
	height: 280px;
	margin: 0 auto;
	text-align: left;
	overflow: hidden;
	position: relative;
}

#photo img {
	top: 0;
	left: 0;
	position: absolute;
}
</style>

</head>

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
							class="nav-link" id="navlist" href="menu.html"><i
								class="fas fa-home fa-2x"></i> <span
								style="margin: 0 13px 0 10px;" id="navlist">Home</span> </a></li>
						<li class="nav-item d-flex justify-content-end"><a
							class="nav-link" id="navlist" href="newsAll.html"><i
								class="far fa-newspaper fa-2x"></i> <span
								style="margin: 0 17px 0 10px;" id="navlist">News</span> </a></li>

						<li class="nav-item d-flex justify-content-end"><a
							class="nav-link" id="navlist" href="eventSelectServlet"><i
								class="far fa-calendar-check fa-2x"></i> <span
								style="margin: 0 16px 0 10px;" id="navlist">Event</span> </a></li>

						<li class="nav-item d-flex justify-content-end"><a
							class="nav-link" id="navlist" href="#" data-toggle="tooltip"
							data-placement="top" title="工事中"><i
								class="fas fa-mail-bulk fa-2x"></i> <s><span
									style="margin: 0 19px 0 10px;" id="navlist">&nbsp;Box&nbsp;</span></s>
						</a></li>
						<li class="nav-item d-flex justify-content-end"><a
							class="nav-link" id="navlist" href="profileView.html"> <i
								class="far fa-user-circle fa-2x"></i> <span
								style="margin: 0 14px 0 10px;" id="navlist">Profile</span>
						</a></li>
						<li class="nav-item d-flex justify-content-end"><a
							class="nav-link" id="navlist" href="pointUse.html"><i
								class="fab fa-product-hunt fa-2x"></i> <span
								style="margin: 0 23px 0 10px;" id="navlist">Point</span> </a></li>
						<li class="nav-item d-flex justify-content-end"><a
							class="nav-link" id="navlist" href="loginForm.html"><i
								class="fas fa-sign-in-alt fa-2x"></i> <span
								style="margin: 0 20px 0 10px;" id="navlist">Login</span> </a></li>
						<li class="nav-item d-flex justify-content-end"><a
							class="nav-link" id="navlist" href="loginForm.html"
							onClick="return Check()"><i class="fas fa-sign-out-alt fa-2x"></i>
								<span style="margin: 0 10px;">Logout</span> </a></li>
						<script type="text/javascript">
                      function Check(){
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
		<div id="contents">
			<script type="text/javascript"
				src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
			<script type="text/javascript">
        $(function(){
            var setImg = '#photo';
            var fadeSpeed = 1600;
            var switchDelay = 5000;

            $(setImg).children('img').css({opacity:'0'});
            $(setImg + ' img:first').stop().animate({opacity:'1',zIndex:'20'},fadeSpeed);

            setInterval(function(){
            $(setImg + ' :first-child').animate({opacity:'0'},fadeSpeed).next('img').animate({opacity:'1'},fadeSpeed).end().appendTo(setImg);
            },switchDelay);
        });
      </script>

			<aside id="mainimg">
				<div id="photo">
					<img src="images/head2.jpg" width="1000" height="280" alt="">
					<img src="images/head6.jpg" width="1000" height="280" alt="">
				</div>
			</aside>

			<div id="main">
				<section id="new">
					<!--<h2 id="newinfo_hdr" class="close">Who's Birthday</h2>-->
					<h2>Who's Birthday</h2>
					<dl id="newinfo">
						<dt>2021/07/26</dt>
						<dd>
							田村 凌さん23歳の誕生日です！！<span class="newicon">NEW</span>
						</dd>
						<dt>2021/08/05</dt>
						<dd>○○さん32歳の誕生日です！！</dd>
					</dl>
				</section>
				<h2>Topics</h2>

				<div class="list">
					<a href="newsAll.html"> <img src="images/menu1.jpg" alt=""
						class="img">
						<h4>
							<font size="4px">ニュース</font>
						</h4>
						<p>
							<br>
							<font size="3px">社員の個人的ニュースです。何ならフェイクニュースもあります </br>投稿したら1ポイントもらえます
							</font>
						</p>
					</a>
				</div>
				<div class="list">
					<a href="eventSelect.html"> <img src="images/menu9.jpg" alt=""
						class="img">
						<h4>
							<font size="4px">イベント募集掲示板</font>
						</h4>
						<p>
							<br>
							<font size="3px">ゲームのマルチプレイ、飲み会、スポーツのメンバー集めに！！</font>
						</p>
					</a>
				</div>

				<div class="list" data-toggle="tooltip" title="工事中">
					<a href="#"> <img src="images/menu2.jpg" alt="" class="img"
						style="filter: grayscale(100%);">
						<h4>
							<font size="4px"><i class="fas fa-tools mr-2"></i><s>目安箱</s></font>
						</h4>
						<p>
							<br>
							<font size="3px">匿名可なのでどんな文句でも気兼ねなくどうぞ！！</font>
						</p>
					</a>
				</div>

				<div class="list">
					<a href="profileView.html"> <img src="images/menu8.jpg" alt=""
						class="img">
						<h4>
							<font size="4px">プロフィール</font>
						</h4>
						<p>
							<br>
							<font size="3px">プロフィールの確認、編集はこちらです<br>趣味の合う社員が見つかるかも？
							</font>
						</p>
					</a>
				</div>

				<div class="list">
					<a href="pointUse.html"> <img src="images/point.jpg" alt=""
						class="img">
						<h4>
							<font size="4px">ポイント交換</font>
						</h4>
						<p>
							<br>
							<font size="3px">お持ちのポイントを景品に交換できます <br>景品の文句は目安箱にお願いします
							</font>
						</p>
					</a>
				</div>
				</section>
			</div>
			<p id="pagetop">
				<a href="#">↑</a>
			</p>
		</div>
		<!--/contents-->
	</div>
	<!--/container-->
	<footer>
		<div id="copyright">
			<small>Copyright&copy; <a href="index.html">GROUP LOOP</a>
				All Rights Reserved.
			</small> <span class="pr">《<a href="http://template-party.com/"
				target="_blank">Web Design:Template-Party</a>》
			</span>
		</div>
	</footer>

	<!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> -->
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
