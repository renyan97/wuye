<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>


<!DOCTYPE html> 
<html>
<head>
<title></title>
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.menu_list {
    width: 268px;
    margin: 0;
    }
.menu_head {
    height: 47px;
    line-height: 47px;
    padding-left: 38px;
    font-size: 14px;
    color: white;
    cursor: pointer;
    border: 1px solid #f1f1f1;
    position: relative;
    margin: 0px;
    font-weight: bold;
    background: #51a9f18c;
    }
.menu_list .current {
    background: #51a9f18c;
    }
.menu_nva {
    line-height: 38px;
    border-left: 1px solid #51a9f18c;
    background: #fff;
    border-right: 1px solid #51a9f18c;
    }
.menu_nva a {
    display: block;
    height: 38px;
    line-height: 38px;
    padding-left: 38px;
    color: #777777;
    background: #fff;
    text-decoration: none;
    border-bottom: 1px solid #51a9f18c;
    }
.menu_nva a:hover {
    text-decoration: none;
    }

</style>
</head>

<body>
	<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">  
	<img src="2.jpg" height="100%" width="100%" left:0; top:0;/>  
	</div>
<div id="firstpaneDiv" class="menu_list">
<h3 class="menu_head current">住户信息</h3>
<div style="display:block" class="menu_nva">

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
	  	  String name= request.getParameter("id");
          ResultSet rs = sql.executeQuery("select * from dangan where name='"+name+"' ;");
		     
		   rs.next(); 
 %>

    
    <a  href='ss.jsp?num=<%=rs.getString("num")%>' >住户档案</a>
    <a href='sousuo.jsp?id=<%=rs.getString("num")%>  '>收费管理</a>
    <a href='sousuo1.jsp?id=<%=rs.getString("num")%>  '>维修情况</a>
</div>
<%    }catch (SQLException e) {
      out.print(e);}%>
<h3 class="menu_head">系统通知</h3>

<div style="display:none" class="menu_nva">

<a href="yonghu_no.jsp">公告</a>


<script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>

<script>

$(document).ready(function(){

$("#firstpaneDiv .menu_nva:eq(0)").show();

$("#firstpaneDiv h3.menu_head").click(function(){

$(this).addClass("current").next("div.menu_nva").slideToggle(200).siblings("div.menu_nva").slideUp("slow");

$(this).siblings().removeClass("current");

});

$("#secondpane .menu_nva:eq(0)").show();

$("#secondpane h3.menu_head").mouseover(function(){

$(this).addClass("current").next("div.menu_nva").slideDown(400).siblings("div.menu_nva").slideUp("slow");

$(this).siblings().removeClass("current");

});

});

</script>

</body>

 

</html>
