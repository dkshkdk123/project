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
<%@ include file="header.jsp" %>
<style>
.content{clear: both;  width: 100%; height: 630px;}
.crumb{clear: both; width: 1280px;  margin: 0 auto; }
        .crumb li{float: left  ; margin-top: 20px; margin-bottom: 40px; }
        .crumb li a{color: #333; font-size: 14px; font-weight: bold;  }
        .crumb li:last-of-type::after{content: none;}
        .crumb li::after{content: ">"; padding-right: 20px; padding-left: 20px;}
        .page_d{clear: both; width: 1280px; height: 500px; margin: 0 auto; }
        .tit_d{width: 100%; height: 20px; margin-top: 20px; margin-bottom: 20px; border-bottom: 1px solid#666666; padding-bottom: 20px;}
        .tit{}
        .page_d_main{width: 100%; text-align: center; margin-top: 50px;}
        .font{color: #666666; font-size: 12px; }
        button{margin-top: 30px; width: 275px; height: 58px;
        background-color: #0c97e7; border-color: #0085da; box-shadow: inset 0 0 2px #fff;
        background-image: linear-gradient(#41bef9,#0c97e7,#007ed0);}
</style>

</head>
<body>

<%@ include file = "nav.jsp" %>

			  <main class="content">
		        <section class="crumb">
		            <ul>
		                <li><a href="./index.jsp">홈</a></li>
		                <li><a href="./join.jsp">로그인</a></li>
		            </ul>
		        </section>
		        <section class="page_d">
		        <%

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs;
		
		
		String custid = (String)session.getAttribute("custid");
		try{
			conn = DBcon.getConnection();
			String sql = "delete from custom_tbl where custid=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, custid);
			rs = pstmt.executeQuery();
			
		
		%>
		            <div class="tit_d">
		                <h1 class="tit">회원탈퇴</h1>
		            </div>
		            <div class="page_d_main">
		                <p class="font">쿠팡 회원탈퇴가 완료되었습니다.</p>
		                <p class="font">이용해주셔서 감사합니다.</p>

		                <button type="button" id="submit_btn" name="submit_btn">홈으로 가기</button>
		            </div>
		        </section>
		    </main>
		    <script>
		    submit_btn.addEventListener("click", function(){
		    	
		    	location.href ="logout.jsp";
		    	
		    });
		    </script>
		    <% 
	}catch(Exception e){
		System.out.println("delete error:"+e);
	}finally{
		try{
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();


		}catch(Exception e){
			System.out.println("DBcon error:"+e);
		}
	}
		
		%>
<%@ include file = "footer.jsp" %>