package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import vo.TongVO;

public class TongDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sb = new StringBuffer();
	DataSource ds = null;
	
	
	// DB 연결
	public TongDAO() {
		Context initContext;
		
		try {
			initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");
		} catch (NamingException e) {
			System.out.println("DB 연결 실패");
		}
	}// TongDAO() end
	
	
	// 회원 정보 조회
//	public TongVO selectAll() {
//		
//	}
	
	
	
	// 로그인 처리
	public TongVO selectOne(String id, String pw) {
		sb.setLength(0);
		sb.append("SELECT id, pw, uname, birth, gender, hp, email, grade ");
		sb.append("FROM tong_member ");
		sb.append("WHERE id = ? AND pw = ? ");
		
		TongVO vo = null;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) { 
				String uname = rs.getString("uname");
				String birth = rs.getString("birth");
				String gender = rs.getString("gender");
				String hp = rs.getString("hp");
				String email = rs.getString("email");
				int grade = rs.getInt("grade");
				vo = new TongVO(id, pw, uname, birth, gender, hp, email, grade);
			}
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return vo;
	}
	
	
	// 회원가입
	public void insertOne(TongVO vo) {
		sb.setLength(0);
		sb.append("INSERT INTO tong_member ");
		sb.append("VALUES ( ? , ? , ? , ? , ? , ?, ?, ? ) ");
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getUname());
			pstmt.setString(4, vo.getBurth());
			pstmt.setString(5, vo.getGender());
			pstmt.setString(6, vo.getHp());
			pstmt.setString(7, vo.getEmail());
			pstmt.setInt(8, vo.getGrade());
			
			pstmt.executeUpdate();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}// insertOne() end
	
	public boolean isExists(String id) {
		sb.setLength(0); 
		sb.append("SELECT id, pw, uname, birth, gender, hp, email, grade ");
		sb.append("FROM tong_member ");
		sb.append("WHERE id = ? ");
		boolean b = false;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();
			b = rs.next();
			
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b?true:false;
	}
	
	// 아이디찾기
	public String findID(String uname, String HP) {
		sb.setLength(0); 
		sb.append("SELECT id, pw, uname, birth, gender, hp, email, grade ");
		sb.append("FROM tong_member ");
		sb.append("WHERE uname = ? and HP = ? ");
		String id = "null";

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, uname);
			pstmt.setString(2, HP);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				id = rs.getString("id");
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return id;
	}
	
	// 비밀번호찾기
	public String findPW(String id, String email) {
		sb.setLength(0); 
		sb.append("SELECT id, pw, uname, birth, gender, hp, email, grade ");
		sb.append("FROM tong_member ");
		sb.append("WHERE id = ? and email = ? ");
		String pw = "null";

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, email);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				pw = rs.getString("pw");
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return pw;
	}
	
	public boolean idPwCheck(String id, String pw) {
		sb.setLength(0); 
		sb.append("SELECT id, pw, uname, birth, gender, hp, email, grade ");
		sb.append("FROM tong_member ");
		sb.append("WHERE id = ? and pw = ? ");
		boolean b = false;

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			
			b = rs.next();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b?true:false;

	}
	
	public void newPwEmail(String repw ,String email, String id, String pw ) {
		sb.setLength(0); 
		sb.append("UPDATE tong_member ");
		sb.append("SET pw = ? email = ?");
		sb.append("WHERE id = ? and pw = ?");
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, repw);
			pstmt.setString(2, email);
			pstmt.setString(3, id);
			pstmt.setString(4, pw);


			pstmt.executeUpdate();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
	}
	
	public void deleteOne(String id) {
		sb.setLength(0);
		sb.append("DELETE FROM TONG_MEMBER ");
		sb.append("WHERE ID = ? ");
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			
			pstmt.executeUpdate();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
}// class end
