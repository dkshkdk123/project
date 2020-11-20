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
<link rel="stylesheet" href="./css/admin_header.css">
 	<style>
        .content{clear: both; width: 100%; height: 540px; }
        .page{clear: both; width: 1280px; margin: 0 auto;}
        .tit{text-align: center; margin-top: 20px; margin-bottom: 20px;}    
        .page_help{text-align: center; margin-left: 100px;}
        .page_help th{width: 150px;}
        
    </style>
</head>
<body>
	<%@ include file ="admin_nav.jsp"%>
	 <main class="content">
    <section class="page">
        <h1 class="tit">회원 목록</h1>
        <div class="page_help">
            <form action="" id="" name="" method="GET">
                <table border="1">
                    <thead>
                        <tr>
                            <th>아이디</th>
                            <th>비밀번호</th>
                            <th>성명</th>
                            <th>관심상품</th>
                            <th>전화번호</th>
                            <th>이메일</th>
                            <th>거주지역</th>
                        </tr>
                    </thead>
                    <%
                    Connection conn =null;
                    PreparedStatement pstmt = null;
                    ResultSet rs;
                    
                    String custid, pw, author, goods, phone, email, area;
                    
                    try{
                    	conn = DBcon.getConnection();
                    	String sql = "select * from custom_tbl ";
						pstmt = conn.prepareStatement(sql);
                    	rs = pstmt.executeQuery();
                   
                    	while(rs.next()){
                    		custid = rs.getString("custid");
                    		pw = rs.getString("pw");
                    		author = rs.getString("author");
                    		goods = rs.getString("goods");
                    		phone = rs.getString("phone");
                    		email = rs.getString("email");
                    		area = rs.getString("area");
                    
                    %>
                    <tbody>
                        <tr>
                            <td><a href="admin_memberEdit.jsp?custid=<%=custid %>"><%=custid %></a></td>
                            <td><%=pw %></td>
                            <td><%=author %></td>
                            <td><%=goods %></td>
                            <td><%=phone %></td>
                            <td><%=email %></td>
                            <td><%=area %></td>
                        </tr>
				<%
                    	}
				%>
                    </tbody>
                </table>
                <%
                	
                }catch(Exception e){
                	System.out.println("List error:"+e);
                }finally{
                	try{
                		if(pstmt!=null) pstmt.close();
                		if(conn!=null) conn.close();
                	}catch(Exception e){
                		System.out.println("DB error:"+e);
                	}
                }
                
                %>
            </form>
        </div>
    </section>
</main>
	<%@ include file ="footer.jsp"%>

