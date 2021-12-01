package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import vo.TongVO;
import vo.chatVO;

public class chatDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sb = new StringBuffer();
	DataSource ds = null;
	
	
	public chatDAO() {
		Context initContext;
		
		try {
			initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");
		} catch (NamingException e) {
			System.out.println("DB 연결 실패");
		}
	}
	
	public void insertOne(String id, String content) {
		sb.setLength(0);
		sb.append("INSERT INTO chat ");
		sb.append("VALUES(?, ?, chat_seq.NEXTVAL, 0 ) ");
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			
			pstmt.setString(1, id);
			pstmt.setString(2, content);
			pstmt.executeUpdate();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<chatVO> getAll() {
		sb.setLength(0);
		sb.append("SELECT id, content, cno, status ");
		sb.append("FROM chat ");
		sb.append("ORDER BY cno ");
		
		ArrayList<chatVO> list = new ArrayList<chatVO>();
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String id = rs.getString("id");
				String content = rs.getString("content");
				int cno = rs.getInt("cno");
				int status = rs.getInt("status");

				chatVO vo = new chatVO(id, content, cno, status);
				list.add(vo);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public String counter() {
		sb.setLength(0);
		sb.append("SELECT COUNT(cno) co ");
		sb.append("FROM chat ");
		String count = null;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) { 
				count = rs.getString("co");
			}
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}
	
}
