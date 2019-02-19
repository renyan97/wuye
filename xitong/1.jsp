<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>

<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <title></title>
</head>

<body>




    <marquee behavior="scroll" direction="left" >

        通知：
<% 
    try
	  {
		   String text= request.getParameter("txt");
           out.println(text);
	  }
	  catch (Exception e) {
      out.print(e);
    }
    
%>
    </marquee>

</body>

</html>
