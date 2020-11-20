
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.*, java.text.* ,java.lang.*, java.net.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="header.jsp" %>
<style>
.content{clear: both; width: 100%; height: auto; }
        .vs{clear: both; width: 100%; overflow-x: hidden; }
        .ban{width: 400%;}
        .ban li{float: left; width: 25%; }
        .page1, .page2, .page3, .page4{clear: both; width: 100%;}
        .page1_tit{clear: both; width: 1280px; margin: 0 auto;}
        .page1_tit li p{text-align: center; }
        .page1_p{font-size: 16px; font-weight: Nanum Square", "Nanum Gothic; 
        font-weight: 'Lora', 'Nanum Gothic'; padding-top: 100px; color: #888888;}
        .page1_p2{font-weight: Nanum Square", "Nanum Gothic; 
        color: rgb(36, 60, 101); line-height: 60px; font-size: 24px;}
        .page1_p3{font-size: 16px; color: #888888; line-height: 25px;}
       
        
        .page2_img, .page3_img, .page4_img{clear: both; width: 1140px; margin: 0 auto; }

        .page1_img{clear: both; width: 1500px; margin: 0 auto; padding-top: 80px;}
        .page2_img img{padding-top: 40px;}
        .page3_img img{padding-top: 60px;}
        .page4_img img{padding-top: 60px; padding-bottom: 60px;}
</style>
</head>
<body>
	
<%@ include file="nav.jsp" %>

<main class="content">
        <figure class="vs">
            <ul class="ban">
                <li><a href=""><img src="./img/42c6532e92b82cfdabca82a758b46b1c.jpg" alt=""></a></li>
                <li><a href=""><img src="./img/8456c520c6e94976b4582b1b349f39d1.jpg" alt=""></a></li>
                <li><a href=""><img src="./img/e74873334baf7880f2fb70370101ab2e.jpg" alt=""></a></li>
                <li><a href=""><img src="./img/unnamed.jpg" alt=""></a></li>
            </ul>
        </figure>
        <section class="page1" id="page1">
            <div class="page1_tit">
                <ul>
                    <li>
                        <p class="page1_p">PROVIDE THE BEST SOLUTION</p>
                        <p class="page1_p2">고객의 업무효율성 향상을 위해 최선을 다하겠습니다.</p>
                        <p class="page1_p3">소규모 벤처기업을 위한 솔류션 부터 대규모 조직을 위한 SW 컨설팅과 플랜까지, 윈테크솔류션에서 최적의 솔류션을 제시 합니다.</p>
                        <p class="page1_p3">윈테크솔류션의 SW컨설팅 및 즉각적인 업무지원을 경험해 보십시오.</p>
                    </li>
                </ul>
            </div>
            <div class="page1_img">
                <img src="./img/f94de53d0e767f69c4bf656be7b68bb7.png" alt="">
            </div>
        </section>
        <section class="page2" id="page2">
            <div class="page2_img">
                <img src="./img/c101de59bac54abff256d68a9d2733bd.png" alt="">
                <img src="./img/a6a7b5e34badb929ef4ff8ca6a903b49.png" alt="">
                
                
                
            </div>
            
        </section>
        <section class="page3" id="page3">
            <div class="page3_img">
                <img src="./img/5019145eff7c2be7b6540ac2dad1688b (1).png" alt="">
                <img src="./img/a8e27718c632ca25012fea51d827247f.jpg" alt="">
                <img src="./img/2ebc224a4a3bc4e4f8863b2a7dd8e03f.png" alt="">
                
            </div>
           
        </section>
        <section class="page4" id="page4">
            <div class="page4_img">
                <img src="./img/74e864e94236f86477ad282a3d297474.png" alt="">
            </div>
            
        </section>
    </main>
<%@ include file="footer.jsp"%>