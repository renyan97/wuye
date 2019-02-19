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
	</style>
</head>
<body>
	<div class="main">
  <form method="post" action="result1.jsp"  onsubmit="return check()">
	  <table  border="1" width="500">
		<tr>		  
    <th>户主姓名(不超过9位)：</th>
    <th><input type="text" name="name"></th>
    </tr>
    	<tr>		  
    <th>户主性别：</th>
    <th><input type="text" name="sex"></th>
    </tr>
    	<tr>		  
    <th>户主电话：</th>
    <th><input type="text" name="tel"></th>
    </tr>
    	<tr>		  
    <th>户主账号(20位以内)：</th>
    <th><input type="text" name="id"></th>
    </tr>
    	<tr>		  
    <th>户主身份证(18位以内)：</th>
    <th><input type="text" name="idCard"></th>
    </tr>
    	<tr>		  
    <th>户主门牌号（10位以内）：</th>
    <th><input type="text" name="num"></th>
    </tr>
	    <tr>
    <th><input type="submit" value="提交"></th>
    </tr>
    </table>
  </form>
  <script type="text/javascript">
 　　function check(){
		　　var name = $("#name").val();　　
　　if(name == null || name == ""){
			　　　　alert("用户名不能为空");
			　　　　return false;
　　}
　　　　return true;
　　}
　　</script>
	
</body>
</html>