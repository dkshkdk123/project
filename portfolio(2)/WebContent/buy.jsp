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
    .content{clear: both; width: 100%; height: 970px; }
    .page{clear: both; width: 1280px; margin: 0 auto; text-align:center }
    .tit{ font-size: 32px;padding-top: 20px; padding-bottom: 40px;}
    .page_help{clear: both; text-align: left; width: 1280px; }
    .tb{width: 1280px; height: 283px; text-align: center;}
    .sum{width: 1280px; height: 50px;  text-align: right;  background-color: #f6f6f6;
    line-height: 50px; font-size: 12px; color: #454545; margin-bottom: 20px;}
    .custom{clear: both; width: 1280px;  box-shadow: 5px 5px 5px 5px gray; margin-top: 50px; margin-bottom: 50px; }
    .custom h1, .custom_area h1{margin-bottom: 10px;}
    .custom table, .custom_area table{ font-size: 12px; color: #555555; padding-bottom: 10px;}
    .custom input, .custom_area input {margin-left: 20px;}
    .custom_area{clear: both; width: 1280px; box-shadow: 5px 5px 5px 5px gray;}

    .btn{clear: both; width: 1280px; margin: 0 auto; text-align: center;}
    .btn button{width: 300px; height: 100px; box-shadow: 5px 5px 5px 5px gray; margin-top: 40px;
    border-radius: 30px; border: 1px solid#dcb; margin-right: 20px; font-size: 18px;
 font-weight: bold; }
    .btn button:hover{background-color: #243c65; color: #ffffff;}
    
  
    </style>
</head>
<body>
	<%@ include file ="nav.jsp"%>
	  <main class="content">
        <section class="page">
            <h1 class="tit">Mircrosoft</h1>
            <div class="page_help">
                <form action="">
                    <table border="1" class="tb">
                        <tr>
                            <th>상품명</th>
                            <th>판매가</th>
                            <th>수량</th>
                            <th>합계</th>
                        </tr>
                        <tr>
                            <td><img src="" alt="">	Finale 26 교육기관용(다운로드)-64bit
                            </td>
                            <td>360,000원</td>
                            <td>2</td>
                            <td>720,000원</td>
                        </tr>
                        <tr>
                            <td><img src="" alt="">	Finale 26 교육기관용(다운로드)-64bit
                            </td>
                            <td>39,600원</td>
                            <td>2</td>
                            <td>594,000원</td>
                        </tr>
                        
                    </table>
                    <div class="sum">
                        <p class="sum_text">총 구매액 : 1,314,000원 + 배송료 : 0원 = 결제예정금액 : 1,314,000원</p>
                    </div>
                    <section class="custom">
                        <h1>01.주문자 정보</h1>
                        <table class="tb2">
                            <tr>
                                <td>이름</td>
                                <td><input type="text"></td>
                            </tr>
                            <tr>
                                <td>전화번호</td>
                                <td><input type="text"></td>
                            </tr>
                            <tr>
                                <td>핸드폰번호</td>
                                <td><input type="text"></td>
                            </tr>
                            <tr>
                                <td>이메일</td>
                                <td><input type="text"></td>
                            </tr>
                        </table>
                    </section>
                    <section class="custom_area">
                        <h1>02.배송지 정보</h1>
                        <table >
                            <tr>
                                <td>이름</td>
                                <td class="td"><input type="text"></td>
                            </tr>
                            <tr>
                                <td>전화번호</td>
                                <td class="td"><input type="text"></td>
                            </tr>
                            <tr>
                                <td>핸드폰번호</td>
                                <td class="td"><input type="text"></td>
                            </tr>
                            <tr>
                                <td>주소</td>
                                <td class="td"><input type="text"></td>
                            </tr>

                        </table>
                    </section>
                    <div class="btn">
                        <button id="result_btn" type="button">결제하기</button>
                        <button id="cancel_btn" type="button">취소하기</button>
                    </div>
                </form>

            </div>
        </section>
        
    </main>
	
	<%@ include file ="footer.jsp"%>
