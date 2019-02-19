
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
     flex-direction: column;
 }
  .r2{
	 float:left;
	 height:25px;
	 width:100px;
	  
  }
  .r3{
	  
	   top:50px;
	   display: flex;
	   flex-direction: row;
    
  }
  
   .r4{
   
      width:90%;
	  margin-left: 0px;
	  border-bottom: 2px solid #999;
	  margin-top: 15px;
  }
  .r5{  
	  height:40px;
  }
   .r6{  
	   height:50px;
	   background: linear-gradient(to right, #B4CDCD , #B0C4DE); /* 标准的语法 */
       
  }
  .r7
  {
	  width:850px;
	  margin-left: 0px;
	  border-bottom: 2px solid #999;
	  
  }
  .r8
  {
	   
	  margin-top: 15px;
	  color: blue;
  }
  .r9
  {
	  margin-left: 20px;
	  margin-top: 15px;
	  color: red;
  }
  .r10
  {
	  background-color: white;
	  width:100px;
	  height:20px;
	  margin-left: 20px;
	  margin-top: 15px;
	  display: flex;
      color: blue;
  }
  .r11
  {
	  width:20px;
	 height:20px;
  }
  .r12
  {
	    display: flex;
        flex-direction: row;
  }
  .r13
  {
	  margin-top: 15px;
	  margin-left: 500px;
  }
</style>
<body >

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
		 
	  	  Statement sql = con.createStatement();
	  	  String name = request.getParameter("name");
          ResultSet rs = sql.executeQuery("select * from weixiu where name="+name+";");
		   %>
  
		   <div Class='r1'>

			   <div Class='r6'>
				   
          <div Class='r4'></div>
		      </div>
		      
			  <div Class='r5'>
		    <p class='r2'>楼号</p>
			<p class='r2'>门牌号</p>
			<p class='r2'>户主姓名</p>
			<p class='r2'>维修时间</p>
			<p class='r2'>维修员</p>
			<p class='r2'>备注</p>
			 
			 </div>
			  
			 <div Class='r7'></div>
		  
 
		   <%
		  while(rs.next())
		  {   
	          %>
			  <div  Class='r3' >
			 <p Class='r2'>
			  <%out.print(rs.getString("build_num"));%> </p>
			<p Class='r2'>
			  <% out.print(rs.getString("home_num"));%></p>
			 <p Class='r2'>
			  <%out.print(rs.getString("name"));%></p>
			  <p Class='r2'>
			  <%out.print(rs.getString("time"));%></p>
			 <p Class='r2'>
			  <%out.print(rs.getString("man"));%></p>
			 <p Class='r2'>
			  <%out.print(rs.getString("remark"));%></p>
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
              
