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
    
 }
 
  .r2{
	 float:left;
	 height:30px;
	 width:100px;
	  background-color: #87CEEB;
	   display: flex;
	   justify-content: center;/*水平居中*/
align-items:center;/*垂直居中*/

	   
  }
  .r22
  {
	 float:left;
	 height:30px;
	 width:100px;
	 background-color: #AFEEEE;
	  display: flex;
	   justify-content: center;/*水平居中*/
	   align-items:center;/*垂直居中*/

  }
  .r3{
	  
	   height:31px;
	   display: flex;
	   flex-direction: row;
    margin-top: 1 px;
  }
   .r4{
  position:relative;
  float:left;
  margin-left:150rpx;
  width:150px;
   color: blue;
   
  }
  .r5{ position: relative;
	   top:50px;
	   display: flex;
    justify-content:center;
    align-items:Center;
  }
   .r6{ position: relative;
	  margin-top:20px;
	   
	   display: flex;
    justify-content:center;
    align-items:Center;
  }
  
</style>
<body background="beijing.jpg" style="background-size:cover;">

<%
      try
	  {
		  Class.forName("com.mysql.jdbc.Driver");
		  
	  }
	  catch(Exception e)
	  {
		  out.print(e);
	  }
	  
	  try
	  {
		  String url="jdbc:mysql://localhost:3306/wuye";
		  String user="root";
		  String pwd="123456";
		  Connection con=DriverManager.getConnection(url,user,pwd);
		 String id= request.getParameter("id");
	  	  Statement sql = con.createStatement();
          ResultSet rs = sql.executeQuery("select *from dianti where floor='"+id+"';");
		   %>
			   
		   <div class='r1'>
		    <p class='r2'>楼号</p>
			<p class='r22'>楼层</p>
			<p class='r2'>电梯费
		 
			 <a href='system.jsp'> </a>
		   </div>
		  <%
		  while(rs.next())
		  {   
	          %>
			  <div class='r3'>
			  <p class='r2'>
			  <%out.print(rs.getString("build_num"));%></p>
			  <p class='r22'>
			  <% out.print(rs.getString("floor"));%></p>
			  <p class='r2'>
			  <%out.print(rs.getString("price"));%></p>
			 
			  </div>
			 <%
		   }%>
		  
 
		   </div>
<%
	  }
	  catch (SQLException e) {
      out.print(e);
  }
%>

</body>
</html>
