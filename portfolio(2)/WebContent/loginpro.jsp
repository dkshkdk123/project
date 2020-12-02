<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import= "portfolio.DBcon" %>
<%@ page import="java.util.*, java.text.* ,java.lang.*, java.net.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8");
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs;
		
		String custid = request.getParameter("custid");
		String pw = request.getParameter("pw");
		System.out.println(pw);
		try{
			conn = DBcon.getConnection();
			String sql = "select custid, pw from custom_tbl where custid=? and pw=? ";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, custid);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				if(custid.equals("admin") && pw.equals("1234")){
					System.out.println("관리자 로그인 성공");%>
					<script>
					alert("관리자 로그인 성공");
					location.href="admin.jsp";
					</script>
					<%
				}
					%>
				<script>
				alert("로그인했습니다.");
				location.href="index.jsp";
				
				</script>
				<%
				session.setAttribute("custid", custid);
				session.setAttribute("pw", pw);
				}else{
					System.out.println("로그인실패");
					%>
					<script>
					alert("로그인 실패했습니다.");
					location.href="login.jsp";
					</script>
					<%
				}
			%>
	
			<%

		}catch(Exception e){
			System.out.println("login error:"+e);
		}finally{
			try{
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		}catch(Exception e){
			System.out.println("DB erro:"+e);
		}
	}
	%>
</body>
</html>