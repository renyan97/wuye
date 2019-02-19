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

	 <div class='r5'><p>缴费基本信息</p> </div>
 </div>
 
		   <div >
	 
		   <form method="post" action="guanli_insert.jsp" class='r1'>
			 
                <div class='r7'>   <div class='r2'> <p class='r3'>门牌号 </p>     <input type="text" name="g_num"  Class='r9'> </div>
                 <div class='r2'><p class='r3'>类型:水费    </p>     <input  type="radio" name="g_type" value="s" Class='r9'>   </div> 
                 <div class='r2'><p class='r3'>类型:电梯费    </p>     <input  type="radio" name="g_type" value="dt" Class='r9'>   </div> 
                 <div class='r2'><p class='r3'>类型:电费    </p>     <input  type="radio" name="g_type" value="d" Class='r9'>   </div> </div> 
                 <div class='r7'>  <div class='r2'><p class='r3'>类型:物业费    </p>     <input  type="radio" name="g_type" value="wy" Class='r9'>   </div> 
                 <div class='r2'><p class='r3'>类型:停车费    </p>     <input  type="radio" name="g_type" value="tc" Class='r9'>   </div>   
              <div class='r2'><p class='r3'> 出租公寓费    </p>     <input  type="radio" name="g_type" value="czgy" Class='r9'>   </div>
                  <div class='r2'><p class='r3'> 出租写字楼费    </p>     <input  type="radio" name="g_type" value="czxz" Class='r9'>   </div></div>
                      
                    
                  <div class='r7'>  <div class='r2'><p class='r3'>抄表度数  </p> <input type="text" name="g_degree"  Class='r9'> </div> 
	          <div class='r2'><p class='r3'>缴费时间   </p>    <input type="text" name="g_Etime"  Class='r9' value='20190101'> </div> 

	            
       <div class='r2'><p class='r3'>收费员 </p>  <input type="text" name="g_name"  Class='r9'> </div> 
	 <div class='r2'><p class='r3'>收费情况   </p><input type="text" name="g_state"  Class='r9' value='no'></div> </div>
    
    <input type="submit" value="添加"  class='r9'> 
  </form>
		   </div>
 

</body>
</html>
