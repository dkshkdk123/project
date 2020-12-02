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
.content{clear: both;  width: 100%; height: 700px;}
.crumb{clear: both; width: 1280px;  margin: 0 auto; }
        .crumb li{float: left  ; margin-top: 20px; margin-bottom: 40px; }
        .crumb li a{color: #333; font-size: 14px; font-weight: bold;  }
        .crumb li:last-of-type::after{content: none;}
        .crumb li::after{content: ">"; padding-right: 20px; padding-left: 20px;}
        .container{clear: both; width: 1280px; margin: 0 auto;}
        .tit{text-align: center; margin-top: 30px; margin-bottom: 30px; font-size:30px;}
    .table-fixed{
  width: 73%;
  margin-left: 150px;
  height: 400px;
  background-color: #f3f3f3;
    }
  tbody{
    height:50px;
    width: 100%;
    }
  tr, td{
    display: table-row; 


  }
  tbody tr td{
    border: 1px solid#dcb;
      font-size: 18px;
      font-weight: bold;
      width: 720px;
      text-align:left;
      line-height:60px;
      padding-left:10px ;
      display: block;
    }

  tbody tr th{
    border: 1px solid#dcb;
    font-size: 18px;
    width: 200px;

       background-color: #f39c12;
       border-color:#e67e22;
      }
      
      .button{clear: both; width: 1280px; margin-left: 120px;}
      button{width: 300px; height: 50px; text-align: center; margin-left: 20px; margin-top: 20px; border-radius: 30px;}
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
        <div class="container">
            <h3 class="tit">마이 페이지</h3>
            <table class="table table-fixed" cellpadding= "0"; cellspacing="0";>
              <tbody>

				<%
					
					Connection conn = null;
					PreparedStatement pstmt = null;
					ResultSet rs;

					String custid =	session.getAttribute("custid").toString();
					String pw, author, goods, phone, email, area;
					try{
						conn = DBcon.getConnection();
						String sql = "select * from custom_tbl where custid=? ";
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, custid);
						rs = pstmt.executeQuery();
						
						while(rs.next()){
							custid =rs.getString("custid");
							pw =rs.getString("pw");
							author =rs.getString("author");
							goods =rs.getString("goods");
							phone =rs.getString("phone");
							email =rs.getString("email");
							area =rs.getString("area");
					%>
                <tr>
                	<th class="col-xs-3"><label for="">아이디</label></th>    
                	<td class="col-xs-6"><%=custid %></td>
                </tr>
                <tr>
					<th class="col-xs-3">비밀번호</th> 
                	<td class="col-xs-6"><%=pw %></td>
                </tr>
                <tr>
   					<th class="col-xs-3">이름</th>
                	<td class="col-xs-6"><%=author %></td>
                </tr>
                <tr>
					<th class="col-xs-3">관심상품</th>
                	<td class="col-xs-6"><%=goods %></td>
                </tr>
                <tr>
  					<th class="col-xs-3">전화번호</th>
                	<td class="col-xs-6"><%=phone %></td>
                </tr>
                <tr>
 					<th class="col-xs-3">이메일</th>
                	<td class="col-xs-6"><%=email %></td>
                </tr>
                <tr>
					<th class="col-xs-3">거주지역</th>
                	<td class="col-xs-6"><%=area %></td>
                </tr>
                
				<%
						}
				%>
					<%

		}catch(Exception e){
			System.out.println("login error:"+e);
		}finally{
			try{
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		}catch(Exception e){
			System.out.println("DB erro:"+e);
		}
	}
	%>
              </tbody>
            </table>
            <div class="button">
                <button type="button" id="back_btn">뒤로</button>
                <button type="button" id="modify_btn">회원정보 변경</button>
                <button type="button" id="delete_btn">회원탈퇴</button>
            </div>
         
          </div>
          <script>
          modify_btn.addEventListener("click",function(){
        	 location.href="memberEdit.jsp"; 
          });
          delete_btn.addEventListener("click",function(){
         	 location.href="memberDelete.jsp"; 
           });
          </script>
    </main>
	<%@ include file ="footer.jsp"%>
