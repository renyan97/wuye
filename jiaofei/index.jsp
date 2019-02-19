<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title></title>
</head>
 
<body >
<style type="text/css"> 
     .r1
     {
	    margin-top: 5px;
	    margin-left: 10px;
	    display: flex;
        flex-direction: column;
      
     }
     .r2
     {
	    margin-top: 5px;
	    margin-left: 20px;
	    width:80px;
	    color: white;
	    background-color: #696969;
     }
     .r3
     {
	   position: absolute;
	   top:50px;
	   left:200px;
     }
     .r4
     {
            margin-left: 20px;
	       margin-top: 10px;
     }
     .r5
     {
	    
	     background-color:#696969;
	     width:195px;
	     height:600px;
     }
     .r7
     {
	     height:48px;
	       background: linear-gradient(to right, #B0C4DE , #6495ED); /* 标准的语法 */
	       display:flex;
	       align-items:center;/*垂直居中*/

	      }
     .r8
     {
	     color: white;
	     margin-left: 50px;
	     font-size:25px;
     }
     .r9
     {
	     color: white;
	     font-size:15px;
	     margin-left: 30px;
     }
     button:link { 
color:red; 
text-decoration:underline; 
} 
button:visited { 
color:#0000FF; 
text-decoration:none; 
} 
button:hover { 
color:#FF00FF; 
text-decoration:none; 
} 
 button:active { 
color:#D200D2; 
text-decoration:none; 
}
 
</style>
<script type="text/javascript">
		function jiaofei_chakan0()
{
document.getElementById("aaa").src='s.jsp' 
}
function jiaofei_chakan1()
{
document.getElementById("aaa").src='d.jsp' 
}
function jiaofei_chakan2()
{
document.getElementById("aaa").src='dt.jsp' 
}
function jiaofei_chakan3()
{
document.getElementById("aaa").src='wy.jsp' 
}
function jiaofei_chakan4()
{
document.getElementById("aaa").src='tc.jsp' 
}
function jiaofei_chakan5()
{
document.getElementById("aaa").src='dy.jsp' 
}
	function jiaofei_chakan()
{
document.getElementById("aaa").src='guanli.jsp' 
}

function jiaofei_insert()
{
document.getElementById("aaa").src='guanli_tianjia.jsp' 
}
function ziyuan_chakan()
{
document.getElementById("aaa").src='../ziyuan/fangchan_main.jsp' 
}
function ziyuan_insert()
{
document.getElementById("aaa").src='../ziyuan/fangchan_tianjia.jsp' 
}

function huzhu_insert()
{
document.getElementById("aaa").src='../huzhu/in.jsp' 
}

function huzhu_chakan()
{
document.getElementById("aaa").src='../huzhu/sy.jsp' 
}
function xitong_chakan0()
{
document.getElementById("aaa").src='../xitong/system2.jsp' 
}
function xitong_chakan1()
{
document.getElementById("aaa").src='../xitong/system.jsp' 
}
function xitong_chakan2()
{
document.getElementById("aaa").src='../xitong/no.jsp' 
}
function weixiu_chakan()
{
document.getElementById("aaa").src='../weixiu/weixiuguanli.jsp' 
}

function weixiu_insert()
{
document.getElementById("aaa").src='../weixiu/weixiu_tianjia.jsp' 
}


 function display(id){  
        var traget=document.getElementById(id);  
        if(traget.style.display=="none"){  
            traget.style.display="";  
        }else{  
            traget.style.display="none";  
      }  
   }  
   function getCurDate()
{
var d = new Date();
var week;
switch (d.getDay()){
case 1: week="星期一"; break;
case 2: week="星期二"; break;
case 3: week="星期三"; break;
case 4: week="星期四"; break;
case 5: week="星期五"; break;
case 6: week="星期六"; break;
default: week="星期天";
}
var years = d.getFullYear();
var month = add_zero(d.getMonth()+1);
var days = add_zero(d.getDate());
var hours = add_zero(d.getHours());
var minutes = add_zero(d.getMinutes());
var seconds=add_zero(d.getSeconds());
var ndate = years+"年"+month+"月"+days+"日 "+hours+":"+minutes+":"+seconds+" "+week;
var divT=document.getElementById("logInfo");
divT.innerHTML= ndate;
}
function add_zero(temp)
{
if(temp<10) return "0"+temp;
else return temp;
}
setInterval("getCurDate()",100);
</script>
 
 
<div class='r7'>
	<div class='r8'>物业管理系统</div>
	<p id="logInfo" class='r9'></p>
</div>
<div class='r5'>
    <div   class='r4'>
	  
  <input type="submit" value="缴费管理" onclick="display('lb')"  class='r2'>
 
<div id="lb" style="display:none"  >
	<font class='r1'>   <input class='r2' type="submit" name="Submit" value="信息查询" onclick="jiaofei_chakan()" /> 
		<input class='r2' type="submit" name="Submit" value="水费" onclick="jiaofei_chakan0()" /> 
			<input class='r2' type="submit" name="Submit" value="电费" onclick="jiaofei_chakan1()" /> 
				<input class='r2' type="submit" name="Submit" value="电梯费" onclick="jiaofei_chakan2()" /> 
					<input class='r2' type="submit" name="Submit" value="物业费" onclick="jiaofei_chakan3()" /> 
						<input class='r2' type="submit" name="Submit" value="停车费" onclick="jiaofei_chakan4()" /> 
							<input class='r2' type="submit" name="Submit" value="打印" onclick="jiaofei_chakan5()" /> 
	          <input class='r2' type="submit" name="Submit" value="信息插入" onclick="jiaofei_insert()" /> 
	</font>
</div>
</div>

   <div   class='r4'>
<input type="submit" value="房产管理" onclick="display('ziyuan')"  class='r2'>
 
<div id="ziyuan" style="display:none"  >
	<font class='r1'>   <input class='r2' type="submit" name="Submit" value="信息查询" onclick="ziyuan_chakan()" /> 
	          <input class='r2' type="submit" name="Submit" value="信息插入" onclick="ziyuan_insert()" /> 
	</font>
</div>
</div>

  <div   class='r4'>
<input type="submit" value="户主管理" onclick="display('huzhu')"  class='r2'>
 
<div id="huzhu" style="display:none"  >
	<font class='r1'>   <input class='r2' type="submit" name="Submit" value="信息查询" onclick="huzhu_chakan()" /> 
	          <input class='r2' type="submit" name="Submit" value="信息插入" onclick="huzhu_insert()" /> 
	</font>
</div>
</div>


  <div   class='r4'>
<input type="submit" value="系统管理" onclick="display('xitong')"  class='r2'>
 
<div id="xitong" style="display:none"  >
	<font class='r1'>   <input class='r2' type="submit" name="Submit" value="水电费" onclick="xitong_chakan0()" /> 
	        <input class='r2' type="submit" name="Submit" value="电梯费" onclick="xitong_chakan1()" /> 
		        <input class='r2' type="submit" name="Submit" value="公告" onclick="xitong_chakan2()" /> 
	</font>
</div>
</div>

  <div   class='r4'>
<input type="submit" value="维修管理" onclick="display('weixiu')"  class='r2'>
 
<div id="weixiu" style="display:none"  >
	<font class='r1'>   <input class='r2' type="submit" name="Submit" value="信息查询" onclick="weixiu_chakan()" /> 
	          <input class='r2' type="submit" name="Submit" value="信息插入" onclick="weixiu_insert()" /> 
	</font>
</div>
</div>

 </div>
 
 
 <iframe class='r3' frameborder="0" src="guanli.jsp" id="aaa" name="aaa" align="right"   width="83%" height="100%"
        frameborder="no" border="0" onload="this.height=this.contentWindow.document.body.scrollHeight" ></iframe>
</body>
</html>
