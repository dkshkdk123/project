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
        .content{clear: both; width: 100%; height: 630px;  }
        .page{clear: both; width: 1280px;  margin: 0 auto; }
        .tit{text-align: center; margin-top: 20px; margin-bottom: 20px;}    
		.page_help{clear: both; width: 1280px;   margin: 0 auto;}
        .page_help tr td{width: 175px;}
        .page_help form{width: 1280px; margin: 0 auto; margin-left: 520px;}
        .button{clear: both; width: 1280px; margin: 0 auto;} 
        button{width: 253px; height: 50px; margin-top: 10px; font-size: 18px; font-weight: bold;}
        #pwchk{width: 300px; height: 200px;}

    </style>
</head>
<body>
	<%@ include file ="admin_nav.jsp"%>

	<%
		request.setCharacterEncoding("utf-8");
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs;
		
		
		String custid = request.getParameter("custid");
		String pw, author, goods, phone, email, area;
		
		try{
			conn = DBcon.getConnection();
			String sql = "select * from custom_tbl where custid=? ";
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
		        <h1 class="tit">회원 삭제</h1>
		        <div class="page_help">
		            <form action="admin_memberDeletePro.jsp" id="register1" name="register1" method="GET">
		                <table border="1" >
		                    <tbody>
		                        <tr>
		                            <th><label for="custid">아이디</label></th>
		                            <td><input type="text" id="custid" name="custid" value=""></td>
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
		                        	<th><label for="area">지역</label></th>
		                        	<td><input type="text" id="area" name="area" value="<%=area %>"></td>
		                        </tr>   
		                    </tbody>
		                </table>  
		                <button type="button" id="danger_btn">Delete</button>
						<input type="button" id="custidchk" name="custidchk" value="<%=custid %>" />
						 	
		            </form>
		            	    
		            <script>
		            	var form = document.register1;
		            	var danger_btn = document.getElementById("danger_btn");
		            	var custid = form.custid;
		            	var custidchk = form.custidchk;
		            	
		            	danger_btn.addEventListener("click", function(){
		            		if(custid.value == custidchk.value){
		            			alert("아이디가 맞습니다.");
		            			form.submit();
		            		}else{
		            			alert("아이디가 틀립니다.");
		            			return false;
		            		}
		            	});
		            </script>
		        </div>
		    </section>
		</main>
	<%
			}
		}catch(Exception e){
				System.out.println("delete error:"+e);
		}finally{
			try{
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e){
				System.out.println("DB error:"+e);
			}
		}
	%> 
	<%@ include file ="footer.jsp"%>