<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title></title>
  
</head>
<body background="456.jpg"
style="background-repeat:no-repeat;
background-size:100% 120%;
background-attachment:fixed">

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
    String name = request.getParameter("name");
    String sex = request.getParameter("sex");
    String tel = request.getParameter("tel");
    String id = request.getParameter("id");
    String idCard = request.getParameter("idCard");
    String num = request.getParameter("num");


    sql.executeUpdate("insert into dangan(name,sex,tel,id,idCard,num) values('"
    	+ name + "', '"
    	+ sex + "', '"
    	+ tel + "', '"
    	+ id + "', '"
    	+ idCard +"'," 
    	+ num + ");");

    out.print("insert success...");
     }

    catch (SQLException e) {
    out.print(e);
  }

    response.setHeader("refresh","3;URL=sy.jsp");
 %>
  

    
</body>
</html>