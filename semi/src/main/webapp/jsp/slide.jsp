<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <style>
    *{margin:0;padding:0;}
    ul,li{list-style:none;}
    .slide{height:300px;overflow:hidden;position:relative;}
    .slide li{position:absolute;left:0;right:0;top:0;bottom:0;opacity:0;transition:1s;}
    .slide input{display:none;}
    .slide .bullet{position:absolute;bottom:20px;left:0;right:0;text-align:center;z-index:10;}
    .slide .bullet label{width:10px;height:10px;border-radius:10px;border:1px solid #fff;display:inline-block;background:#fff;font-size:0;transition:0.5s;cursor:pointer;}
    /* 슬라이드 조작 */
    #pos1:checked ~ ul li:nth-child(1),
    #pos2:checked ~ ul li:nth-child(2),
    #pos3:checked ~ ul li:nth-child(3),
    #pos4:checked ~ ul li:nth-child(4),
    #pos5:checked ~ ul li:nth-child(5),
    #pos6:checked ~ ul li:nth-child(6){opacity:1;}
    /* bullet 조작 */
    #pos1:checked ~ .bullet label:nth-child(1),
    #pos2:checked ~ .bullet label:nth-child(2),
    #pos3:checked ~ .bullet label:nth-child(3),
    #pos4:checked ~ .bullet label:nth-child(4),
    #pos5:checked ~ .bullet label:nth-child(5),
    #pos6:checked ~ .bullet label:nth-child(6){background:#666;}
  </style>
</head>
<body>
  <div class="slide">
    <input type="radio" name="pos" id="pos1" checked>
    <input type="radio" name="pos" id="pos2">
    <input type="radio" name="pos" id="pos3">
    <input type="radio" name="pos" id="pos4">
    <input type="radio" name="pos" id="pos5">
    <input type="radio" name="pos" id="pos6">
    <ul>
      <li><img src="../images/banner1.png" alt="" ></li>
      <li><img src="../images/banner2.png" alt="" /></li>
      <li><img src="../images/banner3.png" alt="" /></li>
      <li><img src="../images/banner4.png" alt="" /></li>
      <li><img src="../images/banner5.png" alt="" /></li>
      <li><img src="../images/banner6.png" alt="" /></li>
    </ul>
    <p class="bullet">
      <label for="pos1">1</label>
      <label for="pos2">2</label>
      <label for="pos3">3</label>
      <label for="pos4">4</label>
      <label for="pos5">5</label>
      <label for="pos6">6</label>
    </p>
  </div>
</body>