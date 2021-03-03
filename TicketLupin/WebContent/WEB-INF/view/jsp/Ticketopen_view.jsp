<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	pageContext.setAttribute("cn", "\n");
	pageContext.setAttribute("br", "<br/>");
%>
<!DOCTYPE html>
<html>
	<head>
		<title>티켓 오픈 상세</title>
		<script src="<%=request.getContextPath() %>/js/Ticketopen_view.js"></script>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Ticketopen_view.css">
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
					<a href="<%=request.getContextPath()%>/Main/MainPage.do"><img src="../icon/lupinlogo.png" id="h_logo"></a>&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" id="h_search" placeholder="뮤지컬 〈캣츠〉 40주년 내한공연 앙코르－서울（Musical CATS Encore">
					<button type="submit" id="h_search_button"><img src="../icon/search.png" id="h_search_img"></button>
				</div>
			</div>
		</header>
		<hr id="nav_bar_top">
		<div id="n_nav_div">
			<nav id="main_nav">
				<a href="<%=request.getContextPath()%>/Main/MainPage.do" id="main_nav_home">홈</a>
				<a href="#" id="main_nav_concert">공연</a>
				<a href="#" id="main_nav_ranking">랭킹</a>
				<a href="<%=request.getContextPath()%>/News/NewsList.do" id="main_nav_news">티켓오픈소식</a>
				<a href="#" id="main_nav_event">이벤트</a>
				<a href="#" id="main_nav_admin">관리자</a>
			</nav>
		</div>
		<hr id="nav_bar_bottom">
		
		
		<div class="wrap_nav" id="wrap_nav" style="display:none;">
			<div id="nav_menu_sub_div" class="main_nav_all">
				<ul id="nav_menu_sub">
					<li><a href="#">관리자홈</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li><a href="#">회원관리</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li><a href="#">공연관리</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li><a href="#">댓글관리</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li><a href="#">문의관리</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
				</ul>
			</div>
			<hr id="nav_bar_sub"/>
		</div>
		<div class="wrap_nav"  id="wrap_nav2" style="display:none;">
			<div id="nav_menu_sub_div" class="main_nav_event">
				<ul id="nav_menu_sub2">
					<li><a href="#">전체 이벤트</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li><a href="<%=request.getContextPath()%>/Winner/WinnerList.do">당첨자 발표</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li><a href="#">참여이벤트</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
				</ul>
			</div>
			<hr id="nav_bar_sub"/>
		</div>
		
		
		<section>
			<div class="view">
				<div class="view_top">
					<img class="view_top_poster" src="<%=request.getContextPath() %>/poster/${detail.wtitleposter}">
					<div class="view_top_info">
						<span>
							${detail.wtitle }
						</span>
						<input type="text" id="url" class="url_input" size="35" />
						<button class="url_btn" onclick="urlClipCopy()">
							<img src="../icon/url.png" class="url_btn_img">
						</button>
						<dl class="register_info">
							<dt class="dt1">
								등록일
							</dt>
							<dd class="dd1">
								<fmt:formatDate value="${detail.wregdate }" type="both" pattern="YYYY.MM.dd(E)"/>
							</dd>
							<dt class="dt2">
								|&nbsp;&nbsp;&nbsp;조회
							</dt>
							<dd class="dd2">
									${detail.whit }
							</dd>
						</dl>
						<div class="modify">
							<c:if test ="${sessionScope.mgrade eq 'M'}">
							<button class="remove_btn" onclick="location.href='<%=request.getContextPath()%>/News/NewsDeleteAction.do?widx=${detail.widx}'">
								삭제하기
							</button>
							<button class="modify_btn">
								수정하기
							</button>
							</c:if>
							<c:if test ="${sessionScope.mgrade eq 'U'}">
							</c:if>
							<c:if test = "${empty sessionScope.mgrade}">
							</c:if>
						</div>
					</div>
				</div>
				<div class="view_middle">
					<h3 style="font-size:20px;">
						티켓오픈일정
					</h3>
					<div class="view_middle_info">
						<span style="font-size:18px; display:block">
							${detail.wtitle}
						</span>
						<div style="font-size:15px; margin-top:10px; font-family:initial;">
							티켓오픈 : <fmt:formatDate value="${detail.wopendate}" type="both" pattern="YYYY년 MM월 dd일 (E) HH:ss"/>
						</div>
						<div class="view_middle_btn">
							<button class="dib_btn">
								찜하기
							</button>
							<button class="detail_btn">
								상세보기
							</button>
						</div>
					</div>
				</div>
				<div class="view_bottom">
					<h3 style="font-size:20px">
						기본정보
					</h3>
					<div class="data_txt">
						<p>
							<span style="font-size: 11pt;">
								${fn:replace(detail.wbasicinfo, cn, br)}
							</span>
						</p>
					</div>
					<h3 style="font-size:20px">
						공연소개
					<h3>
					<div class="concert_info_txt">
						<p>
							<span style="font-size: 11pt;">
								${fn:replace(detail.wintroduce, cn, br)}		
							</span>
						</p>
					</div>
					<h3 style="font-size:20px">
						할인정보
					</h3>
					<div class="notice_price">
						<p>
							<span style="font-size: 11pt;">
								${fn:replace(detail.wdiscount, cn, br)}
							</span>
						</p>
					<h3 style="font-size:20px">
						기획사 정보
					</h3>
					<div class="txt" style="margin-bottom:100px; font-size: 11pt;">                                
						${fn:replace(detail.wcompany, cn, br)}
					</div>
					<button class="list_btn"  onclick="location.href='<%=request.getContextPath()%>/News/NewsList.do'">
						목록으로
					</button>
				</div>
			</div>
		</section>
		<footer>
			<div class="footer">
				<hr class="main_bar" id="main_bar_bottom">
					<div id="main_last">
						<span class="main_bottom_ment"><img src="../icon/lupinlogo.png" id="main_logo"></span>
						<span class="main_bottom_ment">
							<span class="main_bottom_tagset">예매문의(1234-1234)</span>
							<a href="#" class="main_bottom_tagset">티켓판매제휴&nbsp;&nbsp;&nbsp;&nbsp;</a>
							<a href="#" class="main_bottom_tagset">예매가이드&nbsp;&nbsp;&nbsp;&nbsp;</a>
						</span>
					</div>
				<hr class="main_bar" id="main_bar_bottom">
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
			</div>
		</footer>
	</body>
</html>