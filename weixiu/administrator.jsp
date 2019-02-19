<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title></title>
	<!--<style>
	  nav{
		  line-height:30px;
		  background-color:#eeeeee;
		  height:500px;
          width:120px;
          float:left;
          padding:5px;	
	  }
  </style>-->
  <style>
	    .main{
	            text-align:center;
	            position: absolute;
	            left:50%;
	            top:50%;
	            transform:translate(-50%,-50%);
	         }
    </style>
</head>
<body>
	<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">  
	<img src="pic.jpg" height="100%" width="100%" left:0; top:0;/>  
	</div>
	<div class="main">
		<br>
	<a href="input.jsp"><font color="white" size="5">业主管理</font></a>
	<br><br>
	<a href="delete.jsp"><font color="white" size="5">收费管理</font></a>
	<br><br>
    <a href="weixiuguanli.jsp"><font color="white" size="5">维修管理</font></a>
    <br><br>
    <a href="system.jsp"><font color="white" size="5">系统管理</font></a>
    <br><br>
	<a href="display.jsp"><font color="white" size="5">房产管理</font></a>
	<br>
		</div>
</body>
</html>