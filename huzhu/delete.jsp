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
  // 加载mysql的驱动
  try { 
    Class.forName("com.mysql.jdbc.Driver");
  }
  catch(Exception e) {
    out.print(e);
  }

  // 跟数据库建立连接，并用sql语句查询，遍历得到的记录集
  try {
    String uri= "jdbc:mysql://localhost:3306/wuye";
    String user="root";
    String password="123456";

    Connection con = DriverManager.getConnection(uri, user, password);
    Statement sql = con.createStatement();
    String num=request.getParameter("num");
    sql.executeUpdate("delete from dangan where num =\'"+ num+"\';");
    out.print("delete success...3秒后跳转");

  }
  catch (SQLException e) {
    out.print(e);
  }

	response.setHeader("refresh","3;URL=sy.jsp");
	%>
  
</body>
</html>