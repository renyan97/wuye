<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title></title>
	 <style type="text/css">
	  .main{
		    	text-align:center;
	            position: absolute;
	            left:50%;
	            top:30%;
	            transform:translate(-50%,-50%);
	           
	         }
	</style>
</head>
<body background="456.jpg"
style="background-repeat:no-repeat;
background-size:100% 120%;
background-attachment:fixed">
<%
	try{
		Class.forName("com.mysql.jdbc.Driver");
	}
	catch(Exception e){
		out.print(e);
	}
	try {
    String uri= "jdbc:mysql://localhost:3306/wuye";
    String user="root";
    String password="123456";

    Connection con = DriverManager.getConnection(uri, user, password);
    Statement sql = con.createStatement();
   
    String num = request.getParameter("num");
       
    ResultSet rs = sql.executeQuery("select * from dangan where num =\'"+ num+"\';");
    %>

     <div class="main">
	    <font size=5 face="华文新魏" center>查询结果</font>
    <table  border="1" width="500">
    <tr>
    <th>户主姓名</th>
    <th>性别</th>
    <th>电话</th>
    <th>户主账号</th>
    <th>身份证号</th>
    <th>门牌号</th>
    <th>修改</th>
    <th>删除</th>
    </tr>
<%

    //out.println("<table>");
    // 记录集中有个叫游标(cursor)的东西，调一次next，游标就指向记录集中的下一条记录
    // 游标刚开始指向记录集中第一条记录之前的位置，调一次之后，才指向第一条记录
    
    while(rs.next())
    {out.println("<tr>");
      
      out.println("<td>");
      out.println(rs.getString("name"));
      out.println("</td>");

      out.println("<td>");
      out.println(rs.getString("sex"));
      out.println("</td>");
      
      out.println("<td>");
      out.println(rs.getString("tel"));
      out.println("</td>");

      out.println("<td>");
      out.println(rs.getString("id"));
      out.println("</td>");

      out.println("<td>");
      out.println(rs.getString("idCard"));
      out.println("</td>");

      out.println("<td>");
      out.println(rs.getString("num"));
      out.println("</td>");
 
      out.println("<td>");
 %>
       
  <%
      out.println("</td>");

      out.println("<td>");
 %>
       
      <%
      out.println("</td>");
      
      out.println("</tr>");
  }
}
  catch (SQLException e) {
    out.print(e);
  }
%>
</table>
  <p>
   <a href="shouye.jsp"> 返回首页</a>

</body>
</html>