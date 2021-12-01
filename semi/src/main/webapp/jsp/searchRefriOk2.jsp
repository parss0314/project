<%@page import="dao.recentlyViewedItemsDAO"%>
<%@page import="vo.recentlyViewedItemsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pname = request.getParameter("pname");
	String imgfile = request.getParameter("imgfile");
	Object idObj = session.getAttribute("id");
	String id = (String)idObj;
	boolean check = false;
	
	System.out.println(pname);
	System.out.println(imgfile);
	
// 	Object obj = session.getAttribute("rvo");
	recentlyViewedItemsDAO rdao = new recentlyViewedItemsDAO();
	recentlyViewedItemsVO rvo = rdao.selectRvd(id);
	
	if(rvo.getPname1() == null){
		rdao.updateRvd1(pname, imgfile, rvo.getId());
	}else if(rvo.getPname2() == null){
		rdao.updateRvd2(pname, imgfile, rvo.getId());
	}else if(rvo.getPname3() == null){
		rdao.updateRvd3(pname, imgfile, rvo.getId());
	}else if(rvo.getPname4() == null){
		rdao.updateRvd4(pname, imgfile, rvo.getId());
	}else if(rvo.getPname5() == null){
		rdao.updateRvd5(pname, imgfile, rvo.getId());
	}
	
	
	if(pname != null && imgfile != null ){
		String[] arrPname = {rvo.getPname1(), rvo.getPname2(), rvo.getPname3(), rvo.getPname4(), rvo.getPname5()};
		String[] arrImgfile = {rvo.getImgfile1(), rvo.getImgfile2(), rvo.getImgfile3(), rvo.getImgfile4(), rvo.getImgfile5()};

		
		if(arrPname[4] != null){
			
			// 이름 중복제거 처리
			for (int i = 0; i < arrPname.length-1; i++) {
				if(arrPname[arrPname.length-1].equals(pname)){						
					check = true;
					break;
				}else if(arrPname[i].equals(pname)) {
					for (int j = i; j < arrPname.length-1; j++) {
						arrPname[j] = arrPname[j+1];
					}
					arrPname[arrPname.length-1] = pname;
					check = true;
				}

			}
			
			// 이미지 중복제거 처리
			for (int i = 0; i < arrImgfile.length-1; i++) {
				if(arrImgfile[arrImgfile.length-1].equals(imgfile)){						
					check = true;
					break;
				}else if(arrImgfile[i].equals(imgfile)) {
					for (int j = i; j < arrImgfile.length-1; j++) {
						arrImgfile[j] = arrImgfile[j+1];
					}
					arrImgfile[arrImgfile.length-1] = imgfile;
					check = true;
				}

			}
			
			if(!check){
				for(int i = 0; i < arrImgfile.length; i++) {
					
					if(i == arrImgfile.length-1){
						arrPname[i] = pname;
						arrImgfile[i] = imgfile;
					}else{
						arrImgfile[i] = arrImgfile[i+1];
						arrPname[i] = arrPname[i+1];
						
					}
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
		}

		rvo.setPname1(arrPname[0]);
		rvo.setPname2(arrPname[1]);
		rvo.setPname3(arrPname[2]);
		rvo.setPname4(arrPname[3]);
		rvo.setPname5(arrPname[4]);


		session.setAttribute("rvo", rvo);
		out.print(arrPname[4]);
		out.print(arrImgfile[4]);
		out.print(arrImgfile.length);
	}
%>