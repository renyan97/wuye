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
		   String type= request.getParameter("type");
		   String price= request.getParameter("price");
          sql.executeUpdate("insert into danjia(type,price) values('"+ type + "','"+price+"');");
        response.sendRedirect("system2.jsp");
	  }
	  catch (SQLException e) {
      out.print(e);
  }
%>

</body>
</html>
