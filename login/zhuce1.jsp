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
		  String name= request.getParameter("name");
		   String id= request.getParameter("id");
	       String passwd = request.getParameter("password");
	  	  Statement sql = con.createStatement();
          sql.executeUpdate("insert into users(name,id,password,status) values('"+ name + "','"+ id +"','"+ passwd + "',0 );");
		   out.print("注册成功,3秒后返回登录页面");
        response.setHeader("refresh","3;url=login.jsp");
	  }
	  catch (SQLException e) {
      out.print(e);
  }
%>


</body>
</html>

