<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="portfolio.DBcon" %>
<%@ page import="java.util.*, java.text.* ,java.lang.*, java.net.*" %>

<%@ include file="admin_header.jsp" %>


   <style>
        .content{clear: both; width: 100%; height: 540px;  }
        .page{clear: both; width: 1280px; margin: 0 auto;}
        .tit{text-align: center; margin-top: 20px; margin-bottom: 20px;}    
        .page_help{ text-align: center;}
        .page_help table{margin-left: 310px; margin-top: 20px;}
        .page_help th{width: 150px; text-align: center; height: 50px;}  
        .page_help td{width: 500px; }
        .page_help input{width: 480px; height: 25px; margin-left: 10px;}
        
        .button{clear: both; width: 1280px; margin: 0 auto;} 
        button{width: 220px; height: 50px; margin-top: 20px; font-size: 18px; font-weight: bold;}
        

    </style>
</head>
<body>
	<%@ include file ="admin_nav.jsp"%>
	
	<% request.setCharacterEncoding("utf-8");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs;
	
	String custid = request.getParameter("custid");
	String pw, author, goods, phone, email, area;
	
	try{
		conn = DBcon.getConnection();
		String sql ="select * from custom_tbl where custid=? ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("custid"));
		rs = pstmt.executeQuery();
		while(rs.next()){
			pw = rs.getString("pw");
			author = rs.getString("author");
			goods = rs.getString("goods");
			phone = rs.getString("phone");
			email = rs.getString("email");
			area = rs.getString("area");
		%>
		<main class="content">
		    <section class="page">
		        <h1 class="tit">회원정보수정</h1>
		        <div class="page_help">
		            <form action="admin_memberEditPro.jsp" id="register1" name="register1" method="GET">
		                <table border="1" >
		                    <tbody>
		                        <tr>
		                            <th><label for="custid">아이디</label></th>
		                            <td><input type="text" id="custid" name="custid" value="<%=custid %>" readonly></td>
		                        </tr>
		                        <tr>
		                            <th><label for="pw">비밀번호</label></th>
		                            <td><input type="password" id="pw" name="pw" value="<%=pw %>"></td>
		                        </tr>
		                        <tr>
		                            <th><label for="author">성명</label></th>
		                            <td><input type="text" id="author" name="author" value="<%=author %>"></td>
		                        </tr>
		                        <tr>
		                            <th><label for="goods">관심상품</label></th>
		                            <td><input type="text" id="goods" name="goods" value="<%=goods %>"></td>
		                        </tr>
		                        <tr>
		                            <th><label for="phone">전화번호</label></th>
		                            <td><input type="text" id="phone" name="phone" value="<%=phone %>"></td>
		                        </tr>
		                        <tr>
		                            <th><label for="email">이메일</label></th>
		                            <td><input type="text" id="email" name="email" value="<%=email %>"></td>
		                        </tr>
		                        <tr>
		                            <th><label for="area">거주지역</label></th>
		                            <td><input type="text" id="area" name="area" value="<%=area %>"></td>
		                        </tr>
		                    </tbody>
		                </table>
		                <div class="button">
		                    <button type="button" id="submit_btn">수정</button>
		                    <button type="button" id="back_btn">취소</button>
		                    <button type="button" id="Delete_btn">삭제</button>
		                </div>     
		            </form>
		            <script>
		            var form = document.register1;
		            var submit_btn = document.getElementById("submit_btn");
		            var back_btn = document.getElementById("back_btn");
		            var custid = form.custid;
		            var pw = form.custid;
		            var author = form.author;
		            var goods = form.goods;
		            var phone = form.phone;
		            var email = form.email;
		            var area = form.area;
		            
		            submit_btn.addEventListener("click", function(){
		            	if(pw.value==""){
		            		alert("비밀번호가 비어있습니다.");
		            		pw.focus();
		            		return;
		            	}
		            	if(author.value==""){
		            		alert("이름이 비어있습니다.");
		            		author.focus();
		            		return;
		            	}
		            	if(goods.value==""){
		            		alert("관싱상품이 비어있습니다.");
		            		goods.focus();
		            		return;
		            	}
		            	if(phone.value==""){
		            		alert("전화번호가 비어있습니다.");
		            		phone.focus();
		            		return;
		            	}
		            	if(email.value==""){
		            		alert("이메일이 비어있습니다.");
		            		email.focus();
		            		return;
		            	}
		            	if(area.value==""){
		            		alert("거주지역이 비어있습니다.");
		            		area.focus();
		            		return;
		            	}
		            	if( pw.value!="" && author.value!="" && goods.value!="" && phone.value!="" && email.value!="" && area.value!=""){
		            		form.submit();
		            	}
		            });
		            back_btn.addEventListener("click", function(){
		            	location.href="admin.jsp";
		            });
		            Delete_btn.addEventListener("click", function(){
		            	location.href="admin_memberDelete.jsp";
		            });
		            </script>
		        </div>
		    </section>
		</main>
    <%
		}
		}catch(Exception e){
			System.out.println("ProductBean erro:"+e);
		}finally{
			try{
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e){
				System.out.println("DB close error:"+e);
			}
		}
	%>
	<%@ include file ="footer.jsp"%>