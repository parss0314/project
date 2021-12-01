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

import vo.AllVO;
import vo.CleanerVO;
import vo.ComputerVO;
import vo.RefriVO;
import vo.TvVO;
import vo.WashingVO;

public class ProductDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sb = new StringBuffer();
	DataSource ds = null;

	// DB 연결
	public ProductDAO() {
		Context initContext;

		try {
			initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			ds = (DataSource) envContext.lookup("jdbc/myoracle");
		} catch (NamingException e) {
			System.out.println("DB 연결 실패");
		}
	}// ProductDAO() end
	
	// 모든 제품 검색
	public AllVO getAll(String pname) {
		AllVO vo = null;
		
		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, to_char(regdate, 'yyyy-mm-dd') regdate, energy, imgfile, codename, codename2 ");
		sb.append("FROM all_product ");
		sb.append("WHERE pname = ? ");

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, pname);

			rs = pstmt.executeQuery();
			rs.next();

			int pno = rs.getInt("pno");
			int code = rs.getInt("code");
			String pdesc = rs.getString("pdesc");
			String brand = rs.getString("brand");
			int price = rs.getInt("price");
			String regdate = rs.getString("regdate");
			int energy = rs.getInt("energy");
			String imgfile = rs.getString("imgfile");
			String codename = rs.getString("codename");
			String codename2 = rs.getString("codename2");

			vo = new AllVO(pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, codename, codename2);
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}// getAll() end
	
	// TV 단일 제품 정보 가져오기
	public TvVO getTvInfo(String pname) {
		TvVO vo = null;

		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, to_char(regdate, 'yyyy-mm-dd') regdate, energy, imgfile, psize, pixel, codename, codename2 ");
		sb.append("FROM tv ");
		sb.append("WHERE pname = ? ");

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, pname);

			rs = pstmt.executeQuery();
			rs.next();

			int pno = rs.getInt("pno");
			int code = rs.getInt("code");
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

			vo = new TvVO(pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, psize, pixel, codename, codename2);
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}// getTvInfo() end

	// 청소기 단일 정보 가져오기
	public CleanerVO getCleanerInfo(String pname) {
		CleanerVO vo = null;
		
		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, to_char(regdate, 'yyyy-mm-dd') regdate, energy, imgfile, power, weight, type, codename, codename2 ");
		sb.append("FROM cleaner ");
		sb.append("WHERE pname = ? ");

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, pname);

			rs = pstmt.executeQuery();
			rs.next();
			
			int pno = rs.getInt("pno");
			int code = rs.getInt("code");
			String pdesc = rs.getString("pdesc");
			String brand = rs.getString("brand");
			int price = rs.getInt("price");
			String regdate = rs.getString("regdate");
			int energy = rs.getInt("energy");
			String imgfile = rs.getString("imgfile");
			int power = rs.getInt("power");
			int weight = rs.getInt("weight");
			int type = rs.getInt("type");
			String codename = rs.getString("codename");
			String codename2 = rs.getString("codename2");
				
			vo = new CleanerVO(pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, power, weight, type, codename, codename2);

			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}// getCleanerInfo() end

	// 컴퓨터 단일 정보 가져오기
	public ComputerVO getComputerInfo(String pname) {
		ComputerVO vo = null;

		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, to_char(regdate, 'yyyy-mm-dd') regdate, energy, imgfile, cpu, ram, weight, psize, codename, codename2 ");
		sb.append("FROM computer ");
		sb.append("WHERE pname = ? ");

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, pname);

			rs = pstmt.executeQuery();
			rs.next();

			int pno = rs.getInt("pno");
			int code = rs.getInt("code");
			String pdesc = rs.getString("pdesc");
			String brand = rs.getString("brand");
			int price = rs.getInt("price");
			String regdate = rs.getString("regdate");
			int energy = rs.getInt("energy");
			String imgfile = rs.getString("imgfile");
			String cpu = rs.getString("cpu");
			String ram = rs.getString("ram");
			int weight = rs.getInt("weight");
			int psize = rs.getInt("psize");
			String codename = rs.getString("codename");
			String codename2 = rs.getString("codename2");

			vo = new ComputerVO(pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, cpu, ram, weight, psize, codename, codename2);
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}// getComputerInfo() end

	// 냉장고 단일 정보 가져오기
	public RefriVO getRefriInfo(String pname) {
		RefriVO vo = null;

		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, to_char(regdate, 'yyyy-mm-dd') regdate, energy, imgfile, door, volume, codename, codename2, pricegrade, volumegrade ");
		sb.append("FROM refri ");
		sb.append("WHERE pname = ? ");

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, pname);

			rs = pstmt.executeQuery();
			rs.next();

			int pno = rs.getInt("pno");
			int code = rs.getInt("code");
			//String pname = rs.getString("pname");
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

			vo = new RefriVO(pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, door, volume, codename, codename2, pricegrade, volumegrade);
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}// getRefriInfo() end

	// 세탁기 단일 정보 가져오기
	public WashingVO getWashingInfo(String pname) {
		WashingVO vo = null;
		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, to_char(regdate, 'yyyy-mm-dd') regdate, energy, imgfile, ptype, liter, codename, codename2 ");
		sb.append("FROM washing ");
		sb.append("WHERE pname = ? ");

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, pname);

			rs = pstmt.executeQuery();
			while(rs.next()) {
				int pno = rs.getInt("pno");
				int code = rs.getInt("code");
				String pdesc = rs.getString("pdesc");
				String brand = rs.getString("brand");
				int price = rs.getInt("price");
				String regdate = rs.getString("regdate");
				int energy = rs.getInt("energy");
				String imgfile = rs.getString("imgfile");
				String ptype = rs.getString("ptype");
				int liter = rs.getInt("liter");
				String codename = rs.getString("codename");
				String codename2 = rs.getString("codename2");
				
				vo = new WashingVO(pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, ptype, liter, codename, codename2);			
				return vo;
			};

			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}// getWashingInfo() end
	
	// 청소기 제품 검색
	public ArrayList<CleanerVO> searchCleaner(String word) {
		ArrayList<CleanerVO> list = new ArrayList<CleanerVO>();
		
		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, to_char(regdate, 'yyyy-mm-dd') regdate, energy, imgfile, power, weight, type, codename, codename2 ");
		sb.append("FROM cleaner ");
		sb.append("WHERE pname LIKE UPPER('%" + word + "%') ");
		sb.append("OR codename2 LIKE UPPER('%" + word + "%') ");
		sb.append("ORDER BY pno ASC ");
		
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
				int power = rs.getInt("power");
				int weight = rs.getInt("weight");
				int type = rs.getInt("type");
				String codename = rs.getString("codename");
				String codename2 = rs.getString("codename2");

				CleanerVO vo = new CleanerVO(pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, power, weight, type, codename, codename2);
				list.add(vo);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}// searchCleaner() end
	
	// 노트북 제품 검색
	public ArrayList<ComputerVO> searchComputer(String word) {
		ArrayList<ComputerVO> list = new ArrayList<ComputerVO>();
		
		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, to_char(regdate, 'yyyy-mm-dd') regdate, energy, imgfile, cpu, ram, weight, psize, codename, codename2 ");
		sb.append("FROM computer ");
		sb.append("WHERE pname LIKE UPPER('%" + word + "%') ");
		sb.append("OR codename2 LIKE UPPER('%" + word + "%') ");
		sb.append("ORDER BY pno ASC ");
		
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
				String cpu = rs.getString("cpu");
				String ram = rs.getString("ram");
				int weight = rs.getInt("weight");
				int psize = rs.getInt("psize");
				String codename = rs.getString("codename");
				String codename2 = rs.getString("codename2");

				ComputerVO vo = new ComputerVO(pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, cpu, ram, weight, psize, codename, codename2);
				list.add(vo);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}// searchComputer() end
	
	// 냉장고 제품 검색
	public ArrayList<RefriVO> searchRefri(String word) {
		ArrayList<RefriVO> list = new ArrayList<RefriVO>();
		
		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, to_char(regdate, 'yyyy-mm-dd') regdate, energy, imgfile, door, volume, codename, codename2, pricegrade, volumegrade ");
		sb.append("FROM refri ");
		sb.append("WHERE pname LIKE UPPER('%" + word + "%') ");
		sb.append("OR codename2 LIKE UPPER('%" + word + "%') ");
		sb.append("ORDER BY pno ASC ");
		
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
	}// searchRefri() end
	
	// TV 제품 검색
	public ArrayList<TvVO> searchTV(String word) {
		ArrayList<TvVO> list = new ArrayList<TvVO>();
		
		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, to_char(regdate, 'yyyy-mm-dd') regdate, energy, imgfile, psize, pixel, codename, codename2 ");
		sb.append("FROM tv ");
		sb.append("WHERE pname LIKE UPPER('%" + word + "%') ");
		sb.append("OR codename2 LIKE UPPER('%" + word + "%') ");
		sb.append("ORDER BY pno ASC ");
		
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
	}// searchTV() end
	
	// 세탁기 제품 검색
	public ArrayList<WashingVO> searchWashing(String word) {
		ArrayList<WashingVO> list = new ArrayList<WashingVO>();
		
		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, to_char(regdate, 'yyyy-mm-dd') regdate, energy, imgfile, ptype, liter, codename, codename2 ");
		sb.append("FROM washing ");
		sb.append("WHERE pname LIKE UPPER('%" + word + "%') ");
		sb.append("OR codename2 LIKE UPPER('%" + word + "%') ");
		sb.append("ORDER BY pno ASC ");
		
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
				String ptype = rs.getString("ptype");
				int liter = rs.getInt("liter");
				String codename = rs.getString("codename");
				String codename2 = rs.getString("codename2");

				WashingVO vo = new WashingVO(pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, ptype, liter, codename, codename2);
				list.add(vo);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}// searchWashing() end
	
	// TV 비교함 저장하기
	public void setTvCompare(TvVO vo) {

		sb.setLength(0);
		sb.append("INSERT INTO compare_tv ");
		sb.append("VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) ");

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());

			pstmt.setInt(1, vo.getPno());
			pstmt.setInt(2, vo.getCode());
			pstmt.setString(3, vo.getPname());
			pstmt.setString(4, vo.getPdesc());
			pstmt.setString(5, vo.getBrand());
			pstmt.setInt(6, vo.getPrice());
			pstmt.setString(7, vo.getRegdate());
			pstmt.setInt(8, vo.getEnergy());
			pstmt.setString(9, vo.getImgfile());
			pstmt.setInt(10, vo.getPsize());
			pstmt.setString(11, vo.getPixel());
			pstmt.setString(12, vo.getCodename());
			pstmt.setString(13, vo.getCodename2());

			pstmt.executeUpdate();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}// setTvCompare() end
	
	// 청소기 비교함 저장하기
	public void setCleanerCompare(CleanerVO vo) {

		sb.setLength(0);
		sb.append("INSERT INTO compare_cleaner ");
		sb.append("VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) ");

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());

			pstmt.setInt(1, vo.getPno());
			pstmt.setInt(2, vo.getCode());
			pstmt.setString(3, vo.getPname());
			pstmt.setString(4, vo.getPdesc());
			pstmt.setString(5, vo.getBrand());
			pstmt.setInt(6, vo.getPrice());
			pstmt.setString(7, vo.getRegdate());
			pstmt.setInt(8, vo.getEnergy());
			pstmt.setString(9, vo.getImgfile());
			pstmt.setInt(10, vo.getPower());
			pstmt.setInt(11, vo.getWeight());
			pstmt.setInt(12, vo.getType());
			pstmt.setString(13, vo.getCodename());
			pstmt.setString(14, vo.getCodename2());

			pstmt.executeUpdate();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}// setCleanerCompare() end
	
	// 컴퓨터 비교함 저장하기
	public void setComputerCompare(ComputerVO vo) {

		sb.setLength(0);
		sb.append("INSERT INTO compare_computer ");
		sb.append("VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) ");

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());

			pstmt.setInt(1, vo.getPno());
			pstmt.setInt(2, vo.getCode());
			pstmt.setString(3, vo.getPname());
			pstmt.setString(4, vo.getPdesc());
			pstmt.setString(5, vo.getBrand());
			pstmt.setInt(6, vo.getPrice());
			pstmt.setString(7, vo.getRegdate());
			pstmt.setInt(8, vo.getEnergy());
			pstmt.setString(9, vo.getImgfile());
			pstmt.setString(10, vo.getCpu());
			pstmt.setString(11, vo.getRam());
			pstmt.setInt(12, vo.getWeight());
			pstmt.setInt(13, vo.getPsize());
			pstmt.setString(14, vo.getCodename());
			pstmt.setString(15, vo.getCodename2());

			pstmt.executeUpdate();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}// setComputerCompare() end
	
	// 냉장고 비교함 저장하기
	public void setRefriCompare(RefriVO vo) {

		sb.setLength(0);
		sb.append("INSERT INTO compare_refri ");
		sb.append("VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) ");

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());

			pstmt.setInt(1, vo.getPno());
			pstmt.setInt(2, vo.getCode());
			pstmt.setString(3, vo.getPname());
			pstmt.setString(4, vo.getPdesc());
			pstmt.setString(5, vo.getBrand());
			pstmt.setInt(6, vo.getPrice());
			pstmt.setString(7, vo.getRegdate());
			pstmt.setInt(8, vo.getEnergy());
			pstmt.setString(9, vo.getImgfile());
			pstmt.setInt(10, vo.getDoor());
			pstmt.setInt(11, vo.getVolume());
			pstmt.setString(12, vo.getCodename());
			pstmt.setString(13, vo.getCodename2());
			pstmt.setString(14, vo.getPricegrade());
			pstmt.setString(15, vo.getVolumegrade());

			pstmt.executeUpdate();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}// setRefriCompare() end
	
	// 세탁기 비교함 저장하기
	public void setWashingCompare(WashingVO vo) {

		sb.setLength(0);
		sb.append("INSERT INTO compare_washing ");
		sb.append("VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) ");

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());

			pstmt.setInt(1, vo.getPno());
			pstmt.setInt(2, vo.getCode());
			pstmt.setString(3, vo.getPname());
			pstmt.setString(4, vo.getPdesc());
			pstmt.setString(5, vo.getBrand());
			pstmt.setInt(6, vo.getPrice());
			pstmt.setString(7, vo.getRegdate());
			pstmt.setInt(8, vo.getEnergy());
			pstmt.setString(9, vo.getImgfile());
			pstmt.setString(10, vo.getPtype());
			pstmt.setInt(11, vo.getLiter());
			pstmt.setString(12, vo.getCodename());
			pstmt.setString(13, vo.getCodename2());

			pstmt.executeUpdate();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}// setWashingCompare() end

	// TV 비교함 불러오기
	public ArrayList<TvVO> getTvCompare() {

		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, psize, pixel, codename, codename2 ");
		sb.append("FROM compare_tv ");
		sb.append("ORDER BY pno ASC ");

		ArrayList<TvVO> list = new ArrayList<TvVO>();
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();

			while (rs.next()) {
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
	}// getTvCompare() end
	
	// 청소기 비교함 불러오기
	public ArrayList<CleanerVO> getCleanerCompare() {
		ArrayList<CleanerVO> list = new ArrayList<CleanerVO>();

		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, power, weight, type, codename, codename2 ");
		sb.append("FROM compare_cleaner ");
		sb.append("ORDER BY pno ASC ");

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();

			while (rs.next()) {
				int pno = rs.getInt("pno");
				int code = rs.getInt("code");
				String pname = rs.getString("pname");
				String pdesc = rs.getString("pdesc");
				String brand = rs.getString("brand");
				int price = rs.getInt("price");
				String regdate = rs.getString("regdate");
				int energy = rs.getInt("energy");
				String imgfile = rs.getString("imgfile");
				int power = rs.getInt("power");
				int weight = rs.getInt("weight");
				int type = rs.getInt("type");
				String codename = rs.getString("codename");
				String codename2 = rs.getString("codename2");

				CleanerVO vo = new CleanerVO(pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, power, weight, type, codename, codename2);
				list.add(vo);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}// getCleanerCompare() end
	
	// 컴퓨터 비교함 불러오기
	public ArrayList<ComputerVO> getComputerCompare() {

		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, cpu, ram, weight, psize, codename, codename2 ");
		sb.append("FROM compare_computer ");
		sb.append("ORDER BY pno ASC ");

		ArrayList<ComputerVO> list = new ArrayList<ComputerVO>();
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();

			while (rs.next()) {
				int pno = rs.getInt("pno");
				int code = rs.getInt("code");
				String pname = rs.getString("pname");
				String pdesc = rs.getString("pdesc");
				String brand = rs.getString("brand");
				int price = rs.getInt("price");
				String regdate = rs.getString("regdate");
				int energy = rs.getInt("energy");
				String imgfile = rs.getString("imgfile");
				String cpu = rs.getString("cpu");
				String ram = rs.getString("ram");
				int weight = rs.getInt("weight");
				int psize = rs.getInt("psize");
				String codename = rs.getString("codename");
				String codename2 = rs.getString("codename2");

				ComputerVO vo = new ComputerVO(pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, cpu, ram, weight, psize, codename, codename2);
				list.add(vo);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}// getComputerCompare() end
	
	// 냉장고 비교함 불러오기
	public ArrayList<RefriVO> getRefriCompare() {

		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, door, volume, codename, codename2, pricegrade, volumegrade ");
		sb.append("FROM compare_refri ");
		sb.append("ORDER BY pno ASC ");

		ArrayList<RefriVO> list = new ArrayList<RefriVO>();
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();

			while (rs.next()) {
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
	}// getRefriCompare() end
	
	// 세탁기 비교함 불러오기
	public ArrayList<WashingVO> getWashingCompare() {

		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, ptype, liter, codename, codename2 ");
		sb.append("FROM compare_washing ");
		sb.append("ORDER BY pno ASC ");

		ArrayList<WashingVO> list = new ArrayList<WashingVO>();
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();

			while (rs.next()) {
				int pno = rs.getInt("pno");
				int code = rs.getInt("code");
				String pname = rs.getString("pname");
				String pdesc = rs.getString("pdesc");
				String brand = rs.getString("brand");
				int price = rs.getInt("price");
				String regdate = rs.getString("regdate");
				int energy = rs.getInt("energy");
				String imgfile = rs.getString("imgfile");
				String ptype = rs.getString("ptype");
				int liter = rs.getInt("liter");
				String codename = rs.getString("codename");
				String codename2 = rs.getString("codename2");

				WashingVO vo = new WashingVO(pno, code, pname, pdesc, brand, price, regdate, energy, imgfile, ptype, liter, codename, codename2);
				list.add(vo);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}// getWashingCompare() end

	// 비교함 제품 삭제하기
	public void deleteCompare(String codename, int pno) {
		sb.setLength(0);
		sb.append("DELETE compare_" + codename + " ");
		sb.append("WHERE pno = ? ");

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, pno);
			pstmt.executeUpdate();

			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}// deleteCompare() end

	// 비교함에 저장된 제품 수 조회
	public int compareCount(String codename) {
		int size = 1; // 비교함에 저장된 제품 수

		sb.setLength(0);
		sb.append("SELECT count(pno) ");
		sb.append("FROM compare_" + codename + " ");

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());

			rs = pstmt.executeQuery();
			rs.next();

			size = rs.getInt("count(pno)");
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return size;
	}// compareCount() end

	// 비교함 중복제품 유무 검사
	public boolean compareOver(String codename, String pname) {
		boolean isOver = false; // 중복유무 변수

		sb.setLength(0);
		sb.append("SELECT pname ");
		sb.append("FROM compare_" + codename + " ");
		sb.append("WHERE pname = ? ");

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, pname);
			rs = pstmt.executeQuery();

			if (rs.next())
				isOver = true;
			else
				isOver = false;

			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return isOver;
	}// compareOver() end
	public RefriVO radomGetRefriInfo(int no) {
		RefriVO vo = null;

		sb.setLength(0);
		sb.append("SELECT pno, code, pname, pdesc, brand, price, to_char(regdate, 'yyyy-mm-dd') regdate, energy, imgfile, door, volume, codename, codename2, pricegrade, volumegrade ");
		sb.append("FROM refri ");
		sb.append("WHERE pno = ? ");

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, no);

			rs = pstmt.executeQuery();
			rs.next();

			String pname = rs.getString("pname");
			int code = rs.getInt("code");
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

			vo = new RefriVO(no, code, pname, pdesc, brand, price, regdate, energy, imgfile, door, volume, codename, codename2, pricegrade, volumegrade);
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}// getRefriInfo() end
	
	public int counter() {
		sb.setLength(0);
		sb.append("SELECT COUNT(pno) co ");
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
}// class end