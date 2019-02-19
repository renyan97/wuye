<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title></title>
</head>
<style type="text/css"> 
 .r1{
 
	   display: flex;
    justify-content:center;
    align-items:Center;
 }
  .r2{
	 float:left;
	 width:150px;
	 color: blue;
  }
  .r3{
	   position: relative;
	   top:50px;
	   display: flex;
    justify-content:center;
    align-items:Center;
  }
   .r4{
  position:relative;
  float:left;
  width:150px;
  }
  .r5{ position: relative;
	   top:50px;
	   display: flex;
    justify-content:center;
    align-items:Center;
  }
  
</style>
<body background="beijing.jpg" style="background-size:cover;">
<div class='r1'>
		    <p class='r2'>类型</p>
			<p class='r2'>单价</p>
		   </div>
	 <form method="post" action="system_danjiaxiugai1.jsp" class='r5'>
    <input type="text" name="id"  value=<%=request.getParameter("id")%>>
	<input type="text" name="price" >
    <input type="submit" value="修改"  >
  </form>


</body>
</html>
