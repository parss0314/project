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

import vo.TvVO;

public class TVDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sb = new StringBuffer();
	DataSource ds = null;
	
	// DB 연결
	public TVDAO() {
		Context initContext;
		
		try {
			initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");
		} catch (NamingException e) {
			System.out.println("DB 연결 실패");
		}
	}
	
	public ArrayList<TvVO> getAll() {
		
		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, psize, pixel, codename ");
		sb.append("FROM tv ");
	
		
		ArrayList<TvVO> list = new ArrayList<TvVO>();
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int pno = rs.getInt("pno");
				int code = rs.getInt("code");
				String pname = rs.getString("pname");
				String pdesc = rs.getString("pdesc");
				String brand = rs.getString("brand");
				int price = rs.getInt("price");
				String regdate = rs.getString("regdate");
				int energy = rs.getInt("energy");
				String imgfile = rs.getString("imgfile");
				int psize = rs.getInt("psize");
				String pixel = rs.getString("pixel");
				String codename = rs.getString("codename");
				String codename2 = rs.getString("codename2");
				
				TvVO vo = new TvVO(pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, psize, pixel, codename, codename2);
				list.add(vo);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
