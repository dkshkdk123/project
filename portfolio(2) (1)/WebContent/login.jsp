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
        .content{clear: both; width: 100%; height: 660px; }
        .crumb{clear: both; width: 1280px;  margin: 0 auto; }
        .crumb li{float: right  ; }
        .crumb li a{color: #333; font-size: 14px; font-weight: bold;  }
        .crumb li:last-of-type::before{content: none;}
        .crumb li::before{content: ">"; padding-right: 20px; padding-left: 20px;}
        .login{clear: both; width: 1280px; margin: 0 auto;}
        .login_h1{text-align: center;}
        .login_top li{display: inline-block; width: 334px; height: 30px; border: 3px solid#ddd;
        border-radius: 30px; padding: 12px 24px; text-align: center; margin: 30px 17px; line-height: 30px;}
        .login_top li:nth-child(1){border: 3px solid#243c65;}
        
        .login_btn a{color: #676767;}
        .login_btn2 a{color: #243c65; font-weight: bold;}


        .login_f{clear: both; width: 1280px; height: 420px; border: 3px solid #333;}
        .form_h1{text-align: center; margin-top: 20px;}
        .form_main{clear: both; width: 630px; height: 140px; margin: 0 auto; border: 0;}
        .login_input{display: block; width: 630px; height: 40px;
         margin-bottom: 10px; margin-top: 20px; font-size: 16px; 
         padding-left: 20px;}
        #login_btn{width: 655px; height: 40px; background-color: #00529c; font-size: 16px;
        font-weight: bold; margin-top: 15px; cursor: pointer;}
        .join_chk{font-size: 14px; font-weight: bold; margin-right: 10px; margin-top: 10px;}
        .form_ul{clear: both; width: 655px;   margin: 0 auto; }
        .f_p{line-height: 50px; font-size: 16px; color: #121212; font-weight: bold;}
        .f_span{font-size: 10px; font-weight: bold; color: #5F5F5F;}
        .form_bt li{float: left; margin-right: 10px; line-height: 50px;}
        .form_bt li a{color:#848484;}
        .form_bt li a:hover{color: #333;}
        .form_bt li::after{content: "|"; padding-left: 10px;}
        .form_bt li:last-of-type::after{content: none;}
</style>
</head>
<body>
	<%@ include file ="nav.jsp"%>
	
	  <main class="content">
        <div class="crumb">
            <ul>
                <li><a href="./index.html">홈</a></li>
                <li><a href="./join.html">로그인</a></li>
            </ul>
        </div>
        <section class="login">
            <h1 class="login_h1">로그인</h1>
            <ul class="login_top">
                <li class="login_btn2"><a href="./login.jsp">로그인</a></li>
                <li class="login_btn"><a href="./join.jsp">회원가입</a></li>
                <li class="login_btn"><a href="">ID/PW 찾기</a></li>
            </ul>
            
            <form action="loginpro.jsp" id="register1" name="register1" class="login_f" method="get">
                <h1 class="form_h1">회원 로그인</h1>
                <fieldset class="form_main">
                    <input type="text" name="custid" id="custid" class="login_input" value=""></input>
                    <input type="password" name="pw" id="pw" class="login_input" value=""></input>
                    <button type="button" class="join_btn2" id="login_btn">로그인</button>
                    <input type="checkbox" name="" id="" class="join_chk">자동 로그인</input>
                    <ul class="form_ul">
                        <li>
                            <p class="f_p">회원 로그인 안내</p>
                            <span class="f_span">회원아이디 및 비밀번호가 기억 안나실 때는 아이디/비밀번호 찾기를 이용하십시오.
                            </span>
                            <p class="f_span">아직 회원이 아니시라면 회원으로 가입 후 이용해 주십시오.
                            </p>
                        </li>
                    </ul>
                    <ul class="form_bt">
                        <li><a href="">IP/PW찾기</a></li>
                        <li><a href="">회원가입</a></li>
                    </ul>        
                </fieldset>
            </form>
            
            <script>
            var form = document.register1;
            var login_btn = document.getElementById("login_btn");
            var custid = form.custid;
            var pw = form.pw;
            
            login_btn.addEventListener("click", function(){
            	if(custid.value==""){
            		alert("아이디를 입력하세요");
            		custid.focus();
            		return;
            	}
            	if(pw.value==""){
            		alert("비밀번호를 입력하세요");
            		pw.focus();
            		return;
            	}
            	if(custid.value!="" && pw.value!="" ){
            		form.submit();
            	}
            });
            
            </script>
        </section>
    </main>
	<%@ include file ="footer.jsp"%>
