<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "portfolio.DBcon" %>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

    <script src="https:code.jquery.com/jquery-latest.js"></script>
    <script>
        function ani(){
            $(".ban").not(":animated").animate({"margin-left":"-1280px"},500, function(){
                $(".ban li").eq(0).appendTo(".ban");
                $(".ban").css("margin-left","0");
            });
        }
        var intv = setInterval(function(){ani();},4000);
    </script>

 <header class="hd">
        <div class="header_top">
            <div class="header_top_main">
                <div class="header_left">
                    <a href="./index.jsp">
                        <img src="./img/3ce9faa7a52b62519088fc5b6c618f71.png" alt="">
                    </a>
                </div>
                <div class="header_right">
                    <ul>
                        <li><% 
                        if(session.getAttribute("custid")==null){
                       	 	%>
                        
                        <a href="./login.jsp">Log in</a></li>
                        <li><a href="./join.jsp">Sing up</a></li>
                        <li><a href="">Location</a></li>
                        <%
                        }else{ String custid = (String)session.getAttribute("custid");
                        	
                        %>
                        
                        <li><a href="./logout.jsp">로그아웃</a></li>
                        <li><a href="./mypage.jsp">마이페이지</a></li>
                        <li><a href="">Location</a></li>
                        <%
                        }
                        %>
                        
                    </ul>
                </div>
            </div>
        </div>
        <div class="header_bottom">
            <nav class="gnb">
                <ul>
                    <li class="gnb_li">
                        <a href="" class="gnb_a">Company</a>
                        <ul class="lst">
                            <li><a href="">인사말</a></li>
                            <li><a href="">회사연혁</a></li>
                            <li><a href="">경영이념</a></li>
                            <li><a href="">조직도</a></li>
                        </ul>
                    </li>
                            <%
                            
                            %>
                    <li class="gnb_li">
                        <a href="" class="gnb_a">Product</a>
                        <ul class="lst">
                            <li><a href="./product.jsp?pno=">Microsoft</a></li>
                            <li><a href="./product2.jsp">한글과컴퓨터</a></li>
                            <li><a href="./product3.jsp">Adobe</a></li>
                            <li><a href="./product4.jsp">Autodesk</a></li>
                            <li><a href="./product5.jsp">이니트소프트</a></li>
                            <li><a href="./product6.jsp">AhnLab</a></li>
                            <li><a href="./product7.jsp">기타</a></li>
                        </ul>
                    </li>
                    
                    <li class="gnb_li">
                        <a href="" class="gnb_a">SUPPORT</a>
                        
                        <ul class="lst">
                            <li><a href="">FAQ</a></li>
                            <li><a href="">자료실</a></li>
                            <li><a href="">공지사항</a></li>
                        </ul>
                    </li>
                    <li class="gnb_li">
                        <a href="" class="gnb_a">CONTACT US</a>
                        <ul class="lst">
                            <li><a href="">고객문의</a></li>
                            <li><a href="">오시는 길</a></li>
                        </ul>
                    </li>
                        
                </ul>
            </nav>
        </div>
    </header>