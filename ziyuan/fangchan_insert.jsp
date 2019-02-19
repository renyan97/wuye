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
		   String build_type= request.getParameter("build_type");
	       String build_number = request.getParameter("build_number");
	       String louceng = request.getParameter("louceng");
		   String house_type = request.getParameter("house_type");
		   String home_num = request.getParameter("home_num");
		   String house_area = request.getParameter("house_area");
		   String state= request.getParameter("state");
		   String use = request.getParameter("uses");
	  	  Statement sql = con.createStatement();
          sql.executeUpdate("insert into ziyuan(build_type, build_number,louceng,house_type,home_num,house_area,state,uses) values('"+ build_type + "','"+ build_number + "','"+ louceng + "','"+ house_type +"','"+ home_num +"','"+ house_area + "','"+ state + "','"+ use + "');");
		  
        response.setHeader("refresh","0;url=fangchan_menue.jsp");
	  }
	  catch (SQLException e) {
      out.print(e);
  }
%>

</body>
</html>
