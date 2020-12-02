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
    .content{clear: both; width: 100%; height: 750px; }
    .page{clear: both; width: 1280px; margin: 0 auto; }
    .tit{font-size: 30px; margin-top: 20px; margin-bottom: 50px; text-align:center; }
    .page_help{clear: both;  width: 1280px; height: 220px; }
    .lst2{width: 300px; height: 200px; display: inline-flex; flex-flow: row nowrap; justify-content: space-around; }
    .item{width: 180px; height: 82px; }
    .item_img img{border: 1px solid #c7c7c7; height: 100px; width: 160px;} 
    .explan{color: #484747;font-size: 9px}
    .explan:hover{color: #e57373;}
    .price{line-height: 50px; font-size: 11px; font-weight: bold; color: red; cursor: pointer;}


    </style>
</head>
<body>
	<%@ include file="nav.jsp" %>
	
	 <main class="content">
        <section class="page">
            <h1 class="tit">Adobe</h1>
            <div class="page_help">
            
                     <% 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs;
		
		String pno, pid, pname, price, quanunit;
		
		try{
			conn = DBcon.getConnection();
			String sql = "select * from product3_tbl ";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				pno = rs.getString("pno");
				pid = rs.getString("pid");
				pname = rs.getString("pname");
				price = rs.getString("price");
				quanunit = rs.getString("quanunit");
			
	
	%>
                <ul class="lst2">
                    <li class="item">
                        <a href="./buy.jsp" class="item_img">
                            <img src="./img/<%=pno %>.jpg" alt="">
                        </a>
                        <a href="" class="explan">
                            <%=pname %>
                        </a>
                        <p class="price">
                            <%=price %>
                        </p>
                    </li>
                </ul>	
            
                     <%
					}	
					%>
              
               <%
		}catch(Exception e){
			System.out.println("product error:"+e);
		}finally{
			try{
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e){
				System.out.println("DBcon error:"+e);
			}
		}
        %>   
        	</div>
        </section>
    </main>
   
	<%@ include file ="footer.jsp"%>
