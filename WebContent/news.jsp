<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--Bootstrap4設定-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="css/_sampleHeader.css">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<title>ニュース</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="ここにサイト説明を入れます">
<meta name="keywords" content="キーワード１,キーワード２,キーワード３,キーワード４,キーワード５">
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/openclose.js"></script>
<script type="text/javascript" src="ddmenu_min.js"></script>
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<style>
.menuimg a {background: none;padding-left: 10px;}
.nav-fix-pos {position: static !important;top: auto;}
body.is-fixed #sub {padding-top: 0px !important;}
</style>
<![endif]-->
<link rel="stylesheet" href="css/fixmenu.css">
<link rel="stylesheet" href="css/news.css">
<link rel="stylesheet" href="css/_sampleHeader.css">
<script type="text/javascript" src="js/fixmenu.js"></script>
<link rel="icon" href="images/image.png" />
</head>

<body>
  <header>
    <!-- ナビゲーションバー -->
    <div class="header">
      <nav class="navbar fixed-top" style="background-image: linear-gradient( 135deg, #FD6E6A 10%, #FFC600 100%);" id="navbarNavbar">
        <!-- タイトル -->
        <a class="navbar-brand" href="menu.html"><img src="images/image.png" alt="グループループのロゴ" id="logo-img"></a>

        <a class="navbar-brand col-1 offset-9" style="color: black;" href="profileView.html">${sessionScope.USER_DATE.name_user}</a>

        <!-- ハンバーガーメニュー -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
              <!-- ナビゲーションメニュー -->
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                  <li class="nav-item active d-flex justify-content-end">
                  <a class="nav-link" href="menu.html"><i class="fas fa-home fa-2x"></i>
                      <span style="margin: 0 13px 0 10px;">Home</span>
                  </a>
                  </li>
                  <li class="nav-item d-flex justify-content-end">
                  <a class="nav-link" href="NewsAllServlet"><i class="far fa-newspaper fa-2x"></i>
                      <span style="margin: 0 17px 0 10px;">News</span>
                  </a>
                  </li>
                  <li class="nav-item d-flex justify-content-end">
                  <a class="nav-link" href="eventSelect.html"><i class="far fa-calendar-check fa-2x"></i>
                      <span style="margin: 0 16px 0 10px;">Event</span>
                  </a>
                  </li>
                  <li class="nav-item d-flex justify-content-end">
                  <a class="nav-link"  href="#" data-toggle="tooltip" data-placement="top" title="工事中"><i class="fas fa-mail-bulk fa-2x"></i>
                      <s><span style="margin: 0 19px 0 10px;">&nbsp;Box&nbsp;</span></s>
                  </a>
                  </li>
                  <li class="nav-item d-flex justify-content-end">
                  <a class="nav-link" href="profileView.html">
                      <i class="far fa-user-circle fa-2x"></i>
                      <span style="margin: 0 14px 0 10px;">Profile</span>
                  </a>
                  </li>
                  <li class="nav-item d-flex justify-content-end">
                  <a class="nav-link" href="pointUse.html"><i class="fab fa-product-hunt fa-2x"></i>
                      <span style="margin: 0 23px 0 10px;">Point</span>
                  </a>
                  </li>
                  <li class="nav-item d-flex justify-content-end">
                  <a class="nav-link" href="loginForm.html"><i class="fas fa-sign-in-alt fa-2x"></i>
                      <span style="margin: 0 20px 0 10px;">Login</span>
                  </a>
                  </li>
                  <li class="nav-item d-flex justify-content-end">
                  <a class="nav-link" href="loginForm.html" onClick="return Check()"><i class="fas fa-sign-out-alt fa-2x"></i>
                      <span style="margin: 0 10px;">Logout</span>
                  </a>
                  </li>
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

<div id="main">

<section>

<h2>News</h2>

