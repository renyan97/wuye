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
		 String home_num= request.getParameter("id");
	  	 Statement sql = con.createStatement();
        sql.executeUpdate("delete from ziyuan where home_num="+home_num+";");
		 response.setHeader("refresh","0;url=fangchan_main.jsp");
	  }
	  catch (SQLException e) {
      out.print(e);
  }
%>

</body>
</html>
