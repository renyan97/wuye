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
	     width:60px;
     }
     .r3
     {
	     margin-left: 20px;
     }
</style>
<script type="text/javascript">
    function display(id){  
        var traget=document.getElementById(id);  
        if(traget.style.display=="none"){  
            traget.style.display="";  
        }else{  
            traget.style.display="none";  
      }  
   }  

</script>
 
 <p>是</p>
 <div class='r1'>
<input type="submit" value="s" onclick="display('lb')" class='r2'>

<div id="lb" style="display:none">

	<font><li class='r3'> <a href="mulu.jsp" target="iframe_a">查看缴费信息</a></li>
	<li class='r3'><a href='guanli.jsp'>增加缴费信息</a></li>
	</font>

</div>
 
</div>
 
<iframe src='guanli.jsp' align="right" name="iframe_a" width="80%" height="10%"
        frameborder="no" border="0" marginwidth="0" marginheight=" 0" onload="this.height=this.contentWindow.document.body.scrollHeight"  
        scrolling="yes" allowtransparency="yes"></iframe>
</iframe>

</body>
</html