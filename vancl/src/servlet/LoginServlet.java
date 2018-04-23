package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.User;

import biz.UserDaoBiz;

public class LoginServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LoginServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		String userName=request.getParameter("userName");
		String userPwd=request.getParameter("userPwd");
		if(userName==null||userName==""||userPwd==null||userPwd=="")
		{
			out.print("<script>alert('用户名或密码不能为空!');</script>");
			out.print("<script>location.href='login.jsp';</script>");
		}
		else
		{
			UserDaoBiz userDaoBiz=new UserDaoBiz();
			User user=(User)userDaoBiz.getUserByLoginNameAndPwd(userName, userPwd);
			HttpSession session=request.getSession();
			session.setAttribute("user", user);
			if(user==null)
			{
				out.print("<script>alert('用户名或密码错误!');</script>");
				out.print("<script>location.href='login.jsp';</script>");
			}
			else
			{
				if(session.getAttribute("questionLogin")!=null)
				{
					session.setAttribute("questionLogin",null);
					out.print("<script>location.href='details.jsp#tiwen';</script>");
				}
				else
				{
					out.print("<script>location.href='main.jsp';</script>");
				}
			}
		}
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
