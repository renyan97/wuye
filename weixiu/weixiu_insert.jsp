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
		  String home_num = request.getParameter("home_num");
		  String name="";
          ResultSet rs = sql.executeQuery("select * from dangan ;");
          while(rs.next())
          {
	          if(home_num.equals(  rs.getString("num")))
	          {
		          name=rs.getString("name");
	          }
          }
           
		   String build_num= request.getParameter("build_num");
	        
		    
		   String time= request.getParameter("time");
		   String man = request.getParameter("man");
		   String remark = request.getParameter("remark");
          sql.executeUpdate("insert into weixiu(build_num,home_num,name,time,man,remark) values('"+ build_num + "','"+ home_num + "','"+name+"','"+ time +"','"+ man + "','"+ remark + "');");
        response.sendRedirect("weixiuguanli.jsp");
	  }
	  catch (SQLException e) {
      out.print(e);
  }
%>

</body>
</html>
