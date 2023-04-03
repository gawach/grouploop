<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

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

<title>GROUP LOOP EVENT</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/_userheader.css">
<link rel="stylesheet" href="./css/eventContent.css">
<script type="text/javascript" src="./js/openclose.js"></script>
<script type="text/javascript" src="./ddmenu_min.js"></script>
<link rel="stylesheet" href="./css/fixmenu.css">
<script type="text/javascript" src="./js/fixmenu.js"></script>
<link rel="icon" href="images/image.png" />
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
					href="profileView.html">${USER_DATA.name_user}</a>

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
				<section id="new">
					<h2>
						イベント 募集<br>
						<!-- <input type="text" value="主題を入力してください" onfocus="this.value=''">
                        <button type="submit" class="" name="" value="">検索する</button>
                        <a href="eventSelect.html"><input type="button" value="検索"></a> -->
					</h2>
					<table class="ta4">
						<tr>
							<th style="text-align: center;">年月日</th>
							<th style="text-align: center;">作成者</th>
							<th style="text-align: center;">カテゴリー</th>
							<td style="text-align: center;">内容</td>
							<td></td>
							<td></td>
						</tr>
						<c:forEach var="e" items="${EVENTS}">
							<tr>
								<th style="text-align: center; width: 100px;"><c:out
										value="${e.created_at_event}" /></th>
								<th style="text-align: center; width: 100px;"><c:out
										value="${e.name_user}" /></th>
								<th style="text-align: center; width: 100px;"><c:out
										value="${e.name_category}" /></th>
								<td><a href="eventContentServer?id_event=${e.id_event}"><c:out
											value="${e.title_event}" /></a></td>
								<td><c:out value="${e.contents_event}" /></td>
							</tr>
						</c:forEach>
					</table>

					<div class=""
						style="display: inline-flex; width: 100%; justify-content: center;">
						<form method="GET" id="id" action="eventAddServer1"
							style="margin-right: 100px;">
							<input type="submit" value="新規">
						</form>
						<br>
						<form method="POST" id="id" action="javascript:history.go(-1);">
							<input type="submit" value="戻る">
						</form>
					</div>
				</section>
			</div>

			<div class="py-2 w-100">
				<form action="eventSelectServlet">
					<nav aria-label="Page navigation example">
					  <ul class="pagination">
					    <li class="page-item">
					      <a class="page-link" href="eventSelectServlet" aria-label="Previous">
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
						    			<a class="page-link" href="eventSelectServlet?page=${b}">${b}</a>
								    </li>
					    		</c:otherwise>
					    	</c:choose>
					    </c:forEach>

					    <li class="page-item">
						    <a class="page-link" href="eventSelectServlet?page=${TOTAL_PAGE_NUM}" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						        <span class="sr-only">Next</span>
						    </a>
					    </li>
					  </ul>
					</nav>
				</form>
			</div>

			<!--/main-->
			<p id="pagetop">
				<a href="#">↑</a>
			</p>
		</div>
		<!--/contents-->
	</div>
	<!--/container-->




	<!--/footermenu-->
	<div id="copyright">
		<small>Copyright&copy; <a href="index.html">Group Loop</a> All
			Rights Reserved.
		</small> <span class="pr">《<a href="http://template-party.com/"
			target="_blank">Web Design:Template-Party</a>》
		</span>
	</div>
	</footer>
	<!--メニューの開閉処理条件設定　800px以下-->
	<script type="text/javascript">
    if (OCwindowWidth() <= 800) {
        open_close("menubar_hdr", "menubar-s");
    }
    </script>
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
