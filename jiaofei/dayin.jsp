<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>

<!doctype html>
<html lang="en">
<head>
	
  <meta charset="UTF-8">
  <title></title>
    <script src="../jQuery.js"></script>
<script src="../layer.js"></script>
  <script>
	 
</script>
	  
</head>
<style type="text/css"> 
 .r1
 {
	 font-size:30px;
	 margin-left: 200px;
 }
 .r2
 {
	 display: flex;
	 flex-direction: row;
	 height:20px;
 }
 .r3
 {
	 margin-left: 100px;
 }
 .r4
 {
	 margin-left: 300px;;
 }
 .r44
 {
	 margin-left: 500px;
 }
 .r5
 {
	 margin-left: 20px;
 }
 .r6
 {
	 margin-left: 20px;
 }
 .r7
 {
	 width:150px;
	 border: 1px solid #999;
	 display: flex;
	  justify-content: center;/*水平居中*/
	   align-items:center;/*垂直居中*/
	   margin-left: 100px;
 }
 .r8
 {
	  width:200px;
	 border: 1px solid #999;
	 display: flex;
	  justify-content: center;/*水平居中*/
	   align-items:center;/*垂直居中*/
	  
 }
 .r9
 {
	  width:80px;
	 border: 1px solid #999;
	 display: flex;
	  justify-content: center;/*水平居中*/
	   align-items:center;/*垂直居中*/
	   
 }
 .r10
 {
	 margin-top: 0px;
	 display:flex;
	 flex-direction: row;
 }
 .r11
 {
	 margin-top: 20px;
 }
 .r12
 {
	 
	 width:150px;
	 height:50px;
	 border: 1px solid #999;
	 display: flex;
	  justify-content: center;/*水平居中*/
	   align-items:center;/*垂直居中*/
	   margin-left: 100px;
 }
  
 .r13
 {
	 
width:537px;
	 border: 1px solid #999;
	 display: flex;
	  justify-content: center;/*水平居中*/
	   align-items:center;/*垂直居中*/
	   
 }
 .r14
 {
	 margin-left: 100px;
 }
  .r15
  {
	  margin-left: 600px;
  }
</style>
<body >
     
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
		  String no= request.getParameter("id");
	  	  Statement sql = con.createStatement();
	  	   ResultSet rs0 = sql.executeQuery("select distinct dangan.name,ziyuan.build_number,guanli.num,guanli.no,guanli.Etime,guanli.name na from dangan,ziyuan,guanli where guanli.num="+no+" and ziyuan.home_num="+no+" and dangan.num="+no+" ;");
	  	   rs0.next();
	  	   String name=rs0.getString("name");
	  	   String bn=rs0.getString("build_number");
	  	   String num0=rs0.getString("num");
	  	   String no0=rs0.getString("no");
	  	   String time=rs0.getString("Etime");
	  	   String na0=rs0.getString("na");
	  	   String sss="no";
          ResultSet rs = sql.executeQuery("select distinct guanli.*,danjia.price p from  guanli,danjia where danjia.type=guanli.type and guanli.num="+no+"  and guanli.state='no' ;");
		   int s=0;
		   %>
         <div>
                <p Class='r1'>哈喽物业管理有限公司（收款收据）</p>
                <div Class='r2'><p Class='r3'>业户：<%=name%></p>                   <p Class='r44'>NO:<%=no0%></p></div>
                <div Class='r2'><p Class='r3'>小区：理工大小区</p> <p Class='r5'>楼号：<%=bn%></p> <p Class='r6'>房间：<%=num0%></p>    <p Class='r4'>日期:<%=time%></p></div>

                <table Class='r11'>
	                <tr Class='r10'>
		                   <td Class='r7'>月份</td>
			               <td Class='r8'>费用名称</td>
			               <td Class='r9'>数量</td>
			               <td Class='r9'>单价</td>
			               <td Class='r9'>金额</td>
			               <td Class='r9'>备注</td> 
	                </tr>
         <%
		  double ss=0;
		  while(rs.next())
		  {    ss=ss+rs.getDouble("price");
	          %>
			   <tr Class='r10'> 
			  <td Class='r7'><%out.print(rs.getString("Etime"));%></td> 
			  <td Class='r8'><% out.print(rs.getString("type"));%></td> 
			  <td Class='r9'><%out.print(rs.getString("degree"));%></td> 
		    	 <td Class='r9'><% out.print(rs.getString("p"));%></td> 
			  <td Class='r9'><%out.print(rs.getString("price"));%></td> 
			  <td Class='r9'><% out.print(rs.getString("state"));%></td>  
	           </tr>
		    
			 
	  <%
		   }%> <tr Class='r10'>
                	 <td Class='r12'>合计</td>
		             <td Class='r13'>应收:<%=ss%>元</td>
		           </tr>
		            
</table><p Class='r14'>微机员：系统管理员 收款人:<%=na0%> </p>  </div>
<button Class='r15'>打印</button>
  
		 
<%
	  } 
	  catch (SQLException e) {
      out.print(e);
  }
%>                 

</body>
</html>
              