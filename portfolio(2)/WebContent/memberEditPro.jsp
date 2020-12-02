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
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

</head>
<%
	String input_pwd = request.getParameter("pw2");
	String db_pw = (String) session.getAttribute("pw");
	
	if(input_pwd != db_pw ) {
		
%>
	<script>
	$(document).ready(function(){
	alret("로그인 실패");
	window.history.back();
	});
	</script>
	<%
	}else{
		
	%>
	
	<script>
	$(document).ready(function(){
		
		alert("로그인 성공");
		location.href="membermodify.jsp";
	});
	</script>	
	<% } %>
<body>
	<%@ include file ="header.jsp"%>
	<%@ include file ="footer.jsp"%>
</body>
</html>