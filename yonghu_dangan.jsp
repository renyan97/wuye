<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title></title>
</head>
<body>

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
		 String name= request.getParameter("name");
	  	  Statement sql = con.createStatement();
          ResultSet rs = sql.executeQuery("select *from dangan where name='"+name+"';");
		   %>
			   
		   <div class='r1'>
		    <p class='r2'>户主姓名</p>
			<p class='r22'>姓别</p>
			<p class='r2'>户主电话</p>
			<p Class='r22'>户主账号</p>
			<p Class='r222'>身份证号 </p>
			<p Class='r22'>门牌号 </p>
			<p Class='r2'>操作 </p>
		 
		   </div>
		  <%
		  while(rs.next())
		  {   
	          %>
			  <div class='r3'>
			  <p Class='r2'>
			  <%out.print(rs.getString("name"));%> </p>
			<p Class='r22'>
			  <% out.print(rs.getString("sex"));%></p>
			 <p Class='r2'>
			  <%out.print(rs.getString("tel"));%></p>
			  <p Class='r22'>
			  <%out.print(rs.getString("id"));%></p>
			 <p Class='r222'>
			  <%out.print(rs.getString("idCard"));%></p>
			 <p Class='r22'>
			  <%out.print(rs.getString("num"));%></p> 
			
			 
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
