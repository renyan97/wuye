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
<body background="" style="background-size:cover;">
	   <%String id0= request.getParameter("id");%> 
 <div class='r1'>
	        <p class='r2'>门牌号</p>
			<p class='r2'>用途</p>
			<p class='r2'>状态</p><p></p>
</div>
 

   <form method="post" action="fangchan_xiugai2.jsp" class='r5'>
	<input type="text" name="home_num">
    <input type="text" name="state">
	<input type="text" name="uses">
    <input type="submit" value="修改">
  </form>


</body>
</html>
