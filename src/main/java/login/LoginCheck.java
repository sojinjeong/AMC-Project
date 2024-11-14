package login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class LoginCheck {
	
	PreparedStatement pstmt = null;
	Statement stmt = null;
	ResultSet res = null;
	Connection conn;
	
	public LoginCheck(Connection conn) {
		this.conn = conn;
	}
	/***이름 세션에 저장할 이름 가져오기***/
	public String getName(String mid, String mpass, int mrole, String mpetname) {
		String name = null;
		String sql = "select * from member where mid=? and mpass=?";
		
		try {
			if(mrole == 0 ) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, mid);
				pstmt.setString(2, mpass);
				res = pstmt.executeQuery();
				res.next();
				
				
				name = res.getString("mpetname");
			}else {
				name = "운영자";
			}
			
			System.out.println(name);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return name;
	}
	
	/***로그인 검증***/
	public boolean check(String mid, String mpass, String mrole) {
		boolean rs = false;
		System.out.println(mrole);
		
		String sql = "select * from member where mid=? and mpass=?";
		
		try {

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.setString(2, mpass);
			
			System.out.println(pstmt);
			res = pstmt.executeQuery();
			
			if(res.next()) {
				rs = true;
			}
			

			System.out.println(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
				return rs;
		
	}
}
