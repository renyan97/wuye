<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title></title>
</head>
<body  >

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
		  String g_num= request.getParameter("g_num");
	           String g_type = request.getParameter("g_type");
	           String g_no= request.getParameter("g_no");
	           String g_Etime = request.getParameter("g_Etime");
	            String g_degree= request.getParameter("g_degree");
	           String g_price = request.getParameter("g_price");
		   String g_name = request.getParameter("g_name");
		   String g_state = request.getParameter("g_state");
	  	  Statement sql = con.createStatement();
          sql.executeUpdate("update guanli set num=\'"+g_num+"\',type=\'"+g_type+"\',no=\'"+g_no+"\',Etime=\'"+g_Etime+"\',degree=\'"+g_degree+"\',price=\'"+g_price+"\',name=\'"+g_name+"\',state=\'"+g_state+"\' where no=\'"+g_no+"\';");
		   //out.print("修改成功,3秒后返回主页面");
         response.setHeader("refresh","0;url=inform.jsp");
	  }
	  catch (SQLException e) {
      out.print(e);
  }
%>

</body>
</html>
