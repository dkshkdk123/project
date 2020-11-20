<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="portfolio.DBcon" %>
<%@ page import="java.util.*, java.text.* ,java.lang.*, java.net.*" %>

<%@ include file="admin_header.jsp" %>


   <style>
        .content{clear: both; width: 100%; height: 540px;  }
        .page{clear: both; width: 1280px;  margin: 0 auto; }
        .tit{text-align: center; margin-top: 20px; margin-bottom: 20px;}    
		.page_help{clear: both; width: 1280px;   margin: 0 auto;}
        .page_help tr td{width: 175px;}
        .page_help form{width: 1280px; margin: 0 auto; margin-left: 520px;}
        .button{clear: both; width: 1280px; margin: 0 auto;} 
        button{width: 253px; height: 50px; margin-top: 10px; font-size: 18px; font-weight: bold;}

    </style>
    <script>
    $(".btn-danger").click(function(){
    	  
    	  swal({
    	  title: 'Are you sure?',
    	  text: "It will permanently deleted !",
    	  type: 'warning',
    	  showCancelButton: true,
    	  confirmButtonColor: '#3085d6',
    	  cancelButtonColor: '#d33',
    	  confirmButtonText: 'Yes, delete it!'
    	}).then(function() {
    	  swal(
    	    'Deleted!',
    	    'Your file has been deleted.',
    	    'success'
    	  );
    	})
    	  
    	})
    </script>
</head>
<body>
	<%@ include file ="admin_nav.jsp"%>


		<main class="content">
		    <section class="page">
		        <h1 class="tit">회원 삭제</h1>
		        <div class="page_help">
		            <form action="admin_memberDeletePro.jsp" id="register1" name="register1" method="GET">
		                <table border="1" >
		                    <tbody>
		                        <tr>
		                            <th><label for="pw">비밀번호</label></th>
		                            <td><input type="password" id="pw" name="pw" value=""></td>
		                        </tr>             
		                    </tbody>
		                </table>  
		                <button type="button" class="btn-danger">
							<i class="glyphicon glyphicon-trash"></i> Delete
						</button>
		            </form>           
		        </div>
		    </section>
		</main>

	<%@ include file ="footer.jsp"%>