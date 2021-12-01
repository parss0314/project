<%@page import="vo.RefriVO"%>
<%@page import="dao.RefriDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pEnergy = null;
	String pBrand = null;
	String pDoor = null;
	String pPrice = null;
	String pVolume = null;
	
	Object energyObj = session.getAttribute("energyArr");
	Object brandObj = session.getAttribute("brandArr");
	Object doorObj = session.getAttribute("doorArr");
	Object priceObj = session.getAttribute("priceArr");
	Object volumeObj = session.getAttribute("volumeArr");
		
	ArrayList<String> energyArr = (ArrayList<String>)energyObj;
	ArrayList<String> brandArr = (ArrayList<String>)brandObj;
	ArrayList<String> doorArr = (ArrayList<String>)doorObj;
	ArrayList<String> priceArr = (ArrayList<String>)priceObj;
	ArrayList<String> volumeArr = (ArrayList<String>)volumeObj;
	
	if(request.getParameter("energy") != null){
		pEnergy = request.getParameter("energy");
	}else if(request.getParameter("brand") != null){
		pBrand = request.getParameter("brand");
	}else if(request.getParameter("price") != null){
		pPrice =  request.getParameter("price");
	}else if(request.getParameter("volume") != null){
		pVolume =  request.getParameter("volume");
	}else if(request.getParameter("door") != null){
		if(request.getParameter("door").equals("1개")){
			pDoor = "1";		
		}else if(request.getParameter("door").equals("2개")){
			pDoor = "2";	
		}else if(request.getParameter("door").equals("3개")){
			pDoor = "3";	
		}else if(request.getParameter("door").equals("4개")){
			pDoor = "4";	
		}
	}else if(request.getParameter("doorreset").equals("doorreset")){
		doorArr.clear();
	}
	
// 	System.out.println(pEnergy);
// 	System.out.println(pBrand);
// 	System.out.println(pDoor);
	if(pEnergy != null && pEnergy.equals("energyreset")){
		energyArr.clear();
	}else if(pBrand != null && pBrand.equals("brandreset")){
		brandArr.clear();
	}else if(pPrice != null && pPrice.equals("pricereset")){
		priceArr.clear();
	}else if(pVolume != null && pVolume.equals("volumereset")){
		volumeArr.clear();
	}
	
//////////////////////////////////////////////////////////////////////////
	// 에너지
	String energyTemp = null;
	String energyVal = " ";
	
	// 똑같은걸 클릭했을때 삭제
	int energyIndex = energyArr.indexOf(pEnergy);
	if(pEnergy != null && energyIndex == -1 && !pEnergy.equals("energyreset")){
		energyArr.add(pEnergy);		
	}else if(energyIndex != -1 ){
		energyArr.remove(energyIndex);
	}
	
	
	if(energyArr.size() != 0){
		for(int i = 0; i < energyArr.size(); i++){
			if(i == 0){
				energyVal = "WHERE energy = " + energyArr.get(i);			
			}else{
				energyVal = energyVal + " OR energy = " + energyArr.get(i);
			}
		}
	}
	
	
// 	System.out.println("energyIndex:   "+energyIndex);
// 	System.out.println("energyArr:     "+energyArr);
	
	
	// 브랜드
	String brandTemp = null;
	String brandVal = " ";
	
	int brandIndex = brandArr.indexOf(pBrand);
	if(pBrand != null && brandIndex == -1 && !pBrand.equals("brandreset")){
		brandArr.add(pBrand);		
	}else if(brandIndex != -1 ){
		brandArr.remove(brandIndex);
	}
	
	if(brandArr.size() != 0){
		for(int i = 0; i < brandArr.size(); i++){
			if(i == 0){
				brandVal = "WHERE brand = " + brandArr.get(i);			
			}else{
				brandVal = brandVal + " OR brand = " + brandArr.get(i);
			}
		}
	}
	
// 	System.out.println("brandIndex:    "+brandIndex);
// 	System.out.println("brandArr:      "+brandArr);
// 	System.out.println("pBrand:      "+pBrand);
	
	
	// 도어
	String doorVal = " ";
	int doorIndex = doorArr.indexOf(pDoor);
	if(pDoor != null && doorIndex == -1 && !pDoor.equals("doorreset")){
		doorArr.add(pDoor);		
	}else if(doorIndex != -1 ){
		doorArr.remove(doorIndex);
	}	
	if(doorArr.size() != 0){
		for(int i = 0; i < doorArr.size(); i++){
			if(i == 0){
				doorVal = "WHERE door = " + doorArr.get(i);			
			}else{
				doorVal = doorVal + " OR door = " + doorArr.get(i);
			}
		}
	}
	
	
	// 가격
	String priceVal = " ";
	int priceIndex = priceArr.indexOf(pPrice);
	if(pPrice != null && priceIndex == -1 && !pPrice.equals("pricereset")){
		priceArr.add(pPrice);		
	}else if(priceIndex != -1 ){
		priceArr.remove(priceIndex);
	}	
	if(priceArr.size() != 0){
		for(int i = 0; i < priceArr.size(); i++){
			if(i == 0){
				priceVal = "WHERE pricegrade = " + priceArr.get(i);			
			}else{
				priceVal = priceVal + " OR pricegrade = " + priceArr.get(i);
			}
		}
	}
	
	
// 	System.out.println("priceIndex:    "+priceIndex);
// 	System.out.println("priceArr:      "+priceArr);
// 	System.out.println("pPrice:      "+pPrice);
// 	System.out.println("priceVal:      "+priceVal);
	

	// 사이즈
		// 가격
	String volumeVal = " ";
	int volumeIndex = volumeArr.indexOf(pVolume);
	if(pVolume != null && volumeIndex == -1 && !pVolume.equals("volumereset")){
		volumeArr.add(pVolume);		
	}else if(volumeIndex != -1 ){
		volumeArr.remove(volumeIndex);
	}	
	if(volumeArr.size() != 0){
		for(int i = 0; i < volumeArr.size(); i++){
			if(i == 0){
				volumeVal = "WHERE volumegrade = " + volumeArr.get(i);			
			}else{
				volumeVal = volumeVal + " OR volumegrade = " + volumeArr.get(i);
			}
		}
	}
	
	
// 	System.out.println("volumeIndex:    "+volumeIndex);
// 	System.out.println("volumeArr:      "+volumeArr);
// 	System.out.println("pVolume:      "+pVolume);
// 	System.out.println("volumeVal:      "+volumeVal);






	
	RefriDAO dao = new RefriDAO();
	ArrayList<RefriVO> refriArr = dao.searchEa(energyVal, brandVal, doorVal, priceVal, volumeVal);
	
			
	System.out.println(refriArr.size());
// 	System.out.println(doorVal);
// 	for(RefriVO x: refriArr){
// 		System.out.println(x.getPname());
	session.setAttribute("tvoArr", refriArr);
	session.setAttribute("energyArr", energyArr);
	session.setAttribute("brandArr", brandArr);
	session.setAttribute("doorArr", doorArr);

%>