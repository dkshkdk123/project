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
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <style>
        .content{clear: both; width: 100%; height: 630px; }
    </style>
    
 
    
</head>
   <%
    	Connection conn = null;
    	PreparedStatement pstmt = null;
    	ResultSet rs;
    	
    	String custid = request.getParameter("custid");
    	try{
    		conn = DBcon.getConnection();
    		String sql = "delete from custom_tbl where custid=? ";
    		pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, custid);
    		rs = pstmt.executeQuery();
  			
    		%>
    		
    		<script>
    		location.href="admin_memberList.jsp";
    		</script>
    		<%
    	}catch(Exception e){
    		System.out.println("삭제 error:"+e);
    	}finally{
    		try{
    			if(pstmt!=null) pstmt.close();
    			if(conn!=null)  conn.close();
    		}catch(Exception e){
    			System.out.println("DB error:"+e);
    		}
    	}
    %>