package project129.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import project129.dto.MemberDto;


public class MemberDao {

			//필드
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			Connection conn;
			
			//생성자에서 db 접속
			public MemberDao(Connection conn) {
				this.conn = conn;
			}
			
			//회원가입
			public int insertDB(MemberDto mdto) {
				int num = 0;
				String sql = "insert into member "
						+ " (id, mname, mid, mpass, mpettype, mpetname, mphonenum, mpetage, memail, mrole) "
						+ " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, mdto.getId());
					pstmt.setString(2, mdto.getMname());
					pstmt.setString(3, mdto.getMid());
					pstmt.setString(4, mdto.getMpass());
					pstmt.setString(5, mdto.getMpettype());
					pstmt.setString(6, mdto.getMpetname());
					pstmt.setString(7, mdto.getMphonenum());
					pstmt.setString(8, mdto.getMpetage());
					pstmt.setString(9, mdto.getMemail());
					pstmt.setInt(10, mdto.getMrole());
					System.out.println(pstmt);
					num = pstmt.executeUpdate();
					
				}catch(SQLException e) {
					e.printStackTrace();
				}finally {
					  try {
							if(pstmt != null) pstmt.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
				}
				return num;
			}
			
			//회원정보 검증
			public MemberDto serchDB(String mname, String mid) {
				String sql = "select * from student where name = ? and mid = ?";
				MemberDto mdto = new MemberDto();
				
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, mname);
					pstmt.setString(2, mid);
					rs = pstmt.executeQuery();
					rs.next();
					
					mdto.setMname(rs.getString("name"));
					mdto.setMid(rs.getString("Mid"));
					mdto.setMemail(rs.getString("memail"));
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
				
				return mdto;
			}
			
			//회원중복 검증
			public boolean findUser(String mid) {
				boolean res = true;
				String sql = "select * from member where mid = ?";
				try {
				   pstmt = conn.prepareStatement(sql);
				   pstmt.setString(1, mid);	
				   rs = pstmt.executeQuery();
				   if(rs.next()) {
					   res = false;
				   }
				}catch(SQLException e) {
				      e.printStackTrace();
			    }finally {
				  try {
					if(pstmt != null) pstmt.close();
				  } catch (SQLException e) {
					  e.printStackTrace();
				  }
				}
				return res;
			}
			
			
			
			
			//회원로그인
		      public MemberDto login(String mid, String mpass) {
		          String sql = "select * from member where mid=? and mpass=?";
		          MemberDto mdto = new MemberDto();
		          try {
		             pstmt = conn.prepareStatement(sql);
		             pstmt.setString(1, mid);
		             pstmt.setString(2, mpass);
		             rs = pstmt.executeQuery(); // 1, 0
		             
		             if(rs.next()) {
		             mdto.setId(rs.getInt("id"));
		             mdto.setMname(rs.getString("mname"));
		             mdto.setMid(rs.getString("mid"));
		             mdto.setMpass(rs.getString("mpass"));
		             mdto.setMemail(rs.getString("memail"));
		             mdto.setMphonenum(rs.getString("mphonenum"));
		             mdto.setMpettype(rs.getString("mpettype"));
		             mdto.setMpetage(rs.getString("mpetage"));
		             mdto.setMrole(rs.getInt("mrole"));
		             }
		          }catch(SQLException e) {
		             e.printStackTrace();
		          }finally {
		              try {
		                  if(pstmt != null) pstmt.close();
		                  if(rs != null) rs.close();
		                 } catch (SQLException e) {
		                    e.printStackTrace();
		                 }
		          }
		          return mdto;
		      }

}
