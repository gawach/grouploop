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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>

<body>
  <img src="images/4042.jpg" width="1600" height="1200" alt="404">
  <nav id="global-nav">
    <header>
      <!-- ナビゲーションバー -->
      <div class="header">
        <nav style="background-image: linear-gradient( 135deg, #FD6E6A 10%, #FFC600 100%); width: 1360px;" id="navbarNavbar">
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
</nav>

<script>
  var navPos = jQuery( '#global-nav' ).offset().top; // グローバルメニューの位置
var navHeight = jQuery( '#global-nav' ).outerHeight(); // グローバルメニューの高さ
jQuery( window ).on( 'scroll', function() {
  if ( jQuery( this ).scrollTop() > navPos ) {
    jQuery( 'body' ).css( 'padding-top', navHeight );
    jQuery( '#global-nav' ).addClass( 'm_fixed' );
  } else {
    jQuery( 'body' ).css( 'padding-top', 0 );
    jQuery( '#global-nav' ).removeClass( 'm_fixed' );
  }
});
</script>

<div id="container">

<div id="contents">

<div id="main">

<h2>News</h2>

<main class="p-3">
	<ul class="nav nav-tabs nav-pills">
		<li class="nav-item"><a href="NewsSortServlet?realFake=1" class="nav-link active">リアル</a></li>
		<li class="nav-item"><a href="NewsSortServlet?realFake=0" class="nav-link">フェイク</a></li>
	  </ul>
</main>


<style>
  .nav-pills .nav-link, .nav-pills .show > .nav-link {
      color: white;
      background-color: #FFC600;
  }
  .nav-pills .nav-link.active, .nav-pills .show > .nav-link {
      color: white;
      background-color: #fd7f54;
  }
</style>


<table class="ta1">

<c:forEach var="e" items="${NES}">
<tr>
	<th class="tt">${e.updated_at_news}</th>
	<td><a href="DetailNewsServlet?idNews=${e.id_news}">${e.title_news}</a></td>
	<c:choose>
			<c:when test="${e.real_fake_news == 1}" >
				<td><c:out value="リアル" /></td>
			</c:when>
			<c:otherwise>
				<td><c:out value="フェイク" /></td>
			</c:otherwise>
		</c:choose>
</tr>
</c:forEach>

</table>

<div class="buttonA">
   <form action="insertNews.jsp">
	  <input type="submit" name="name" value="投稿">
	</form>
</div>

<!-- ページネーション -->
  <div class="py-2 w-100">
    <form action="NewsAllServlet">
					<nav aria-label="Page navigation example">
					  <ul class="pagination">
					    <li class="page-item">
					      <a class="page-link" href="NewsAllServlet" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span>
					        <span class="sr-only">Previous</span>
					      </a>
					    </li>

							<c:forEach var="b" begin="${START_BUTTON}" end="${END_BUTTON}" step="1" varStatus="st" >
					    	<c:choose>
					    		<c:when test="${CURRENT_PAGE == st.current}" >
								    <li class="page-item active">
								    	<span class="page-link">${b}</span>
								    	<span class="sr-only">(CURRENT)</span>
						    		</li>
					    		</c:when>
					    		<c:otherwise>
					    		 <li class="page-item">
						    			<a class="page-link" href="NewsAllServlet?page=${b}">${b}</a>
								    </li>
					    		</c:otherwise>
					    	</c:choose>
					    </c:forEach>

					    <li class="page-item">
						    <a class="page-link" href="NewsAllServlet?page=${TOTAL_PAGE_NUM}" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						        <span class="sr-only">Next</span>
						    </a>
					    </li>
					  </ul>
					</nav>
				</form>
  </div>

</div>


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
