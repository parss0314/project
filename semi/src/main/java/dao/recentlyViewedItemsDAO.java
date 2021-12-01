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
import vo.recentlyViewedItemsVO;

public class recentlyViewedItemsDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sb = new StringBuffer();
	DataSource ds = null;
	
	
	// DB 연결
	public recentlyViewedItemsDAO() {
		Context initContext;
		
		try {
			initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");
		} catch (NamingException e) {
			System.out.println("DB 연결 실패");
		}
	}
	
	// 로그인에 성공하면 아이디로 검색해서 최근 본 상품을 가져온다.
	// 처음으로 본상품은 pname1, imgfile1에 저장 나중에 볼수록 1+
	public recentlyViewedItemsVO selectRvd(String id) {
		sb.setLength(0);
		sb.append("SELECT id, pname1, pname2, pname3, pname4, pname5, imgfile1, imgfile2, imgfile3, imgfile4, imgfile5 ");
		sb.append("FROM RECENTLYVIEWEDITEMS ");
		sb.append("WHERE id = ? ");
		
		recentlyViewedItemsVO vo = null;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) { 
				String pname1 = rs.getString("pname1");
				String pname2 = rs.getString("pname2");
				String pname3 = rs.getString("pname3");
				String pname4 = rs.getString("pname4");
				String pname5 = rs.getString("pname5");
				String imgfile1 = rs.getString("imgfile1");
				String imgfile2 = rs.getString("imgfile2");
				String imgfile3 = rs.getString("imgfile3");
				String imgfile4 = rs.getString("imgfile4");
				String imgfile5 = rs.getString("imgfile5");
	
				vo = new recentlyViewedItemsVO(id, pname1, pname2, pname3, pname4, pname5, imgfile1, imgfile2, imgfile3, imgfile4, imgfile5);
			}
			conn.close();
		} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
		
		return vo;
	}
	

	
	
//	마지막으로 본 상품 업데이트
	public void updateRvd1(String pname, String imgfile, String id) {
		sb.setLength(0);
		sb.append("UPDATE RECENTLYVIEWEDITEMS ");
		sb.append("SET pname1 = ?, imgfile1 = ? ");
		sb.append("WHERE id = ? ");
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, pname);
			pstmt.setString(2, imgfile);
			pstmt.setString(3, id);
			
			pstmt.executeUpdate();
			
			conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	
	public void updateRvd2(String pname, String imgfile, String id) {
		sb.setLength(0);
		sb.append("UPDATE RECENTLYVIEWEDITEMS ");
		sb.append("SET pname2 = ?, imgfile2 = ? ");
		sb.append("WHERE id = ? ");
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, pname);
			pstmt.setString(2, imgfile);
			pstmt.setString(3, id);
			
			pstmt.executeUpdate();
			
			conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	public void updateRvd3(String pname, String imgfile, String id) {
		sb.setLength(0);
		sb.append("UPDATE RECENTLYVIEWEDITEMS ");
		sb.append("SET pname3 = ?, imgfile3 = ? ");
		sb.append("WHERE id = ? ");
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, pname);
			pstmt.setString(2, imgfile);
			pstmt.setString(3, id);
			
			pstmt.executeUpdate();
			
			conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	public void updateRvd4(String pname, String imgfile, String id) {
		sb.setLength(0);
		sb.append("UPDATE RECENTLYVIEWEDITEMS ");
		sb.append("SET pname4 = ?, imgfile4 = ? ");
		sb.append("WHERE id = ? ");
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, pname);
			pstmt.setString(2, imgfile);
			pstmt.setString(3, id);
			
			pstmt.executeUpdate();
			
			conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	public void updateRvd5(String pname, String imgfile, String id) {
		sb.setLength(0);
		sb.append("UPDATE RECENTLYVIEWEDITEMS ");
		sb.append("SET pname5 = ?, imgfile5 = ? ");
		sb.append("WHERE id = ? ");
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, pname);
			pstmt.setString(2, imgfile);
			pstmt.setString(3, id);
			
			pstmt.executeUpdate();
			
			conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	public void InsertOne(String id) {
		sb.setLength(0);
		sb.append("INSERT INTO RECENTLYVIEWEDITEMS (id) ");
		sb.append("VALUES (? )	");
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
	
	
	
}
