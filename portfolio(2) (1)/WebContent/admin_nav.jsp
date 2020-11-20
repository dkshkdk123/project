<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



 <header class="hd">
        <div class="header_top">
            <div class="header_top_main">
                <div class="header_left">
                    <a href="./index.html">
                        <img src="./img/3ce9faa7a52b62519088fc5b6c618f71.png" alt="">
                    </a>
                </div>
                <div class="header_right">
                    <ul>
                        <li><a href="./logout.jsp">로그아웃</a></li>
                        <li><a href="./join.jsp">Sing up</a></li>
                        <li><a href="">Location</a></li>

                    </ul>
                </div>
            </div>
        </div>
        <div class="header_bottom">
            <nav class="gnb">
                <ul>
                    <li class="gnb_li">
                        <a href="" class="gnb_a">회원관리</a>
                        <ul class="lst">
                            <li><a href="./admin_memberList.jsp">회원목록/정보수정</a></li>
                            <li><a href="./admin_memberIns.jsp">회원등록</a></li>
                            <li><a href="./admin_memberDelete.jsp">회원삭제</a></li>
                        </ul>
                    </li>
                            
                    <li class="gnb_li">
                        <a href="" class="gnb_a">제품관리</a>
                        <ul class="lst">
                            <li><a href="">제품목록 보기</a></li>
                            <li><a href="">제품 등록</a></li>
                            <li><a href="">제품 삭제</a></li>
                            <li><a href="">제품 정보 수정</a></li>
                            <li><a href="">판매 목록</a></li>
                        </ul>
                    </li>
                    
                    <li class="gnb_li">
                        <a href="" class="gnb_a">서비스 관리</a>
                        
                        <ul class="lst">
                            <li><a href="">온라인 상담</a></li>
                            <li><a href="">원격 상담</a></li>
                            <li><a href="">전화 상담</a></li>
                            <li><a href="">문자 상담</a></li>
                        </ul>
                    </li>
                    <li class="gnb_li">
                        <a href="" class="gnb_a">게시판 관리</a>
                        <ul class="lst">
                            <li><a href="">공지사항 목록</a></li>
                            <li><a href="">자주하는 질문 목록</a></li>
                            <li><a href="">제품 후기 목록</a></li>
                        </ul>
                    </li>
                    <li class="gnb_li">
                        <a href="" class="gnb_a">기타 기능</a>
                        <ul class="lst">
                            <li><a href="">DB 목록</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </header>