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
<link rel="stylesheet" href="./css/eventContent.css">
<script type="text/javascript" src="./js/openclose.js"></script>
<script type="text/javascript" src="./js/ddmenu_min.js"></script>
<link rel="stylesheet" href="./js/fixmenu.js">
<script type="text/javascript" src="./js/fixmenu.js"></script>
<link rel="icon" href="images/image.png" />
</head>

<body>

	<!-- コピーしてください！ -->

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
					href="profileView.html">${sessionScope.USER_DATA.name_user}</a>

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
							class="nav-link" href="LogoutServlet" onClick="return Check()"><i
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
				<section id="new2">
					<h2>
						イベント 詳細：
						<!-- <a href="eventSelect.html"></a><input type="button" value="参加"></a> -->
					</h2>
					<!-- <div class='btn1' style="text-align: center;">
                        <a href='eventContent.html' onClick="return Join()">参加</a>
                    </div> -->
					<div class="" style="display: inline-flex; width: 100%; justify-content: center;">


				<!-- 1,参加 2,不参加 3,募集中 4,満員 -->
				 <c:if test="${JUDGE == '1'}">
					 <!-- 参加ボタン -->
						<form id="id" action="ParticipantServlet" style="margin-right: 100px;">
							<input type="submit" value="参加" onclick="return Join()">
							<input type="hidden" name="id_user" value="${sessionScope.USER_DATA.id_user}">
							<input type="hidden" name="id_event" value="${EVENT.id_event}">
						</form>
							<script type="text/javascript">
                    function Join() {
                        var checked = confirm("参加しますか？");
                        if (checked == true) {
                            return true;
                        } else {
                            return false;
                        }
                     }
                </script>
				 </c:if>

				 <c:if test="${JUDGE == '2'}">
						<!-- 不参加ボタン -->
						<form method="POST" id="id" action="ParticipantServlet" style="margin-right: 100px;">
							<input type="submit" value="不参加" onclick="return Join()">
							<input type="hidden" name="id_user" value="${sessionScope.USER_DATA.id_user}">
							<input type="hidden" name="id_event" value="${EVENT.id_event}">
						</form>
							<script type="text/javascript">
                    function Join() {
                        var checked = confirm("不参加にしますか？");
                        if (checked == true) {
                            return true;
                        } else {
                            return false;
                        }
                    }
               	</script>
           </c:if>

         	<c:if test="${JUDGE == '3'}">
					<!-- 募集中ボタン -->
						<c:if test="${canParticipate}">
								<form id="id" action="#" style="margin-right: 100px;">
									<input type="submit" value="参加者募集中"  onclick="alert('募集中です'); return false;">
								</form>
						</c:if>
				 </c:if>

				 <c:if test="${JUDGE == '4'}">
            <!-- 満員ボタン -->
						<form id="id" action="#" style="margin-right: 100px;">
							<input type="submit" value="満員"  onclick="alert('満員です'); return false;">
						</form>
				 </c:if>

					</div>
						<h1>
							タイトル：
							<c:out value="${EVENT.title_event}" />
						</h1>
						<br>
						<h1>
							カテゴリ：
							<c:out value="${EVENT.name_category}" />
						</h1>
						<br>
						<h1>
							参加人数：
							<c:out value="${EVENT.max_participant_event}" />
						</h1>
						<br>
						<h1>
							投稿者：
							<c:out value="${EVENT.name_user}" />
						</h1>
						<br>
						<p>
							<c:out value="${EVENT.contents_event}" />
						</p>

						<!-- 参加者一覧 -->
						<c:forEach var="p" items="${PARTICIPANTS}">
							<img src="<c:out value="${p.photo_user}"/>">
							<p><c:out value="${p.name_user}"/></p>
						</c:forEach>
						<div class=""
							style="display: inline-flex; width: 100%; justify-content: center;">
							<form method="GET" id="id" action="eventEditServer"
								style="margin-right: 100px;">
								<input type="submit" value="更新" onclick="return Update()">
								<input type="hidden" value="<c:out value = "${e.id_event}"/>"
									name="id_event">
							</form>
							<br>
							<form method="GET" id="id" action="eventDeleteServlet">
								<input type="submit" value="削除" onclick="return Delete()">
								<input type="hidden" value="<c:out value = "${e.id_event}"/>"
									name="id_event">
							</form>
						</div>
					<!-- <div class='btn1'>
                        <a href='eventAdd.html' onclick="return Update()">更新</a>
                    </div> -->
					<script type="text/javascript">
                        function Update() {
                            var checked = confirm("更新します？");
                            if (checked == true) {
                                return true;
                            } else {
                                return false;
                            }
                        }
                    </script>

					<!-- <form method="POST" id="id" action="menu.html">
                        <div class='btn1' style="text-align: center;">
                            <a href='' onClick="return Delete()">削除</a>
                        </div>
                    </form> -->

					<script type="text/javascript">
                        function Delete() {
                            var checked = confirm("削除します？");
                            if (checked == true) {
                                return true;
                            } else {
                                return false;
                            }
                        }
                    </script>

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
										<input type=hidden name="id_event" value="${EVENT.id_event}">
										<input type=hidden name="id_user" value="${sessionScope.USER_DATA.id_user}">
										<input type=hidden name="access" value="event">
									</form>
								</td>
							</tr>
						</table>
					<br>
					<!-- <div class='btn1' style="text-align: center;">
                        <a href="javascript:history.go(-1);">戻る</a>
                    </div> -->
					<div class=""
						style="display: inline-flex; width: 100%; justify-content: center;">
						<form method="POST" id="id" action="javascript:history.go(-1);"
							style="margin-right: 100px;">
							<input type="submit" value="戻る">
						</form>
					</div>
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