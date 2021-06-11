package hello;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//http://localhost:8080/hello
//여기에 jsp가 servlet으로 바뀌고 컴파일 됨.
@WebServlet("/hello")
public class HelloServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>hello servlet</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>HelloServlet</h1>");
		
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		out.println("<ul>					");
		out.println("<li> 아이디 : " + id		);
		out.println("<li> 이메일 : " + email	);
		out.println("<li> 비밀번호 : " + pwd	);
		out.println("</ul>					");
		out.println("</body>				");
		out.println("</html>				");
		
		
	}
}
