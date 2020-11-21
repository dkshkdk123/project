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
<%@ include file ="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 액션폼</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8");
		
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs;
		
		try{
			conn = DBcon.getConnection();
			String sql ="insert into custom_tbl values(?, ?, ?, ?, ?, ?, ?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("custid"));
			pstmt.setString(2, request.getParameter("pw"));
			pstmt.setString(3, request.getParameter("author"));
			pstmt.setString(4, request.getParameter("goods"));
			pstmt.setString(5, request.getParameter("phone"));
			pstmt.setString(6, request.getParameter("email"));
			pstmt.setString(7, request.getParameter("area"));
			
			pstmt.executeQuery();
		}catch(Exception e){
			System.out.println("join erro:"+e);
		}finally{
			try{
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e){
				System.out.println("DB erro:"+e);
			}
		}
	%>
	<script>
	location.href="join3.jsp";
	alert("회원가입 성공");
	</script>
</body>
</html>