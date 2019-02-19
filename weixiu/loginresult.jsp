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
    String pwd="123456";

    Connection con = DriverManager.getConnection(uri, user, pwd);
    Statement sql = con.createStatement();
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    
    ResultSet rs = sql.executeQuery("select * from denglu;");

    boolean m=false;
   while(rs.next())
    {
	    if(name.equals(rs.getString("user"))&&password.equals(rs.getString("password")))
        {
	        m=true;
	        if(m&&rs.getBoolean("status")){
		   		response.sendRedirect("administrator.jsp");
        	}
        	else if(m){
				response.sendRedirect("search.jsp");
        	}	
    	}   
	}
	 if(m==false){
		out.println("你输入的用户名不存在，或密码不匹配");
%>
    		<a href="login.jsp">重新登录</a>
<%
	}
   }catch (SQLException e) {
    	out.print(e);
  	}

%>
</body>
</html>