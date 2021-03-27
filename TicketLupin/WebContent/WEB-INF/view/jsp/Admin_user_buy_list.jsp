<%@page import="java.util.*"%>
<%@page import="com.TicketLupin.web.service.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	MemberVo mv = (MemberVo)request.getAttribute("mv"); 
	ArrayList<ReservationVo> alist = (ArrayList<ReservationVo>) request.getAttribute("alist");
%>
<!DOCTYPE html>
<html>
	<head>
		<title>티켓루팡</title>
		<link rel="stylesheet" href="<%=request.getContextPath()%>/css/Admin_user_buy_list.css">
	</head>
	<body>
		<!--header-->
		<!--section-->
		<div id="hh">
			<div id="aaa">
				<h2>조회하신 회원님 구매 목록입니다.</h2>
			</div>
			<table class="type05">
			<tr>
				<th>이름</th> <td><%=mv.getMname() %></td>
			</tr>
			<tr>
				<th>아이디</th> <td><%=mv.getMid() %></td>
			</tr>
			</table>

				<table class="type02">
					<tr>
						<th class="t1">no</th>
						<th class="t3">공연날짜</th>
						<th class="t3">예매날짜</th>
						<th class="t2">공연명</th>
						<th class="t3">예매좌석</th>
						<th class="t3">결제금액</th
						><th class="t1">취소</th>
					</tr>
				<% for(ReservationVo rv : alist){ %>
					
					<tr>
						<td><%=rv.getRidx() %></td>
						<td><%=rv.getSrdate() %></td>
						<td><%=rv.getRregdate() %></td>
						<td><a href="#"><%=rv.getStitle() %></a></td>
						<td><%=rv.getRseat() %></td>
						<td><%=rv.getRprice() %></td>
						<td><button>취소</button></td>
					</tr>
					
				<% } %>		
					
				</table>
				<br>
				<div id="num">
					<a href="#"><<</a>&nbsp;
					<a href="#"><</a>&nbsp;
					<a href="#">1</a>&nbsp;
					<a href="#">2</a>&nbsp;
					<a href="#">3</a>&nbsp;
					<a href="#">4</a>&nbsp;
					<a href="#">5</a>&nbsp;
					<a href="#">6</a>&nbsp;
					<a href="#">7</a>&nbsp;
					<a href="#">8</a>&nbsp;
					<a href="#">9</a>&nbsp;
					<a href="#">10</a>&nbsp;
					<a href="#">></a>&nbsp;
					<a href="#">>></a>
				</div>
				<div>
				<button type="button" id="rainisback" onclick="history.back()">뒤로가기</button>
				</div>
		</div>
		<!--footer-->

	</body>
</html>