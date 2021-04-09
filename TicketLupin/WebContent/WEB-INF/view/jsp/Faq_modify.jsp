<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<title>FAQ 글 작성</title>
		<link rel="stylesheet" href="../css/Faq_modify.css">
		<script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>
		<script src="<%=request.getContextPath()%>/js/Nav_event.js"></script>
		<script src="<%=request.getContextPath() %>/js/Nav_all.js"></script>
		<script>	
			function faqModify(){	
				
				$(document).ready(function(){
					
					if($(".title").val() == ''){
						
						alert("제목을 입력해주세요.");
						$(".title").focus();
						return false;
						
					}else if($(".content").val() == ''){
						
						alert("내용을 입력해주세요.");
						$(".content").focus();
						return false;
				
					}else{
						
						var conf = confirm("등록하시겠습니까?");
						
						if(conf == true){
							
							document.frm.action = "../Customer/FaqModifyAction.do";
							document.frm.method = "get";
							document.frm.submit();
							return;
							
						}else if(conf == false){
							
							return false;
						}
					}
					
				});	
				
			}
		</script>
	</head>
	<body>
		<header>
			<div id="h_title">
				<div id="h_title_inner">
					<span id="h_top_menu">
						<ul id="h_top_menu_ul">
						<c:if test="${not empty sessionScope.mid}">
		              		<li>${sessionScope.mid }님 환영합니다!&nbsp;&nbsp;&nbsp;&nbsp;</li>
		              		<li><a href="${pageContext.request.contextPath}/Member/Memberlogout.do">로그아웃&nbsp;&nbsp;|&nbsp;&nbsp;</a></li>
		                </c:if>
		                <c:if test="${empty sessionScope.mid}">
		                	<li class="login"><a href="${pageContext.request.contextPath}/Member/MemberLogin.do">로그인&nbsp;&nbsp;|&nbsp;&nbsp;</a></li>
		               		<li><a href="${pageContext.request.contextPath}/Member/MemberJoin.do">회원가입&nbsp;&nbsp;|&nbsp;&nbsp;</a></li>
		                </c:if>
		                	<li><a href="${pageContext.request.contextPath}/Customer/NoticeList.do">고객센터&nbsp;&nbsp;|&nbsp;&nbsp;</a></li>
		                	<li><a href="#">이용안내&nbsp;&nbsp;&nbsp;&nbsp;</a></li><br/>         
						</ul>
						<img src="../ads/musicalads.png" id="h_ads" style="float:right;">
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
				<a href="${pageContext.request.contextPath}/Main/MainPage.do" id="main_nav_home">홈</a>
				<a href="${pageContext.request.contextPath}/Show/ShowList.do" id="main_nav_concert">공연</a>
				<a href="#" id="main_nav_ranking">랭킹</a>
				<a href="${pageContext.request.contextPath}/News/NewsList.do" id="main_nav_news">티켓오픈소식</a>
				<a href="#" id="main_nav_event">이벤트</a>
				<c:choose>
					<c:when test="${sessionScope.mgrade eq 'M' }">
						<a href="#" id="main_nav_myticket">관리자</a>
					</c:when>
					<c:otherwise>
						<a href="#" id="main_nav_myticket">마이티켓</a>
					</c:otherwise>
				</c:choose>
			</nav>
		</div>
		<hr id="nav_bar_bottom">	
		<div id="nav_menu_sub_event_div" class="main_nav_all">
			<ul id="nav_menu_sub_event" style="margin:0px;">
				<li><a href="${pageContext.request.contextPath}/Event/EventList.do">전체 이벤트</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li><a href="${pageContext.request.contextPath}/Winner/WinnerList.do">당첨자 발표</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li><a href="#">참여 이벤트</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
			</ul>
		<hr id="nav_bar_sub">
		</div>
		<div id="nav_menu_sub_myticket_div" class="main_nav_all">
			<ul id="nav_menu_sub_myticket" style="margin:0px;">
				<c:choose>
					<c:when test="${sessionScope.mgrade eq 'M' }">
						<li><a href="${pageContext.request.contextPath}/Admin/AdminMain.do">관리자홈</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
						<li><a href="${pageContext.request.contextPath}/Admin/AdminMember.do">회원관리</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
						<li><a href="#">공연관리</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
						<li><a href="#">댓글관리</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
						<li><a href="../Customer/AnswerMain.do">문의관리</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
					</c:when>
					<c:otherwise>
						<li><a href="#">마이티켓 홈</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
						<li><a href="#">예매확인/취소</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
						<li><a href="${pageContext.request.contextPath}/Dibs/MyDibs.do">마이 찜</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
						<li><a href="#">할인쿠폰</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
					</c:otherwise>
				</c:choose>
			</ul>
		<hr id="nav_bar_sub">
		</div>
		<section>
			<article>
				<div class="faq">
					<p class="tit">
						<span class="label">고객센터</span>
					</p>
					<div class="cont_tbl">
						<table class="table1" border="1">
							<tr>
								<td width="140px"><a href="../Customer/NoticeList.do">공지사항</a></td>
								<td width="140px"><a href="../Customer/Buyguide.do">이용안내</a></td>
								<td width="140px"><a href="../Customer/FaqList.do">FAQ</a></td>
								<td width="140px">
									<c:choose>
										<c:when test="${not empty sessionScope.mid && sessionScope.mgrade eq 'G'}">
											<a href="../Customer/QuestionList.do">나의 문의 내역</a>
										</c:when>
										<c:when test="${not empty sessionScope.mid && sessionScope.mgrade eq 'M'}">
											<a href="../Customer/AnswerMain.do">문의 관리</a>
										</c:when>
										<c:otherwise>
											<a href="../Member/MemberLogin.do">나의 문의 내역</a>
										</c:otherwise>
									</c:choose>
								</td>
							</tr>
						</table>
					</div>
					<c:set var="fv" value="${fv}"/>
					<form name="frm">
					<table class="faq_table" style="border:1px solid; border-collapse:collapse;">
						<colgroup>
							<col width="50px"/>
							<col width="1000px"/>
							<col width="85px"/>
							<col width="68px"/>
						</colgroup>
						<tr>
							<th style="border:1px solid;">
								제목
							</th>
							<td style="border:1px solid;">
								<input type="text" name="ftitle" class="title" maxlength="100" style="border:0px; font-size:16.1px; width:99%" autocomplete="off" value="${fv.ftitle}">
							</td>
							<th style="border:1px solid;">
								문의유형
							</th>
							<td style="border:1px solid;">
								<center>
									<select class="type" name="ftype" style="border:0px; font-size:15px; text-align-last:center;">
										<option ${fv.ftype == '티켓예매' ? 'selected="selected"' : '' }>
											티켓예매
										</option>
										<option ${fv.ftype == '취소/환불' ? 'selected="selected"' : '' }>
											취소/환불
										</option>
										<option ${fv.ftype == '티켓수령' ? 'selected="selected"' : '' }>
											티켓수령
										</option>
										<option ${fv.ftype == '회원' ? 'selected="selected"' : '' }>
											회원
										</option>
										<option ${fv.ftype == '이벤트' ? 'selected="selected"' : '' }>
											이벤트
										</option>
									</select>
								</center>
							</td>
						</tr>
						<tr>
							<td colspan="4">
								<center>
									<textarea class="content" name="fcontent" style="width:99%; height:500px; border:0px; font-size:15px; resize:none; overflow-x:hidden;" placeholder="내용을 입력해주세요.">${fv.fcontent}</textarea>
								</center>
							</td>
						</tr>
					</table>
					<input type="text" name="fidx" value="${param.fidx}" style="display:none;">
					<div class="reg">
						<button class="reg_btn" onclick="faqModify(); return false;">
							등록
						</button>
					</div>
					</form>
					<div class="list">
						<button class="list_btn" onclick="location.href='../Customer/FaqList.do'">
							목록으로
						</button>
					</div>
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