package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import vo.testInsertVO;

public class testInsertDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sb = new StringBuffer();
	DataSource ds = null;
	
	
	// DB 연결
	public testInsertDAO() {
		Context initContext;
		
		try {
			initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");
		} catch (NamingException e) {
			System.out.println("DB 연결 실패");
		}
	}
	
	public testInsertVO selectOneName(String pname) {
		sb.setLength(0);
		sb.append("SELECT pno, imgfile, pname ");
		sb.append("FROM test_insert ");
		sb.append("WHERE pname = ? ");
		
		testInsertVO vo = null;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, pname);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) { 
				String imgfile = rs.getString("imgfile");
				int pno = rs.getInt("pno");

				vo = new testInsertVO(pname, imgfile, pno);
			}
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return vo;
	}
	
	public int counter() {
		sb.setLength(0);
		sb.append("SELECT COUNT(pname) co ");
		sb.append("FROM test_insert ");
		int count = 0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) { 
				count = rs.getInt("co");
			}
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}
	
	public testInsertVO selectOnePno(int pno) {
		sb.setLength(0);
		sb.append("SELECT pno, imgfile, pname ");
		sb.append("FROM test_insert ");
		sb.append("WHERE pno = ? ");
		
		testInsertVO vo = null;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, pno);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) { 
				String imgfile = rs.getString("imgfile");
				String pname = rs.getString("pname");

				vo = new testInsertVO(pname, imgfile, pno);
			}
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return vo;
	}
}
