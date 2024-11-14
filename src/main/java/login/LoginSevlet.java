package login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import project129.dao.*;
import project129.dto.*;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project129.dao.DBConnect;

/**
 * Servlet implementation class LoginSevlet
 */
@WebServlet("/LoginSevlet")
public class LoginSevlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		HttpSession session = req.getSession();
		DBConnect db = new DBConnect();
		
		String id = req.getParameter("mid");
		String pass = req.getParameter("mpass");

		
		System.out.println(id+", "+pass);
		
		Connection conn;
		try {
			conn = db.getConnection();
			MemberDao mdao = new MemberDao(conn);
			LoginCheck lc = new LoginCheck(conn);
			
			
			MemberDto mdto = new MemberDto();
		
			

				if(id.isEmpty() || pass.isEmpty()) {
				System.out.println("아이디 또는 비밀번호가 없습니다.");
				resp.sendRedirect("login.jsp");
				return;
				
				}else {
					mdao.login(id, pass);

					String name = lc.getName(id,pass,mdto.getMrole(),mdto.getMpetname());
					
					session.setAttribute("name", name);

					resp.sendRedirect("index.jsp");
					System.out.println("로그인 완료");
			

			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		
		HttpSession session = req.getSession(false);
		
		if(session != null && session.getAttribute("name") != null) {
			session.invalidate();
			resp.sendRedirect("index.jsp");
			System.out.println("세션비우기");
			
		} 
		
	}
}
