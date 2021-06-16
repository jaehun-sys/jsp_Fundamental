<%
	//session.invalidate();	//session 객체가 아예 날라가버림 or 밑에껄로 하면 됨.
	session.setAttribute("login",null);	//session은 냅두고 Attribute를 재설정
	response.sendRedirect("/member/login.jsp");
%>
