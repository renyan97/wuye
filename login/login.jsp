<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>


<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title></title>
	<style>
	    .main{
	            text-align:center;
	            position: absolute;
	            left:23.2%;
	            top:48%;
	            transform:translate(-50%,-50%);
	         }
    </style>
</head>
<body>
	<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">  
	<img src="2.jpg" height="100%" width="100%" left:0; top:0;/>  
	</div>
  <form method="post" action="loginresult.jsp">
	<div class="main">
    账户：
    <input type="text" name="id" style="width:200px;height:30px;" />
    <br>
	    <br>
    密码：
    <input type="password" name="password" style="width:200px;height:30px;"/>
	<br>
		<br>
    <input type="submit" value="登录">
	    	<a href="zhuce.jsp">注册</a>
	</div>
  </form>
	
</body>
</html>