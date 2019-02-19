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
     flex-direction: column;
 }
  .r2{
	 float:left;
	 height:25px;
	 width:100px;
	  
  }
  .r3{
	  
	   top:50px;
	   display: flex;
	   flex-direction: row;
    
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
  {
	  width:850px;
	  margin-left: 0px;
	  border-bottom: 2px solid #999;
	  
  }
  .r8
  {
	   
	  margin-top: 15px;
	  color: blue;
  }
  .r9
  {
	  margin-left: 20px;
	  margin-top: 15px;
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
  
</style>
<body >
	   <%
	     String g_num= request.getParameter("g_num");
	     String g_type= request.getParameter("g_type");
	     String g_no= request.getParameter("g_no");
	     String g_Etime= request.getParameter("g_Etime");
	     String g_degree= request.getParameter("g_degree");
	     String g_price= request.getParameter("g_price");
	     String g_name= request.getParameter("g_name");
	     String g_state= request.getParameter("g_state");

	   %>
  
 
			   <div Class='r6'>
				   
			   	    
              
				   
          <div Class='r4'></div>
		      </div>

    <form method="post" action="guanli_xiugai2.jsp" class='r5'>
	<div class='r2'>门牌号 <input type="text" name="g_num"  value='<%=g_num%>'></div>
    <div class='r2'>类型 <input type="text" name="g_type"  value='<%=g_type%>'> </div>
	<div class='r2'>费用号 <input   name="g_no"  value='<%=g_no%>'></div>
    <div class='r2'>上次缴费时间 <input type="text" name="g_Etime"  value='<%=g_Etime%>'> </div>
   <div class='r2'>抄表度数  <input type="text" name="g_degree"  value='<%=g_degree%>'> </div>
	<div class='r2'>价格  <input type="text" name="g_price"  value='<%=g_price%>'></div>
    <div class='r2'>收费员 <input type="text" name="g_name" value='<%=g_name%>' > </div>
	<div class='r2'>收费情况 ><input type="text" name="g_state"  value='<%=g_state%>'></div>
	 
    <input type="submit" value="保存">
  </form>


</body>
</html>
