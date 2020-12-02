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
.content{clear: both;  width: 100%; height: 630px;}
.crumb{clear: both; width: 1280px;  margin: 0 auto; }
        .crumb li{float: left  ; margin-top: 20px; margin-bottom: 40px; }
        .crumb li a{color: #333; font-size: 14px; font-weight: bold;  }
        .crumb li:last-of-type::after{content: none;}
        .crumb li::after{content: ">"; padding-right: 20px; padding-left: 20px;}
        .page{clear: both; width: 1280px; height: 630px; margin: 0 auto;}
        .main_form{width: 1000px; 
             height: 600px; margin-top: 20px; padding-bottom: 20px; margin-bottom: 40px; padding-top: 20px; }
        .tit{color: #333333; font-size: 30px;}
        .email b{color: #0185da; font-size: 16px; line-height: 20px;}
        .email span{color: #666666; font-size: 16px;}

        .box{clear: both; width: 1000px; margin-left: 140px;}
        .main_table{width: 900px;  margin-top: 10px;}
        .main_table input{width: 200px; height: 30px; margin-left: 20px;}
        tr,td{display: table-row;}
        th{width: 200px; height: 50px; background-color:#eef1f8;}
        td{width: 700px; height: 50px; margin-left: 20px;  line-height: 50px;} 

        .button_btn{clear: both; width: 1000px; margin: 0 auto; text-align: center;}
        button{text-align: center; width: 200px; height: 50px;
              border-radius: 30px; color: #666666; font-size: 20px;
            margin-top: 20px; margin-right: 20px; }
        button:hover{color: #ffffff; background-color:#243c65;}
</style>
</head>
<body>
	<%@ include file ="nav.jsp"%>
	
 <main class="content">
		 <section class="crumb">
			<ul>
				<li><a href="./index.jsp">홈</a></li>
				<li><a href="./join.jsp">로그인</a></li>
			</ul>
		</section> 
        <section class="page">
		
            <%
            request.setCharacterEncoding("utf-8");
            
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs;
            
            String custid =	(String)session.getAttribute("custid");
			String pw = (String)session.getAttribute("pw");
            System.out.println(custid);
            System.out.println(pw);
           
            try{
            	conn = DBcon.getConnection();
            	String sql = "select * from custom_tbl where custid=? ";
            	pstmt = conn.prepareStatement(sql);
            	pstmt.setString(1, custid);
            	
            	rs = pstmt.executeQuery();
				
            	while(rs.next()){
            		custid = rs.getString("custid");
            	}
            	%>
                <div class="box">
                    <p class="tit">
                        회원정보확인
                    </p>
                    <p class="email">
                        <b></b>
                        <span><%=custid %>님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인 합니다.</span>
                    </p>
                    <form action="membermodify.jsp" id="register1" name="register1" method="get">
	                    <table border="1" class="main_table" cellpadding="0"; cellspacing="0";>
	                        <tr>
	                            <th><label for="">아이디</label></th>
	                            <td><input type="text" value="<%=custid %>" name="custid" readonly/></td>
	                        </tr>
	                        <tr>
	                            <th><label for="">비밀번호</label></th>
	                            <td><input type="password" id="pw2" name ="pw2"></td>
	                        	<input type="hidden" value="<%=pw %>" name="pwChk" id="pwChk"/>
	                        </tr>      
	                    </table>
	                    <div class="button_btn">
	                        <button type="button" id="submit_btn">확인</button>
	                        <button type="button" id="cancel_btn">취소</button>
	                    </div>
	                    
                    </form>
                    
                   
                </div>
			
				 <script>
					
				var form = document.register1;
				var submit_btn = document.getElementById("submit_btn");
				var pwChk = form.pwChk;
				var pw2 = form.pw2;
				
					submit_btn.addEventListener("click", function(){
						if(pwChk.value == pw2.value ) {
							alert("성공");
							form.submit();
						} else {
							alert("실패");
							return false;
						}
						
					});
				</script>
			

                <%
            }catch(Exception e){
            	System.out.println("modify error:"+e);
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
            
         
        </section>
    </main>
	
	<%@ include file ="footer.jsp"%>

