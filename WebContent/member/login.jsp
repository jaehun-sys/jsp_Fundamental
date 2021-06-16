<!-- template.html -->
<%@page import="kr.or.kpc.dto.NoticeDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.kpc.dao.NoticeDao"%>
<%@ page pageEncoding="utf-8" %>
<%@ include file="../inc/header.jsp" %>
	<%--  <%=session.getId() %>  --%>
  	<!-- breadcrumb start -->
  	<nav aria-label="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item"><a href="/index.jsp">홈</a></li>
	    <li class="breadcrumb-item">로그인</li>
	 </ol>
	</nav>
	<!-- breadcrumb end -->
  	
  	<!-- container start -->
	<div class="container">
		<!-- col start -->
		<div class="row">
			<div class="col-md-12">
				<h5 class="card-title">로그인</h5>
	            <form name="f" method="post" action="checkLogin.jsp">
	              <div class="form-group">
	                <input type="text" class="form-control" id="email" name="email" placeholder="Your Email *" value="" />
	              	<div class="invalid-feedback" id="errorEmail">
				       이메일을 입력하세요.
				    </div>
				    <div class="valid-feedback">
				        Looks good!
				    </div>
	              </div>
	              <div class="form-group">
	                <input type="password" class="form-control" id="pwd" name="pwd"  placeholder="Your Password *" value="" />
	              	<div class="invalid-feedback" id="errorPwd">
				    	비밀번호를 입력하세요.
				    </div>
				    <div class="valid-feedback">
				        Looks good!
				    </div>
	              </div>
	              <div class="form-group">
	                <input type="submit" id="loginMember" class="btn btn-primary" value="Login" />
	                <a href="" class = "btn btn-info" id = 'test'>여기</a>
	              </div>
	              
	            </form>
			</div>
		</div>
		<!-- col end -->
	</div>
	<!-- container end -->
	<script>
		$(function(){
			$('#test').click(function(e){
				e.preventDefault();	//유효성 체크				
				if(confirm('진짜로 이동하시겠습니까?')){//확인을 누르면 return true, 취소 누르면 return false
					location.href="http://www.google.com";
				}
			});
			$('#loginMember').click(function(e){
				e.preventDefault();	//유효성 체크
				
				f.submit();
			});
		});
	</script>
<%@ include file="../inc/footer.jsp" %>