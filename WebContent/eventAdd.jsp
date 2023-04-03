<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="co.jp.groupLoop.entity.Event"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
ArrayList<Event> EVENTCONTENT = (ArrayList<Event>) request.getAttribute("EVENTCONTENT");
%>
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
<meta name="description" content="ここにサイト説明を入れます">
<meta name="keywords" content="キーワード１,キーワード２,キーワード３,キーワード４,キーワード５">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/eventContent.css">
<script type="text/javascript" src="./js/openclose.js"></script>
<script type="text/javascript" src="./js/ddmenu_min.js"></script>

<link rel="stylesheet" href="./css/fixmenu.css">
<script type="text/javascript" src="./js/fixmenu.js"></script>
<link rel="icon" href="images/image.png" />
</head>

<body class="s-n">
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

					<form method="GET" id="id" action="eventAddServlet2">
						<% if(EVENTCONTENT == null){ %>
						<input type="hidden" name="update" value="1"> <input
							type="hidden" name="id_event" value="0">
						<h2>イベント 登録</h2>

						<table class="ta1">
							<tr>
								<th>タイトル</th>
								<td><input type="text" name="title_event" placeholder=""
									class="wl" maxlength="100" id=""></td>
							</tr>
							<tr>
								<th>カテゴリ</th>
								<td><select name="category_event" id="category_event">
										<option value="" selected="selected">カテゴリ選択</option>
										<c:forEach var="e" items="${CATEGORYS}">
											<option value="<c:out value = "${e.id_category}"/>"><c:out
													value="${e.name_category}" /></option>
										</c:forEach>
								</select></td>
							</tr>
							<tr>
								<th>人数</th>
								<td><input type="text" name="max_participant_event"
									placeholder="" class="wl" maxlength="2" id=""
									onkeyup="this.value=this.value.replace(/[^0-9-]+/,'');">
								</td>
							</tr>

							<tr>
								<th>詳細内容※</th>
								<td><textarea name="contents_event" cols="30" rows="10"
										class="wl"></textarea></td>
							</tr>
						</table>
						<%}else{%>
						<%
						for(Event a : EVENTCONTENT){
						%>
						<input type="hidden" name="update" value="2"> <input
							type="hidden" name="id_event" value="<%= a.getId_event() %>">
						<table class="ta1">
							<tr>
								<th>タイトル</th>
								<td><input type="text" name="title_event"
									value="<%= a.getTitle_event() %>" class="wl" maxlength="100"
									id=""></td>
							</tr>
							<tr>
								<th>カテゴリ</th>
								<td><select name="category_event" id="category_event">
										<option value="" selected="selected">カテゴリ選択</option>
										<option value="1">飲み会</option>
										<option value="2">ゲーム</option>
										<option value="3">旅行</option>
										<option value="4">カラオケ</option>
										<option value="5">結婚式</option>
										<option value="6">スキー</option>
										<option value="7">お花見</option>
										<option value="8">その他</option>
								</select></td>
							</tr>
							<tr>
								<th>人数</th>
								<td><input type="text" name="max_participant_event"
									value="<%= a.getMax_participant_event() %>" class="wl"
									maxlength="2" id=""> <%-- <input type="text" name="title_event" value="${e.max_participant_event}"
											class="wl" maxlength="100" id=""> --%></td>
							</tr>

							<tr>
								<th>詳細内容※</th>
								<td><textarea name="contents_event" cols="30" rows="10"
										class="wl"><%= a.getContents_event() %></textarea></td>
							</tr>
						</table>
						<%} %>
						<%}%>
						<script type="text/javascript">
            function Check() {
              var checked = confirm("内容は確認しましたか？");
              if (checked == true) {
                return true;
              } else {
                return false;
              }
            }
          </script>

						<!-- <div class="" style="display: inline-flex; width: 100%;justify-content: center;"> -->
						<!-- <form method="POST" id="id" action="eventSelect.html" style="margin-right: 100px;"> -->
						<% if(EVENTCONTENT == null){ %>
						<input type="submit" value="登録" onclick="return Check()">
						<% }else{ %>
						<input type="submit" value="更新" onclick="return Check()">
						<% } %>
					</form>
					<br>

					<form method="POST" id="id" action="javascript:history.go(-1)">
						<input type="submit" value="戻る" onclick="return Delete()">
					</form>

					<!--</div> -->
				</section>
			</div>
			<!--/main-->
			<p id="pagetop">
				<a href="#">↑</a>
			</p>
		</div>
		<!--/contents-->
	</div>
	<!--/container-->

	<footer>
		<!--/footermenu-->
		<div id="copyright">
			<small>Copyright&copy; <a href="index.html">Group Loop</a>
				All Rights Reserved.
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