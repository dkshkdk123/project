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
            /* content */
        .content{clear: both; width: 100%;  height: auto; }
        .page{clear: both; width: 1280px; height: 700px;  margin: 0 auto;  }
        .tit_page{margin-top: 20px; border-bottom: 1px solid#dcb; margin-left: 30px; margin-right: 30px;}
        .tit{padding-top: 20px; margin-bottom: 20px; font-size: 30px;}
        .tit_main{margin-top: 10px; margin-left: 30px;}
        .tit_main ul li{font-size: 12px; color: #666666; line-height: 20px;}
        .tit_main ul li:first-child{color: #888888;}
        .tit_main textarea{margin-top: 20px; margin-bottom: 20px; width: 1180px; height: 275px;}
        .tit_bottom{margin-left: 30px; width: 1220px; height: 100px; background-color: #e9f4fa; }
        .bottom_color{color: #888888; padding-top: 10px; padding-left: 10px;}
        .tit_bottom label, input{margin-top: 20px; padding-left: 10px; font-size: 16px; font-weight:bold; height: 25px;}
        button{width: 70px; height: 28px; margin-left: 10px;}
</style>
</head>
<body>
	<%@ include file ="nav.jsp"%>
	
	<%
		request.setCharacterEncoding("utf-8");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs;
		
		String custid = (String)session.getAttribute("custid");
		String pw = (String)session.getAttribute("pw");
		String author, email;
		
		try{
			conn = DBcon.getConnection();
			String sql = "select * from custom_tbl where custid=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, custid);
			rs = pstmt.executeQuery();
		
			while(rs.next()){
				author = rs.getString("author");
				email = rs.getString("email");
			
		
	%>
	 <main class="content">
        <section class="page">
            <article class="tit_page">
                <h1 class="tit">회원탈퇴</h1>
            </article>
            <article class="tit_main">
                <ul>
                    <li>회원님 윈테크 서비스를 이용하시는데 불편함이 있으셨나요?</li>
                    <li>1) 윈테크에서 발송하는 메일 수신거부는 '마이페이지 > 내정보 > 메일수신거부'에서 확인하세요</li>
                    <li>2) 이용 불편 및 각종 문의 사항은 고객센터로 문의 주시면 성심 성의껏 답변 드리겠습니다.</li>
                    <li>- 자주 묻는 질문 / 1:1 온라인 문의 / 전화 문의: 1577-7011 (365일 오전 9시~오후6시)</li>
                </ul>

                <textarea name="" id="" cols="100" rows="12" style="padding: 20px; font-size: 14px; color: #666666;line-height: 25px;" >
1. 회원탈퇴 전, 유의사항을 확인해 주시기 바랍니다.
- 회원탈퇴 시 회원전용 웹 서비스 이용이 불가합니다.
- 거래정보가 있는 경우, 전자상거래 등에서의 소비자 보호에 관한 법률에 따라 계약 또는 청약철회에 관한 기록, 대금결제 및 재화 등의 공급에 관한 기록은 5년동안 보존됩니다.
- 유효기간이 경과되지 않은 미사용 쿠폰관련 정보는 유효기간 만료일까지 보관되며, 탈퇴 후에도 유효기간 내 사용하실 수 있습니다.
- 유효기간 내 사용하지 못한 미사용 쿠폰은 구매금액의 70%를 캐시로 적립해 드리나, 탈퇴시 적립 받을 수 없습니다.
- 보유하셨던 캐시는 탈퇴와 함께 삭제되며 환불되지 않습니다.
- 회원탈퇴 후 윈테크 서비스에 입력하신 상품문의 및 후기, 댓글은 삭제되지 않으며, 회원정보 삭제로 인해 작성자 본인을 확인할 수 없어 편집 및 삭제처리가 원천적으로 불가능 합니다.
- 상품문의 및 후기, 댓글 삭제를 원하시는 경우에는 먼저 해당 게시물을 삭제하신 후 탈퇴를 신청하시기 바랍니다.
- 이미 결제가 완료된 건은 탈퇴로 취소되지 않습니다.
                </textarea>
            </article>
            <article class="tit_bottom">
                <ul>
                    <li class="bottom_color">보안을 위해 회원님의 이름과 계정 이메일 및 비밀번호를 확인 합니다</li>
                </ul>
                <form action="memberDeletePro.jsp" id="register1" name="register1" method="get">
	                <label for="">이름 :</label>
	                <input type="text" name="author" id="author" class="author" value="<%=author %>">
	                <label for="">이메일 :</label>
	                <input type="text" name="email" id="email" class="" value="<%=email %>">
	                <label for="">비밀번호 :</label>
	                <input type="password" name="pw2" id="pw2" class="">
	                <button type="button" id="submit_btn">본인확인</button>
	                <input type="hidden" id="pwchk" name="pwchk" value="<%=pw %>" />
                </form>	
            </article>
            
            	
            <script>
            	var form = document.register1;
            	var submit_btn = document.getElementById("submit_btn");
            	var author = form.author;
            	var email = form.email;
            	var pwchk =form.pwchk;
            	var pw2 = form.pw2;
            	
            	submit_btn.addEventListener("click", function(){
            		if(pwchk.value == pw2.value){
            			alert("본인확인 인증 성공");
            			form.submit();
            		}else{
            			alert("실패");
            			return false;
            		}
            	});
            </script>
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
				System.out.println("DBcon error:"+e);
		}
		}
    %>
	<%@ include file ="footer.jsp"%>