<table class="ta1">

    <tr>
		<th>日付</th>
		<td><c:out value="${DETAIL_NEWS.created_at_news}" /></td>
	</tr>
	<tr>
		<th>タイトル</th>
		<td><c:out value="${DETAIL_NEWS.title_news}" /></td>
	</tr>
	<tr>
		<th>カテゴリー</th>
		<c:choose>
			<c:when test="${DETAIL_NEWS.real_fake_news == 1}" >
				<td><c:out value="リアル" /></td>
			</c:when>
			<c:otherwise>
				<td><c:out value="フェイク" /></td>
			</c:otherwise>
		</c:choose>
	</tr>
	<tr>
		<th>本文</th>
			<td><c:out value="${DETAIL_NEWS.contents_news}" /></td>
	</tr>

</table>

<div class="buttonA">
  <span class="mgr-100">
    <form action="UpCheckNewsServlet" method="POST">
     <c:if test="${sessionScope.USER_DATE.id_user == DETAIL_NEWS.id_user}">
      <input type="hidden" name="idNews" value="${DETAIL_NEWS.id_news}">
      <input type="submit" name="name" value="更新" class="button_update">
     </c:if>
    </form>
  </span>
    <form method="POST" id="id" action="DeleteNewsServlet">
     <c:if test="${sessionScope.USER_DATE.id_user == DETAIL_NEWS.id_user}">
      <input type="hidden" name="idNews" value="${DETAIL_NEWS.id_news}">
      <input type="submit" name="name" value="削除" class="button_delete" onClick="return Check()">
     </c:if>
  </form>
  <script type="text/javascript">
  function Check(){
    var checked = confirm("削除しますか？");
    if (checked == true) {
      return true;
    } else {
      return false;
    }
  }
</script>

</div>
 <table class="ta2">
							<tr>
								<h1>コメント</h1>
							</tr>
						<c:forEach var="c" items="${COMMENT_CONTENT}" >
							<tr>
								<th>${c.name_user}：</th>
								<td>
									<p>${c.contents_comment}</p>
									<p>${c.created_at_comment}</p>
								</td>
							</tr>
						</c:forEach>

							<tr>
								<th>${sessionScope.USER_DATA.name_user}さん：</th>
								<td style="padding-top: 20px; padding-left: 20px;">
									<form method="POST" id="id" action="CommentServlet" style="margin-right: 100px;">
										<textarea name="comment" cols="30" rows="5" class="wl"></textarea>
										<div class="" style="display: inline-flex; width: 100%; justify-content: center; padding-bottom: 5px;">
												<input type="submit" value="コメント">
										</div>
										<input type=hidden name="idNews" value="${DETAIL_NEWS.id_news}">
										<input type=hidden name="id_user" value="${sessionScope.USER_DATA.id_user}">
										<input type=hidden name="access" value="news">
									</form>
								</td>
							</tr>
						</table>

</section>

</div>
<!--/main-->



<p id="pagetop"><a href="#">↑</a></p>

</div>
<!--/contents-->

</div>
<!--/container-->

<footer>


<div id="copyright">
<small>Copyright&copy; <a href="index.html">GROUP LOOP</a> All Rights Reserved.</small>
<span class="pr">《<a href="http://template-party.com/" target="_blank">Web Design:Template-Party</a>》</span>
</div>

</footer>

<!--メニューの３本バー-->
<div id="menubar_hdr" class="close"><span></span><span></span><span></span></div>
<!--800px以下端末用メニュー-->
<nav id="menubar-s">
<ul class="submenu">
	<li class="menuimg menu1"><a href="index.html"><span>Home</span>トップページ</a></li>
	<li class="menuimg menu2"><a href="company.html"><span>Profile</span>プロフィール</a></li>
	<li class="menuimg menu3"><a href="service.html"><span>Ivent</span>イベント募集</a></li>
	<li class="menuimg menu4"><a href="contact.html"><span>News</span>ニュース</a></li>
</ul>
</nav>
<!--メニューの開閉処理条件設定　800px以下-->
<script type="text/javascript">
if (OCwindowWidth() <= 800) {
	open_close("menubar_hdr", "menubar-s");
}
</script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
