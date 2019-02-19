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
	            left:50%;
	            top:50%;
	            transform:translate(-50%,-50%);
	         }
    </style>
</head>
<body>
	<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">  
	<img src="1.jpg" height="100%" width="100%" left:0; top:0;/>  
	</div>
	<div class="main">
	<form action="" method="post">
        <textarea name="txt" cols="50" rows="10"></textarea>
<br><br>
		<input type="submit" value="发布" style="width:60px;height:30px;" />
	</form>
	</div>
<div style="white-space: pre-wrap;">
	 <marquee behavior="scroll" direction="left" >

        通知：
<% 
    try
	  {
		   String text= request.getParameter("txt");
           out.println(text);
	  }
	  catch (Exception e) {
      out.print(e);
    }
    
%>
    </marquee></div>
</body>
</html>
