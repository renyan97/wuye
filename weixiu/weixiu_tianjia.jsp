<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title></title>
</head>
<style type="text/css"> 
  .r1
  {
	  display: flex;
	  flex-direction: column;
  }
  .r2
  {
	  display: flex;
	  flex-direction: row;
	  height:50px;
  }
  .r3
  {
	   margin-left: 20px;
	   float:left;
	 height:30px;
	 width:100px;
	  background-color: #87CEEB;
	   display: flex;
	   justify-content: center;/*水平居中*/
align-items:center;/*垂直居中*/
  }
  .r5
  {
	 
margin-left: 20px;
	 
  }
  .r6{  
	   height:50px;
	   background: linear-gradient(to right, #B4CDCD , #B0C4DE); /* 标准的语法 */
       display: flex;
       align-items:center;/*垂直居中*/
  }
  .r7
  {
	  display: flex;
	  flex-direction: row;
	  
  }
  .r9
  {
	  margin-left: 20px;
	  margin-top: 15px;
	 height:30px;
	 width:100px;
	 background-color: #AFEEEE;
	  display: flex;
	   justify-content: center;/*水平居中*/
	   align-items:center;/*垂直居中*/
  }
</style>
<body  >
 <div class='r6'>

	 <div class='r5'><p>维修基本信息</p> </div>
 </div>
 
		   <div >
	 
		   <form method="post" action="weixiu_insert.jsp" class='r1'>
			   
                <div class='r7'>   <div class='r2'> <p class='r3'>楼号 </p>     <input type="text" name="build_num"  Class='r9'> </div>
                 <div class='r2'><p class='r3'>门牌号   </p>     <input type="text" name="home_num"  Class='r9'>  </div> 
                 <div class='r2'><p class='r3'>户主姓名    </p>     <input type="text" name="name"  Class='r9' value="默认"></div></div>
                 
                <div class='r7'>   <div class='r2'><p class='r3'>维修时间   </p>    <input type="text" name="time"  Class='r9'> </div> 
                   <div class='r2'><p class='r3'>维修员  </p> <input type="text" name="man"  Class='r9'> </div>
	            <div class='r2'><p class='r3'>备注 </p>   <input type="text" name="remark"  Class='r9'></div></div>
    
    <input type="submit" value="添加"  class='r9'>
  </form>
		   </div>
 

</body>
</html>
