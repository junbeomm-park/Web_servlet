<%@page import="java.util.ArrayList"%>
<%@page import="member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	ArrayList<MemberDTO> userlist = (ArrayList<MemberDTO>)request.getAttribute("userlist");
	%>

		<h1>사원목록</h1>
		<hr/>
		<table border='1' width="600">
		  <tr bgColor='skyblue'>
	
				<th>아이디</th><th>성명</th><th>패스워드</th>
				<th>주소</th>
				<th>포인트</th><th>부서번호</th><th>삭제</th>
			</tr>
			<% for(int i = 0; i < userlist.size() ; i++) { %>
				<tr>
				<% MemberDTO user = userlist.get(i);%>
				<th><a href='/serverweb/member/read.do?id=<%= user.getId() %>'><%= user.getId()%></a></th>
				<th><%= user.getName() %></th>
				<th><%= user.getPass() %></th>
				<th><%= user.getAddr() %></th>
				<th><%= user.getPoint() %></th>
				<th><%= user.getDeptno() %></th>
				<th><a href='/serverweb/member/delete.do?id=<%= user.getId() %>'>삭제</a><br></th>
				</tr>
				<%} %>
			
		
		</table>
	
</body>
</html>






