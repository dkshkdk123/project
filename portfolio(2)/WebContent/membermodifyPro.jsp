<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="portfolio.DBcon" %>
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

<%
	request.setCharacterEncoding("utf-8");

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs;
	
	String custid = request.getParameter("custid");
	
	try{
		conn = DBcon.getConnection();
		String sql ="update custom_tbl set pw=?, author=?, goods=?, phone=?, email=?, area=? where custid=? ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("pw"));
		pstmt.setString(2, request.getParameter("author"));
		pstmt.setString(3, request.getParameter("goods"));
		pstmt.setString(4, request.getParameter("phone"));
		pstmt.setString(5, request.getParameter("email"));
		pstmt.setString(6, request.getParameter("area"));
		pstmt.setString(7, custid);
		pstmt.executeQuery();
		
	}catch(Exception e){
		System.out.println("modify error:"+e);
	}finally{
		try{	
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		%>
		<script>
		alert("회원정보 수정 완료");
		location.href="mypage.jsp";
		</script>
		<% 
	
	}catch(Exception e){
		System.out.println("DB error:"+e);
	}
	}
%>		
		
	
</body>
</html>