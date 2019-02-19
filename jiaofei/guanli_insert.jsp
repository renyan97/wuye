<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title></title>
</head>
<body>

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
          ResultSet rs = sql.executeQuery("select * from feiyonghao ;");
          rs.next();
          String g_no=rs.getString("tongji");
		         String g_num= request.getParameter("g_num");
	              String g_type = request.getParameter("g_type");
	         //  String g_no= request.getParameter("g_no");
	              String g_Etime = request.getParameter("g_Etime");
	              String g_degree= request.getParameter("g_degree");
	                String g_name = request.getParameter("g_name");
		        String g_state = request.getParameter("g_state");
		        double g_price=0;
		        if(g_type.equals("dt"))
		        {
			        int n=Integer.parseInt(g_num);
			         ResultSet rs1 = sql.executeQuery("select * from ziyuan;");
			         String b="";
			         int l=0;
			          while(rs1.next())
          {
	          if (g_num.equals(rs1.getString("home_num")))
	          {
		            l=rs1.getInt("louceng");
		            b=rs1.getString("build_type");
		            break;
	          }
	          
          }double p=0.00; 
          int bn=Integer.parseInt(b);  
          ResultSet rs2 = sql.executeQuery("select * from dianti where build_num="+bn+" and floor=(select louceng from ziyuan where home_num="+n+");");
               rs2.next();
                p=rs2.getDouble("price");
                g_price= p;
		        }
		        else{
			         ResultSet rs0 = sql.executeQuery("select * from danjia ;");
	                 double p=0.00;
          while(rs0.next())
          {
	          if (g_type.equals(rs0.getString("type")))
	          {
		          p=rs0.getDouble("price");
	          }
          }// String g_price="";

	           int d=Integer.parseInt(g_degree);
	            g_price= p*d;
		        }
	              
		      
	  	  //Statement sql = con.createStatement();
          sql.executeUpdate("insert into guanli(num,type,no,Etime,degree,price,name,state) values('"+ g_num + "','"+ g_type + "','"+ g_no + "','"+ g_Etime + "','"+ g_degree + "','"+ g_price + "','"+g_name+"','"+ g_state +"');");
		   //out.print("添加成功,3秒后返回主页面");
       response.setHeader("refresh","0;url=guanli.jsp");
	  }
	  catch (SQLException e) {
      out.print(e);
  }
%>

</body>
</html>
