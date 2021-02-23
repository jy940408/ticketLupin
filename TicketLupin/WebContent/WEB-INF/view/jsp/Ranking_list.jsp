<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>티켓 루팡</title>
		<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		<script src="<%=request.getContextPath() %>/js/Nav_event.js"></script>
		<script src="<%=request.getContextPath() %>/js/Ranking_list.js"></script>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Ranking_list.css">
		<script>
			
		</script>
	</head>
	<body>
		<header>
			<div id="h_title">
				<div id="h_title_inner">
					<span id="h_top_menu">
						<ul id="h_top_menu_ul">
							<li><a href="#">로그인&nbsp;&nbsp;|&nbsp;&nbsp;</a></li>
							<li><a href="#">회원가입&nbsp;&nbsp;|&nbsp;&nbsp;</a></li>
							<li><a href="#">고객센터&nbsp;&nbsp;|&nbsp;&nbsp;</a></li>
							<li><a href="#">이용안내&nbsp;&nbsp;&nbsp;&nbsp;</a></li><br>
						</ul>
						<img src="musicalads.png" id="h_ads">
					</span>
					<img src="lupinlogo.png" id="h_logo">&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" id="h_search" placeholder="뮤지컬 〈캣츠〉 40주년 내한공연 앙코르－서울（Musical CATS Encore">
					<button type="submit" id="h_search_button"><img src="search.png" id="h_search_img"></button>
				</div>
			</div>
		</header>
		<hr id="nav_bar_top">
		<div id="n_nav_div">
			<nav id="main_nav">
				<a href="#" id="main_nav_home">홈</a>
				<a href="#" id="main_nav_concert">공연</a>
				<a href="#" id="main_nav_ranking">랭킹</a>
				<a href="#" id="main_nav_news">티켓오픈소식</a>
				<a href="#" id="main_nav_event">이벤트</a>
				<a href="#" id="main_nav_admin">마이티켓</a>
			</nav>
		</div>
		<hr id="nav_bar_bottom">
		
		
		<div class="wrap_nav" id="wrap_nav" style="display:none;">
			<div id="nav_menu_sub_div">
				<ul id="nav_menu_sub">
					<li><a href="#">마이홈</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li><a href="#">예매확인/취소</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li><a href="#">마이찜</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li><a href="#">할인쿠폰</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
				</ul>
			</div>
			<hr id="nav_bar_sub"/>
		</div>
		
		<div class="wrap_nav"  id="wrap_nav2" style="display:none;">
			<div id="nav_menu_sub_div" class="main_nav_event" >
				<ul id="nav_menu_sub2">
					<li><a href="#">전체 이벤트</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li><a href="#">당첨자 발표</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li><a href="#">참여이벤트</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
				</ul>
			</div>
			<hr id="nav_bar_sub"/>
		</div>
		
		
		<section>
			<article>
				<div class="wrap_ranking">
					<div class="wrap_rank_date">
						<div id="wrap_select_drop_on"  onclick="mydiv()">
							<div class="tit_rank_date">
								<button type="button" value="realtime" onclick="nowranking()" class="rankbtn">실시간 랭킹 - 2021.02.03(수) 현재 &nbsp;&nbsp; ∨</button>
							</div>
							<ul class="select_list" id="ul_list" style="display:none">
								<li><a href="#">실시간</a></li>
								<li><a href="#">주간</a></li>
								<li><a href="#">월간</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="ranking_list">
					<table class="top10">
						<thead>
							<tr>
								<th width="138">랭킹</th>
								<th width="424">공연명</th>
								<th width="128">공연일시</th>
								<th width="168">공연장소</th>
								<th width="150">예매</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="num">1</td>
								<td class="td_">
									<div class="show_info">
										<span class="show_poster">
											<a href="#"><img src="./poster/musicalposter1.jpg" class="rank_poster"></a>
										</span>
										<span class="show_title">
											<a href="#">검은 사제들</a>
										</span>
									</div>
								</td>
								<td>2021.02.25 ~ 2021.05.30</td>
								<td>대학로 유니플렉스 1관</td>
								<td>
									<button type="button" class="btn_rank">예매하기</button>
								</td>
							</tr>
							<tr>
								<td class="num">2</td>
								<td class="td_">
									<div class="show_info">
										<span class="show_poster">
											<a href="#"><img src="./poster/musicalposter2.jpg" class="rank_poster"></a>
										</span>
										<span class="show_title">
											<a href="#">쿠로이 저택엔 누가 살고 있을까?</a>
										</span>
									</div>
								</td>
								<td>2021.02.18 ~ 2021.03.21</td>
								<td>플러스씨어터 (구. 컬처스페이스 엔유)</td>
								<td>
									<button type="button" class="btn_rank">예매하기</button>
								</td>
							</tr>
							<tr>
								<td class="num">3</td>
								<td class="td_">
									<div class="show_info">
										<span class="show_poster">
											<a href="#"><img src="./poster/musicalposter3.jpg" class="rank_poster"></a>
										</span>
										<span class="show_title">
											<a href="#">유월</a>
										</span>
									</div>
								</td>
								<td>2021.01.22~23, 29~30</td>
								<td>경기아트센터 광명시민회관</td>
								<td>
									<button type="button" class="btn_rank">예매하기</button>
								</td>
							</tr>
							<tr>
								<td class="num">4</td>
								<td class="td_">
									<div class="show_info">
										<span class="show_poster">
											<a href="#"><img src="./poster/musicalposter4.jpg" class="rank_poster"></a>
										</span>
										<span class="show_title">
											<a href="#">에어포트 베이비(Airport Baby)</a>
										</span>
									</div>
								</td>
								<td>2021.1.11 ~ 2021.04.30</td>
								<td>신한카드 FAN(판)스퀘어 라이브홀</td>
								<td>
									<button type="button" class="btn_rank">예매하기</button>
								</td>
							</tr>
							<tr>
								<td class="num">5</td>
								<td class="td_">
									<div class="show_info">
										<span class="show_poster">
											<a href="#"><img src="./poster/musicalposter5.jpg" class="rank_poster"></a>
										</span>
										<span class="show_title">
											<a href="#">하모니(harmony)</a>
										</span>
									</div>
								</td>
								<td>2021.02.18 ~2021.03.01</td>
								<td>예스24스테이지 1관</td>
								<td>
									<button type="button" class="btn_rank">예매하기</button>
								</td>
							</tr>
							<tr>
								<td class="num">6</td>
								<td class="td_">
									<div class="show_info">
										<span class="show_poster">
											<a href="#"><img src="./poster/musicalposter6.jpg" class="rank_poster"></a>
										</span>
										<span class="show_title">
											<a href="#">향화</a>
										</span>
									</div>
								</td>
								<td>2021.02.19 ~2021.02.21</td>
								<td>경기아트센터 대극장</td>
								<td>
									<button type="button" class="btn_rank">예매하기</button>
								</td>
							</tr>
							<tr>
								<td class="num">7</td>
								<td class="td_">
									<div class="show_info">
										<span class="show_poster">
											<a href="#"><img src="./poster/musicalposter7.jpg" class="rank_poster"></a>
										</span>
										<span class="show_title">
											<a href="#">붉은정원</a>
										</span>
									</div>
								</td>
								<td>2021.02.05 ~ 2021.03.28</td>
								<td>대학로 유니플렉스 2관</td>
								<td>
									<button type="button" class="btn_rank">예매하기</button>
								</td>
							</tr>
							<tr>
								<td class="num">8</td>
								<td class="td_">
									<div class="show_info">
										<span class="show_poster">
											<a href="#"><img src="./poster/musicalposter8.jpg" class="rank_poster"></a>
										</span>
										<span class="show_title">
											<a href="#">위키드(WICKED)</a>
										</span>
									</div>
								</td>
								<td>2021.02.16 ~ 2021.05.01</td>
								<td>블루스퀘어 신한카드홀(구 인터파크홀)</td>
								<td>
									<button type="button" class="btn_rank">예매하기</button>
								</td>
							</tr>
							<tr>
								<td class="num">9</td>
								<td class="td_">
									<div class="show_info">
										<span class="show_poster">
											<a href="#"><img src="./poster/musicalposter9.jpg" class="rank_poster"></a>
										</span>
										<span class="show_title">
											<a href="#">맨 오브 라만차</a>
										</span>
									</div>
								</td>
								<td>2020.12.18 ~2021.03.01</td>
								<td>샤롯데씨어터</td>
								<td>
									<button type="button" class="btn_rank">예매하기</button>
								</td>
							</tr>
							<tr>
								<td class="num">10</td>
								<td class="td_">
									<div class="show_info">
										<span class="show_poster">
											<a href="#"><img src="./poster/musicalposter10.jpg" class="rank_poster"></a>
										</span>
										<span class="show_title">
											<a href="#">배니싱</a>
										</span>
									</div>
								</td>
								<td>2020.11.01 ~2021.02.21</td>
								<td>대학로 아트원씨어터 1관</td>
								<td>
									<button type="button" class="btn_rank">예매하기</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</article>
		</section>
		<footer>
			<hr class="f_bar" id="f_bar_bottom">
			<div id="f_last">
				<span class="f_bottom_ment"><img src="lupinlogo.png" id="f_logo"></span>
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