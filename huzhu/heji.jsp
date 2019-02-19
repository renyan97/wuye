<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>


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
	   .search{
		        text-align:center;
		        top:10%;
		   }      
	</style>
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
    ResultSet rs = sql.executeQuery("select * from dangan;");

 %>
     <div class="search">
    <form method="post" action="search1.jsp">
	<input type="text" name="num" placeholder="按门牌号搜索">
	<input type="submit" value="搜索">
    </form>
    </div>
   <div class="main">
	    <font size=5 face="华文新魏">业主信息</font>
    <table  border="1" width="1000">
    <tr>
    <th>户主姓名</th>
    <th>户主性别</th>
    <th>户主电话</th>
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
      <a href='inupdate.jsp?num=<%=rs.getString("num")%>'><button>修改</button></a>
      <%
      out.println("</td>");

    out.println("<td>");
 %>
      <a href='delete.jsp?num=<%=rs.getString("num")%>'><button>删除</button></a>
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
     <a href="shouye.jsp"><button>返回首页</button></a>
    </body>
    </html>

