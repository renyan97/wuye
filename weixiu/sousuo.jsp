<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title></title>
</head>
<style type="text/css"> 
 .r1{
 
	   display: flex;
    justify-content:center;
    align-items:Center;
 }
  .r2{
	 float:left;
	 height:30px;
	 width:100px;
	  background-color: #87CEEB;
	   display: flex;
	   justify-content: center;/*水平居中*/
align-items:center;/*垂直居中*/

	   
  }
  .r22
  {
	 float:left;
	 height:30px;
	 width:100px;
	 background-color: #AFEEEE;
	  display: flex;
	   justify-content: center;/*水平居中*/
	   align-items:center;/*垂直居中*/
  }
   
  
  .r3{
	   position: relative;
	   top:20px;
	   display: flex;
    justify-content:center;
    align-items:Center;
  }
   .r4{
  position:relative;
  float:left;
  margin-left:150rpx;
  width:150px;
   
   
  }
  .r5{ position: relative;
	   top:50px;
	   display: flex;
    justify-content:center;
    align-items:Center;
  }
   .r6{ position: relative;
	  margin-top:20px;
	   
	   display: flex;
    justify-content:center;
    align-items:Center;
  }
   .r8
  {
	   
	  
	  color: blue;
  }
  .r9
  {
	   
	  color: red;
  }
    .tongji
  {
	  width:900px;
	  margin-top: 30px;
	  margin-left: 30px;
 background-color: #AFEEEE;
	  display: flex;
	   justify-content: center;/*水平居中*/
	   align-items:center;/*垂直居中*/
	  
  }
</style>
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
		 String num= request.getParameter("id");
	  	  Statement sql = con.createStatement();
          ResultSet rs = sql.executeQuery("select *from weixiu where home_num='"+num+"';");
		   int s=0;
		   %>
		   <div>
		<div class='r1'>
		    <p class='r2'>楼号</p>
			<p class='r22'>门牌号</p>
			<p class='r2'>户主姓名</p>
			<p class='r22'>维修时间</p>
			<p class='r2'>维修员</p>
			<p class='r22'>备注</p>
		   </div>
	<script type="text/javascript">

		//删除

		function deleteJobDetail(){
     if(window.confirm('你确定要删除吗')){
          //后台删除数据方法
           return true;
      }else{
          return false;
      }
  }
</script>
		   <%int tongji=0;
		  while(rs.next())
		  {
			  tongji=tongji+1;   %>
			  <div class='r3'>
			  <p class='r2'>
			  <%out.print(rs.getString("build_num"));%></p>
			  <p class='r22'>
			  <% out.print(rs.getString("home_num"));%></p>
			  <p class='r2'>
			  <%out.print(rs.getString("name"));%></p>
			  <p class='r22'>
			  <%out.print(rs.getString("time"));%></p>
			  <p class='r2'>
			  <%out.print(rs.getString("man"));%></p>
			  <p class='r22'>
			  <%out.print(rs.getString("remark"));%></p>
			 
 

			  <p Class='r2'>
			 <a Class='r8' href='weixiu_xiugai.jsp?id=<%=rs.getString("home_num")%>&&id1=<%=rs.getString("build_num")%> '>修改</a>
			 <a Class='r9' href='weixiu_shanchu.jsp?id=<%=rs.getString("home_num")%>'>删除</a></p>
			  </div>
			 <%
		   }%>
		  
 
		   </div> <div class='tongji'>总计<%=tongji%>条记录</div>
<%
	  }
	  catch (SQLException e) {
      out.print(e);
  }
%>

</body>
</html>
