<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>티켓 오픈 공지 작성</title>
		<link rel="stylesheet" href="../css/Winner_write_admin.css">
		<script src="<%=request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		<script src="<%=request.getContextPath() %>/js/Winner_modify_admin.js"></script>
	</head>
	<body>
		<header>
			<div id="h_title">
				<div id="h_title_inner">
					<span id="h_top_menu">
						<ul id="h_top_menu_ul">
						<c:if test="${not empty sessionScope.mid}">
							<li>${sessionScope.mid }님 환영합니다!&nbsp;&nbsp;&nbsp;&nbsp;</li>
							<li><a href="<%=request.getContextPath()%>/Member/Memberlogout.do">로그아웃&nbsp;&nbsp;|&nbsp;&nbsp;</a></li>
						</c:if>
						<c:if test="${empty sessionScope.mid}">
							<li><a href="<%=request.getContextPath()%>/Member/MemberLogin.do">로그인&nbsp;&nbsp;|&nbsp;&nbsp;</a></li>
							<li><a href="#">회원가입&nbsp;&nbsp;|&nbsp;&nbsp;</a></li>
						</c:if>
							<li><a href="#">고객센터&nbsp;&nbsp;|&nbsp;&nbsp;</a></li>
							<li><a href="#">이용안내&nbsp;&nbsp;&nbsp;&nbsp;</a></li><br>
						</ul>
						<img src="../ads/musicalads.png" id="h_ads">
					</span>
					<img src="../icon/lupinlogo.png" id="h_logo">&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" id="h_search" placeholder="뮤지컬 〈캣츠〉 40주년 내한공연 앙코르－서울（Musical CATS Encore">
					<button type="submit" id="h_search_button"><img src="../icon/search.png" id="h_search_img"></button>
				</div>
			</div>
		</header>
		<hr id="nav_bar_top">
		<div id="n_nav_div">
			<nav id="main_nav">
				<a href="<%=request.getContextPath()%>/Main/MainPage.do" id="main_nav_home">홈</a>
				<a href="<%=request.getContextPath()%>/Show/ShowList.do" id="main_nav_concert">공연</a>
				<a href="#" id="main_nav_ranking">랭킹</a>
				<a href="<%=request.getContextPath()%>/News/NewsList.do" id="main_nav_news">티켓오픈소식</a>
				<a href="#" id="main_nav_event">이벤트</a>
				<a href="#" id="main_nav_myticket">마이 티켓</a>
			</nav>
		</div>
		<hr id="nav_bar_bottom">
		<div id="nav_menu_sub_event_div" class="main_nav_all">
			<ul id="nav_menu_sub_event" style="margin:0px;">
				<li><a href="#">전체 이벤트</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li><a href="<%=request.getContextPath()%>/Winner/WinnerList.do">당첨자 발표</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li><a href="#">참여 이벤트</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
			</ul>
			<hr id="nav_bar_sub">
		</div>
		<div id="nav_menu_sub_myticket_div" class="main_nav_all">
			<ul id="nav_menu_sub_myticket" style="margin:0px;">
				<li><a href="#">마이티켓 홈</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li><a href="#">예매확인/취소</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li><a href="#">마이 찜</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li><a href="#">할인쿠폰</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
			</ul>
			<hr id="nav_bar_sub">
		</div>
		<section>
			<article>
				<div class="open_notice">
					<h2>
						당첨자 발표 수정
					</h2>
					<form method="post" action="<%=request.getContextPath()%>/Winner/WinnerModifyAction.do?iidx=${detail.iidx}" enctype="multipart/form-data">
						<table class="open_notice_table" style="border:1px solid; border-collapse:collapse;">
							<colgroup>
								<col width="100px"/>
								<col width="35px"/>
								<col width="415px">
								<col width="85px">
								<col width="305px">
								<col width="70px">
								<col width="90px">
							</colgroup>
							<tr>
								<th style="border:1px solid;">
									제목
								</th>
								<td colspan="6" style="border:1px solid;">
									<input type="text" name="title" class="title" maxlength="100" style="width:99%; border:0px; font-size:16px;" value="${detail.ititle}">
								</td>
							</tr>
							<tr>
								<th style="border-bottom:1px solid;">
									이벤트 기간
								</th>
								<td colspan="6" style="border:1px solid;">
									<center>
										<input type="datetime-local" class="date" name="startdate" value="<fmt:formatDate value='${detail.iopendate}' type='both' pattern="yyyy-MM-dd'T'hh:mm"/>"> 에서&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="datetime-local" class="date" name="enddate" value="<fmt:formatDate value='${detail.ienddate}' type='both' pattern="yyyy-MM-dd'T'hh:mm"/>"> 까지
									</center>
								</td>
							</tr>
							<tr>
								<td	colspan="7">
									<center>
										<textarea class="content" name="content" style="width:99%; height:500px; border:0px; font-size:15px; resize:none; overflow-x:hidden;">${detail.icontent}</textarea>
									</center>
								</td>
							</tr>
							<tr>
								<th style="border:1px solid;">
									본문 사진
								</th>
								<td colspan="5" style="border:1px solid;">
									<input type="file" class="file" name="image" style="border:0px; font-size:14px;">
								</td>
								<td align="center" style="font-weight:bold;">
									공개여부&nbsp;<input type="checkbox" value="pub" name="pub">
								</td>
							</tr>
						</table>
						<div class="reg">
							<button type="submit" class="reg_btn">
								등록
							</button>
						</div>
						<div class="list">
							<button class="list_btn">
								목록으로
							</button>
						</div>
					</form>
				</div>
			</article>
		</section>
		<footer>
				<hr class="f_bar" id="f_bar_bottom">
				<div id="f_last">
					<span class="f_bottom_ment"><img src="../icon/lupinlogo.png" id="f_logo"></span>
					<span class="f_bottom_ment">
						<span class="f_bottom_tagset">예매문의(1234-1234)</span>
						<a href="#" class="f_bottom_tagset">티켓판매제휴&nbsp;&nbsp;&nbsp;&nbsp;</a>
						<a href="#" class="f_bottom_tagset">예매가이드&nbsp;&nbsp;&nbsp;&nbsp;</a>
					</span>
				</div>
				<hr class="f_bar" id="f_bar_bottom">
			<div class="f_title_inner">
				<span id="f_menu_contract_span">
					<ul id="f_menu_contract">
						<li><a href="#">회사소개</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
						<li><a href="#">이용약관</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
						<li><a href="#">전자금융거래약관</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
						<li><a href="#">위치기반서비스 이용약관&nbsp;&nbsp;|&nbsp;&nbsp;</a></li>
						<li><a href="#" style="font-weight:bold;">개인정보처리방침</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
						<li><a href="#">청소년보호정책</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
						<li><a href="#">파트너센터</a>&nbsp;&nbsp;&nbsp;&nbsp;</li><br>
					</ul>
				</span>
			</div>
			<div class="f_title_inner">
				<span id="f_menu_produce">
					<ul id="f_menu_produce">
						<li><a href="#" style="font-weight:bold;">(주)티켓루팡</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
						<li><a href="#">전북 전주시 덕진구 백제대로 572 4층</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
						<li><a href="#">대표이사:최민우</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
						<li><a href="#">사업자등록번호: 111-11-11111&nbsp;&nbsp;|&nbsp;&nbsp;</a></li>
						<li><a href="#">통신판매업 신고번호: 제1111-이젠이젠-1111호 <a href="#" style="font-weight:bold;">&nbsp;&nbsp;사업자정보확인>&nbsp;&nbsp;</a></a>&nbsp;&nbsp;&nbsp;&nbsp;</li><br>
						<li><a href="#">고객센터(평일/주말 09:00~18:00): 1234-1234(유료)</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
						<li><a href="#">호스팅제공자: (주)티켓루팡</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
						<li><a href="#">&copy;TicketLupin Corp. All rights reserved.</a>&nbsp;&nbsp;&nbsp;&nbsp;</li><br>
					</ul>
				</span>
			</div>
		</footer>
	</body>
</html>