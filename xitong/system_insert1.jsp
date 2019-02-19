<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>

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
		  Statement sql = con.createStatement();
		  String build_num= request.getParameter("build_num");
		   String floor= request.getParameter("floor");
		   String price= request.getParameter("price");
          sql.executeUpdate("insert into dianti(build_num,floor,price) values('"+ build_num +"','"+ floor + "','"+ price +"');");
          response.sendRedirect("system.jsp");
	  }
	  catch (SQLException e) {
      out.print(e);
  }
%>

</body>
</html>
