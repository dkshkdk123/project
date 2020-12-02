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
<%@ include file="admin_header.jsp" %>

</head>
<body>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs;
	
	String custid, pw, author, goods, phone, email, area;
	try{
		conn = DBcon.getConnection();
		String sql ="insert into custom_tbl values(?,?,?,?,?,?,?) ";
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
			System.out.println("Ins error:"+e);
		}finally{
			try{
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e){
				System.out.println("DB error:"+e);
			}
		}
%>
<script>
location.href="admin_memberList.jsp";
</script>
</body>
</html>