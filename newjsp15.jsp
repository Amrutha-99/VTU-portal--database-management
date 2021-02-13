<%-- 
    Document   : newjsp15
    Created on : 9 Nov, 2019, 10:01:09 PM
    Author     : User
--%>
 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
  
<html>
    <style>
body{
background-image:url("IMG10.jpg");
background-color:white;
background-repeat:no-repeat;
background-size:100%;
}
</style>
    <body><center><font size="8px" color="white"<b>CHECK FOR UPDATIONS</b></center></font></body>
    <form action="newjsp16.jsp" method="get">
                <p style="text-align:center;"> <input type="submit" value="VIEW"
                style="height:50px;" style="width:800px;"></p>
 <%
try
   {
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","amruthamahesh","amrutha99");
 Statement st=con.createStatement();
 String s1=request.getParameter("t1");
 String s2=request.getParameter("t2");
 String s3=request.getParameter("t3");
 String s4=request.getParameter("t4");
 String s5=request.getParameter("t5");
 PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?,?)");
 ps.setString(1,s1);
  ps.setString(2,s2);
   ps.setString(3,s3);
    ps.setString(4,s4);
     ps.setString(5,s5);
     ps.executeUpdate();
   }
catch(Exception e)
{
    out.println(e);
    out.println("INSERTION UNSUCCESSFULL");
}


%>

             </form>
 <form action="newjsp9.jsp" method="get">
                <p style="text-align:center;"> <input type="submit" value="BACK"
                style="height:50px;" style="width:800px;"></p>
             </form>
</html>
