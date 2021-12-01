<%@page import="dao.recentlyViewedItemsDAO"%>
<%@page import="vo.recentlyViewedItemsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pno = request.getParameter("pno");
	String pname = request.getParameter("pname");
	String imgfile = request.getParameter("imgfile");
	
	Object obj = session.getAttribute("rvo");
	recentlyViewedItemsVO rvo = (recentlyViewedItemsVO)obj;
	recentlyViewedItemsDAO rdao = new recentlyViewedItemsDAO();
	
	
	if(pno != null && pname != null && imgfile != null ){
		String[] arrPname = {rvo.getPname1(), rvo.getPname2(), rvo.getPname3(), rvo.getPname4(), rvo.getPname5()};
		String[] arrImgfile = {rvo.getImgfile1(), rvo.getImgfile2(), rvo.getImgfile3(), rvo.getImgfile4(), rvo.getImgfile5()};
		
		// 이름 중복제거 처리
		for (int i = 0; i < arrPname.length-1; i++) {
			if(arrPname[i].equals(pname)) {
				for (int j = i; j < arrPname.length-1; j++) {
					arrPname[j] = arrPname[j+1];
				}
				arrPname[arrPname.length-1] = pname;
			}
		}
		
		// 이미지 중복제거 처리
		for (int i = 0; i < arrImgfile.length-1; i++) {
			if(arrImgfile[i].equals(imgfile)) {
				for (int j = i; j < arrImgfile.length-1; j++) {
					arrImgfile[j] = arrImgfile[j+1];
				}
				arrImgfile[arrImgfile.length-1] = imgfile;
			}
		}
		
		rdao.updateRvd1(arrPname[0], arrImgfile[0], rvo.getId());
		rdao.updateRvd2(arrPname[1], arrImgfile[1], rvo.getId());
		rdao.updateRvd3(arrPname[2], arrImgfile[2], rvo.getId());
		rdao.updateRvd4(arrPname[3], arrImgfile[3], rvo.getId());
		rdao.updateRvd5(arrPname[4], arrImgfile[4], rvo.getId());
		
		rvo.setImgfile1(arrImgfile[0]);
		rvo.setImgfile2(arrImgfile[1]);
		rvo.setImgfile3(arrImgfile[2]);
		rvo.setImgfile4(arrImgfile[3]);
		rvo.setImgfile5(arrImgfile[4]);

		rvo.setPname1(arrPname[0]);
		rvo.setPname2(arrPname[1]);
		rvo.setPname3(arrPname[2]);
		rvo.setPname4(arrPname[3]);
		rvo.setPname5(arrPname[4]);


		session.setAttribute("rvo", rvo);
	}
	
	
	

%>
