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
        .login2_form{border: 1px solid#ddd; margin-bottom: 30px;}
        .id_info_td{border-bottom: 1px solid#ddd; height: 53px; width: 10%;
        text-align: left; padding-left: 10px; background-color: #F7F7F7; }
        .id_info_td2{border-left: 1px solid#ddd; border-bottom: 1px solid#ddd; width: 100%;}
        .id_input{width: 200px;  margin-left: 10px; padding: 5px;}

        .id_info_td{border-bottom: 1px solid#ddd; height: 53px; width: 10%; }
        .id_info_td2{border-left: 1px solid#ddd; border-bottom: 1px solid#ddd; width: 1290px;}


        .form_btn{clear: both; width: 450px; margin: 0 auto;}
        .form_btn button{text-align: center; display: inline-block; 
        margin-right: 20px;  width: 200px;height: 50px;
        border-radius: 30px;  line-height: 50px;
        margin-bottom: 40px; color: #fff; }
        .join_btn{color: #00529c; font-size: 12px; background-color: #00529c;}
        .cancel_btn{color: #9E9E9E; font-size: 12px; background-color: #5E5E5E;}
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
                <li class="login_btn"><a href="./login.html">로그인</a></li>
                <li class="login_btn2"><a href="./join2.html">회원가입</a></li>
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
                    <span class="join_co">STEP 2. </span>
                    <span class="join_normal">정보입력
                        <a href="" class="join_img2"><img src="./img/join_ic2_on.png" alt=""></a>
                    </span>
                </li>
                <li>
                    <span class="join_none">STEP 3. </span>
                    <span class="join_normal">가입완료
                        <a href="" class="join_img3"><img src="./img/join_ic3.png" alt=""></a>
                    </span>
                </li>
            </ul>
            <li class="login2_first">
                <p>· 입력하신 정보는 가입완료 전까지 홈페이지에 저장되지 않습니다.

                </p>
            </li>
            <li class="login2_second">
                <p>아이디 정보.</p>
            </li>
            <form action="joinPro.jsp" id="register1" name="register1" class="login2_form" method="get">
                <table class="login2_table" cellpadding="0" cellspacing="0">
                    <tr class="id_info">
                        <th class="id_info_td"><label for="custid">아이디</label></th>
                        <td class="id_info_td2"><input type="text" id="custid" name="custid" class="id_input" value="" /></td>
                    </tr>
                    <tr class="id_info">
                        <th class="id_info_td"><label for="pw">비밀번호</label></th>
                        <td class="id_info_td2"><input type="password" id="pw" name="pw" class="id_input" value=""/></td>
                    </tr>
                    <tr class="id_info">
                        <th class="id_info_td"><label for="author">이름</label></th>
                        <td class="id_info_td2"><input type="text" id="author" name="author" class="id_input" value=""/></td>
                    </tr>
                    <tr class="id_info">
                        <th class="id_info_td"><label for="goods">관싱상품</label></th>
                        <td class="id_info_td2"><input type="text" id="goods" name="goods" class="id_input" value=""/></td>
                    </tr>
                    <tr class="id_info">
                        <th class="id_info_td"><label for="phone">휴대폰</label></th>
                        <td class="id_info_td2"><input type="text" id="phone" name="phone" class="id_input" value=""/></td>
                    </tr>
                    <tr class="id_info">
                        <th class="id_info_td"><label for="email">이메일</label></th>
                        <td class="id_info_td2"><input type="text" id="email" name="email" class="id_input" value=""/></td>
                    </tr>
                    <tr class="id_info">
                        <th class="id_info_td"><label for="area">주소</label></th>
                        <td class="id_info_td2"><input type="text" id="area" name="area" class="id_input" value=""/></td>
                    </tr>
                </table>
            </form>
            <div class="form_btn">
                <button type="button" id="join_btn">회원가입</button>
                <button type="button" id="cancel_btn">취소</button>
            </div>
            <script>
            	var form = document.register1;
            	var join_btn = document.getElementById("join_btn");
            	var cancel_btn = document.getElementById("cancel_btn");
            	var custid = form.custid;
            	var pw = form.pw;
            	var author = form.author;
            	var goods = form.goods;
            	var phone = form.phone;
            	var email = form.email;
            	var area = form.area;
            	
            	join_btn.addEventListener("click", function(){
            		if(custid.value==""){
            			alert("아이디가 입력되지 않았습니다.");
            			custid.focus();
            			return;
            		}
            		if(pw.value==""){
            			alert("비밀번호가 입력되지 않았습니다.");
            			pw.focus();
            			return;
            		}
            		if(author.value==""){
            			alert("이름이 입력되지 않았습니다.");
            			author.focus();
            			return;
            		}
            		if(goods.value==""){
            			alert("상품이 입력되지 않았습니다.");
            			goods.focus();
            			return;
            		}
            		if(phone.value==""){
            			alert("전화번호가 입력되지 않았습니다.");
            			phone.focus();
            			return;
            		}
            		if(email.value==""){
            			alert("이메일이 입력되지 않았습니다.");
            			email.focus();
            			return;
            		}
            		if(area.value==""){
            			alert("거주지역이 입력되지 않았습니다.");
            			area.focus();
            			return;
            		}
					if(custid.value!="" && pw.value!="" && author.value!="" && goods.value!="" && phone.value!="" && email.value!="" && area.value!=""){
						form.submit();
					}
            	});
            	cancel_btn.addEventListener("click", function(){
            		location.href="index.jsp";
            	});
            </script>    
        </section>
    </main>
	<%@ include file ="footer.jsp"%>
