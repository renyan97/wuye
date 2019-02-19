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
	  
	  $('#test1').on('click', function(){
    layer.msg('hello');
  });

	   function openwin() {
    
    window.open ("guanli_tianjia.jsp", "newwindow", "height=400, width=600, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, status=no")
    
    //写成一行
    
    }
  

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
	  
</head>
<style type="text/css"> 
 .r1{
 
	   display: flex;
     flex-direction: column;
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
	  
	   height:31px;
	   display: flex;
	   flex-direction: row;
    margin-top: 1 px;
  }
  
   .r4{
   
      width:90%;
	  margin-left: 0px;
	  border-bottom: 2px solid #999;
	  margin-top: 15px;
  }
  .r5{  
	  height:40px;
  }
   .r6{  
	   height:50px;
	   background: linear-gradient(to right, #B4CDCD , #B0C4DE); /* 标准的语法 */
       
  }
  .r7
  {   margin-top: 10px;
	  width:900px;
	  margin-left: 0px;
	  border-bottom: 2px solid #999;
	  
  }
  .r8
  {
	   
	  
	  color: blue;
  }
  .r9
  {
	   
	  color: red;
  }
  .r10
  {
	  background-color: white;
	  width:100px;
	  height:20px;
	  margin-left: 20px;
	  margin-top: 15px;
	  display: flex;
      color: blue;
  }
  .r11
  {
	  width:20px;
	 height:20px;
  }
  .r12
  {
	    display: flex;
        flex-direction: row;
  }
  .r13
  {
	  margin-top: 15px;
	  margin-left: 500px;
  }
  .tongji
  {
	  width:600px;
	  margin-top: 30px;
 background-color: #AFEEEE;
	  display: flex;
	   justify-content: center;/*水平居中*/
	   align-items:center;/*垂直居中*/
	  
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
		 
	  	  Statement sql = con.createStatement();
          ResultSet rs = sql.executeQuery("select * from dayin;");
		   int s=0;
		   %>
  
		   <div Class='r1'>

			   <div Class='r6'>
				   
			   	    
               <div Class='r12'>
                    <div Class='r10' onclick="openwin()"> 
	                    <image src="zengjia.png" Class='r11'>增加信息</image>
				    </div>
				     <form method="post" action="sousuo.jsp"  Class='r13'>
				   	  
                       <input type="text" name="id"  value='搜索编号' > 
                       <input type="submit" value="搜索"  > 
	                  
                   </form>
               </div>
				   
          <div Class='r4'></div>
		      </div>
		      
			  <div Class='r5'>
		    <p Class='r2'> 门牌号</p>
			 
			 
			<p Class='r22'>缴费时间</p>
			 
			<p Class='r22'>价格 </p>
			<p Class='r2'>收费员 </p>
			<p Class='r22'>收费情况 </p>
			<p Class='r2'>操作 </p>
			 
			 </div>
			  
			 <div Class='r7'></div>
		  
 
		   <%
		   int tongji=0;
		  while(rs.next())
		  {   tongji=tongji+1;
	          %>
			  <div  Class='r3' >
				  
			 <p Class='r2'>
			  <%out.print(rs.getString("num"));%> </p>
			 
			  
			  <p Class='r22'>
			  <%out.print(rs.getString("Etime"));%></p>
			 
			 <p Class='r22'>
			  <%out.print(rs.getString("sum(price)"));%></p> 
			 <p Class='r2'>
			  <%out.print(rs.getString("name"));%></p>
			<p Class='r22'>
			 <% out.print(rs.getString("state"));%></p>
			 
 
             <p Class='r2'>
	             <a href="dayin.jsp?id=<%=rs.getString("num")%>">打印</a>
			  </p>
			   </div>
			  
			 <%
		   }%>
 
		    
			 
	 
  
		   </div>  <div class='tongji'>总计<%=tongji%>条记录</div>
<%
	  }
	  catch (SQLException e) {
      out.print(e);
  }
%>

</body>
</html>
              