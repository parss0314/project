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

import vo.RefriVO;
import vo.TvVO;

public class RefriDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sb = new StringBuffer();
	DataSource ds = null;
	
	// DB 연결
	public RefriDAO() {
		Context initContext;
		
		try {
			initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");
		} catch (NamingException e) {
			System.out.println("DB 연결 실패");
		}
	}
	
	public ArrayList<RefriVO> getAll() {
		
		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, door, volume, codename, codename2, pricegrade, volumegrade ");
		sb.append("FROM refri ");
	
		
		ArrayList<RefriVO> list = new ArrayList<RefriVO>();
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
				int door = rs.getInt("door");
				int volume = rs.getInt("volume");
				String codename = rs.getString("codename");
				String codename2 = rs.getString("codename2");
				String pricegrade = rs.getString("pricegrade");
				String volumegrade = rs.getString("volumegrade");
				
				RefriVO vo = new RefriVO(pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, door, volume, codename, codename2, pricegrade, volumegrade);
				list.add(vo);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	public ArrayList<RefriVO> searchEa(String energyVal, String brandVal, String doorVal, String priceVal, String volumeVal) {
		ArrayList<RefriVO> list = new ArrayList<RefriVO>();
		
//		sb.append("SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, door, volume, codename, codename2, aaaa ");
//		sb.append("FROM(SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, door, volume, codename, codename2, aaaa ");
//		sb.append("    FROM (SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, door, volume, codename, codename2, aaaa ");
//		sb.append("        FROM (SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, door, volume, codename, codename2, aaaa ");
//		sb.append("            FROM refri ");
//		sb.append("            WHERE energy = 1 or energy = 2 or energy = 3) ");
//		sb.append("        WHERE brand = '삼성' OR brand = 'LG')  ");
//		sb.append("    WHERE door = 1 OR door = 2) ");
//		sb.append("WHERE aaaa = '1'; ");
		
		
		
			sb.setLength(0);
			
			sb.append("	SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, door, volume, codename, codename2, pricegrade, volumegrade ");
			sb.append("		FROM(SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, door, volume, codename, codename2, pricegrade, volumegrade ");
			sb.append("			FROM(SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, door, volume, codename, codename2, pricegrade, volumegrade ");
			sb.append("				FROM(SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, door, volume, codename, codename2, pricegrade, volumegrade ");
			sb.append("					FROM(SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, door, volume, codename, codename2, pricegrade, volumegrade ");
			sb.append("					FROM refri ");
			sb.append(					energyVal+")");
			sb.append(				brandVal+")");
			sb.append(			doorVal+")");
			sb.append(		priceVal+")");
			sb.append(volumeVal);
			

			
			
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
					int door = rs.getInt("door");
					int volume = rs.getInt("volume");
					String codename = rs.getString("codename");
					String codename2 = rs.getString("codename2");
					String pricegrade = rs.getString("pricegrade");
					String volumegrade = rs.getString("volumegrade");
					
					RefriVO vo = new RefriVO(pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, door, volume, codename, codename2, pricegrade, volumegrade);
					list.add(vo);
				}
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
			
		}
		
}
