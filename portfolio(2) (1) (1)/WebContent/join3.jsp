<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.*, java.text.* ,java.lang.*, java.net.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file ="header.jsp" %>

<%@ include file="header.jsp" %>
<style>
          .content{clear: both; width: 100%; height: auto; }
        .crumb{clear: both; width: 1280px;  margin: 0 auto; }
        .crumb li{float: left  ; margin-top: 20px; margin-bottom: 40px; }
        .crumb li a{color: #333; font-size: 14px; font-weight: bold;  }
        .crumb li:last-of-type::after{content: none;}
        .crumb li::after{content: ">"; padding-right: 20px; padding-left: 20px;}
        .login{clear: both; width: 1280px; margin: 0 auto;}
        .login_h1{text-align: center;}
        .login_top li{display: inline-block; width: 334px; height: 30px; border: 3px solid#ddd;
        border-radius: 30px; padding: 12px 24px; text-align: center; margin: 30px 17px; line-height: 30px;}
        .login_top li:nth-child(2){border: 3px solid#243c65;}
        
        .login_btn a{color: #676767;}
        .login_btn2 a{color: #243c65; font-weight: bold;}
     
        .join{clear: both; width: 1280px; margin: 0 auto;}
        .join_ul{display: flex; flex-flow: row nowrap; justify-content: space-between;}
        .join_ul li{width: 620px; height: 70px; border: 3px solid#ddd;
        margin-right: 20px; margin-top: 20px;}
        .tit{font-size: 18px; color: #00529c; }
        .tit2{font-size: 13px; color: #454545; font-weight: bold;}
        .join_co{color: #00529c;font-size: 18px; line-height: 70px; padding-left: 10px; font-weight: bold;}
        .join_normal{color: #A5A5A5; font-size: 12px; line-height: 70px;}
        .join_none{color: #A5A5A5; font-size: 18px; line-height: 70px; padding-left: 10px;}
        .join_img{padding-left: 250px; position: absolute; left: 410px; top: 410px;}
        .join_img2{padding-left: 230px; position: absolute; left: 850px; top: 410px;}
        .join_img3{padding-left: 230px; position: absolute; left: 1280px; top: 410px;}
        .login2_first{color: #545454; font-size: 14px; padding-top: 20px; margin-bottom: 40px;
        font-weight: bold;}
        .login2_second{color: #545454; font-size: 16px; margin-bottom: 15px; font-weight: bold;}
        .login2_third{padding-top: 50px; padding-bottom: 20px; font-size: 16px; font-weight: bold;
        color: #545454;}
        .login2_form{border: 1px solid#ddd;}
        .id_info_td{border-bottom: 1px solid#ddd; height: 53px; width: 10%;
        text-align: left; padding-left: 10px; background-color: #F7F7F7; }
        .id_info_td2{border-left: 1px solid#ddd; border-bottom: 1px solid#ddd; width: 100%;}
        .id_input{width: 200px;  margin-left: 10px; padding: 5px;}

        .login2_form2{border: 1px solid#ddd;}
        .id_info_td{border-bottom: 1px solid#ddd; height: 53px; width: 10%; }
        .id_info_td2{border-left: 1px solid#ddd; border-bottom: 1px solid#ddd; width: 1290px;}


        .first{color: #545454; font-size: 15px; font-weight: bold; padding-top: 40px; padding-bottom: 40px;}
        .join2_main{clear: both; width: 1280px; height: 300px; margin: 0 auto;
            border-bottom: 1px solid#ddd; border-top: 1px solid#ddd;}
        .join2{clear: both; width: 100%; height: auto;}
        .join2_main p{text-align: center;}
        .com{color: #00529c; font-size: 3rem; font-weight: 500; margin-bottom: 1rem; padding-top: 30px;}
        .com1 b{color: #454545; font-size: 16px; font-weight: bold;}
        .com2, .com1, .com4 {font-size: 16px; color: #454545; font-weight: 500;}
        .com3{font-size: 16px; color: #454545; padding-top: 30px; font-weight: 500;}
        .com5{font-size: 16px; color: #454545; padding-top: 30px; font-weight: 500;}
        .join3{clear: both; width: 150px; margin: 0 auto;}
        .join3 li{ text-align: center;border-radius: 30px; display: block; border: 1px solid#dcb;
        display: block; width: 144px; height: 44px; background-color: #00529c;
        line-height: 44px; margin-top: 30px; margin-bottom: 40px;}
        .join3 li a{color: #FFFFFF; font-size: 15px;}
</style>
</head>
<body>
	<%@ include file ="nav.jsp"%>
	    <main class="content">
        <div class="crumb">
            <ul>
                <li><a href="./index.jsp">홈</a></li>
                <li><a href="./join.jsp">로그인</a></li>
            </ul>
        </div>
        <section class="login">
            <h1 class="login_h1">로그인</h1>
            <ul class="login_top">
                <li class="login_btn"><a href="./login.jsp">로그인</a></li>
                <li class="login_btn2"><a href="./join.jsp">회원가입</a></li>
                <li class="login_btn"><a href="">ID/PW 찾기</a></li>
            </ul>
        </section>
        <section class="join">
            <span class="tit">MEMBER JOIN </span>
            <span class="tit2">글루온아이앤에스 회원가입을 환영합니다!</span>
            <ul class="join_ul">
                <li>
                    <span class="join_none">STEP 1. </span>
                    <span class="join_normal">약관동의
                        <a href="" class="join_img"><img src="./img/join_ic1.png" alt=""></a>
                    </span>
                </li>
                <li>
                    <span class="join_none">STEP 2. </span>
                    <span class="join_normal">정보입력
                        <a href="" class="join_img2"><img src="./img/join_ic2.png" alt=""></a>
                    </span>
                </li>
                <li>
                    <span class="join_co">STEP 3. </span>
                    <span class="join_normal">가입완료
                        <a href="" class="join_img3"><img src="./img/join_ic3_on.png" alt=""></a>
                    </span>
                </li>
            </ul>
            <li class="first">
                <p>· 회원정보는 개인정보취급방침에 따라 안전하게 보호되며, 회원님의 동의 없이 공개 또는 제3자에게 제공되지 않습니다.</p>
            </li>
        </section>
        <section class="join2">
            <div class="join2_main">
                <p class="com">WELCOME!</p>
                <p class="com1">
                    <b>김병석</b> 님의 회원가입을 진심으로 축하합니다.
                </p>
                <p class="com2">회원님의 비밀번호는 아무도 알 수 없는 암호화 코드로 저장되므로 안심하셔도 좋습니다.</p>
                <p class="com3">아이디, 비밀번호 분실시에는 회원가입시 입력하신 이메일 주소를 이용하여 찾을 수 있습니다.</p>
                <p class="com4">회원 탈퇴는 언제든지 가능하며, 일정기간이 지난 후, 회원님의 정보는 삭제하고 있습니다.</p>
                <p class="com5">감사합니다.</p>
            </div>
        </section>
        <section class="join3">
            <li><a href="./index.jsp">메인으로 이동</a></li>
        </section>
    </main>
	<%@ include file ="footer.jsp"%>