<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.*, java.text.* ,java.lang.*, java.net.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="admin_header.jsp" %>
<link rel="stylesheet" href="./css/admin_header.css">

   <style>
        .content{clear: both; width: 100%; height: 540px; }
        .page{clear: both; width: 1280px; margin: 0 auto;}
        .tit{text-align: center; margin-top: 20px; margin-bottom: 20px;}    
        .page_help{ text-align: center;}
        .page_help table{margin-left: 300px; margin-top: 20px;}
        .page_help th{width: 150px; text-align: center; height: 50px;}  
        .page_help td{width: 500px; }
        .page_help input{width: 480px; height: 25px; margin-left: 10px;}
        
        .button{clear: both; width: 1280px; margin: 0 auto;} 
        button{width: 253px; height: 50px; margin-top: 20px; font-size: 18px; font-weight: bold;}
        

    </style>
</head>
<body>
	<%@ include file ="admin_nav.jsp"%>
	<main class="content">
    <section class="page">
        <h1 class="tit">회원 등록</h1>
        <div class="page_help">
            <form action="admin_memberInsPro" id="register1" name="register1" method="GET">
                <table border="1" >
                    <tbody>
                        <tr>
                            <th><label for="">아이디</label></th>
                            <td><input type="text" id="" name=""></td>
                        </tr>
                        <tr>
                            <th><label for="">비밀번호</label></th>
                            <td><input type="text" id="" name=""></td>
                        </tr>
                        <tr>
                            <th><label for="">성명</label></th>
                            <td><input type="text" id="" name=""></td>
                        </tr>
                        <tr>
                            <th><label for="">관심상품</label></th>
                            <td><input type="text" id="" name=""></td>
                        </tr>
                        <tr>
                            <th><label for="">전화번호</label></th>
                            <td><input type="text" id="" name=""></td>
                        </tr>
                        <tr>
                            <th><label for="">이메일</label></th>
                            <td><input type="text" id="" name=""></td>
                        </tr>
                        <tr>
                            <th><label for="">거주지역</label></th>
                            <td><input type="text" id="" name=""></td>
                        </tr>
                    </tbody>
                    
                </table>
                <div class="button">
                    <button type="button" id="result_btn">등록</button>
                    <button type="button" id="back_btn">취소</button>
                </div>
                
            </form>
            <script>
            var form = document.register1;
            var result_btn = document.getElementById("result_btn");
            var back_btn =document.getElementById("back_btn");
            var custid = form.custid;
            var pw = form.custid;
            var author = form.author;
            var goods = form.goods;
            var phone = form.phone;
            var email = form.email;
            var area = fomr.area;
            
            result_btn.addEventListener("click", function(){
            	if(custid.value==""){
            		alert("아이디가 비어있습니다.");
            		custid.focus();
            		return;
            	}
            	if(pw.value==""){
            		alert("비밀번호가 비어있습니다.");
            		pw.focus();
            		return;
            	}
            	if(author.value==""){
            		alert("이름이 비어있습니다.");
            		author.focus();
            		return;
            	}
            	if(goods.value==""){
            		alert("관싱상품이 비어있습니다.");
            		goods.focus();
            		return;
            	}
            	if(phone.value==""){
            		alert("전화번호가 비어있습니다.");
            		phone.focus();
            		return;
            	}
            	if(email.value==""){
            		alert("이메일이 비어있습니다.");
            		email.focus();
            		return;
            	}
            	if(area.value==""){
            		alert("거주지역이 비어있습니다.");
            		area.focus();
            		return;
            	}
            	if(custid.value!="" && pw.value!="" && author.value!="" && goods.value!="" && phone.value!="" email.value!="" && area.value!=""){
            		form.submit();
            	}
            });
            back_btn.addEventListener("click", function(){
            	location.href="admin.jsp";
            });
            </script>
        </div>
    </section>
</main>
	<%@ include file ="footer.jsp"%>

