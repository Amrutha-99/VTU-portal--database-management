<%-- 
    Document   : newjsp10
    Created on : 8 Nov, 2019, 12:07:46 AM
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
    <h><b><center>SUBMISSION SUCCESSFULL</center></b></h>
<form action="newjsp14.jsp" method="get">
                <p style="text-align:center;"> <input type="submit" value="VIEW"
                style="height:50px;" style="width:800px;"></p>
  <%

String s1=request.getParameter("usn");

      try
   {
       
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","amruthamahesh","amrutha99");
Statement st=con.createStatement();
String s2=request.getParameter("m1");
String s3=request.getParameter("m2");
String s4=request.getParameter("m3");
String s5=request.getParameter("m4");
String s6=request.getParameter("m5");
String s7=request.getParameter("m6");
String s8=request.getParameter("m7");
String s9=request.getParameter("m8");
PreparedStatement ps=con.prepareStatement("insert into marks(usn,m1,m2,m3,m4,m5,m6,m7,m8) values(?,?,?,?,?,?,?,?,?)");
ps.setString(1,s1);
ps.setString(2,s2);
ps.setString(3,s3);
ps.setString(4,s4);
ps.setString(5,s5);
ps.setString(6,s6);
ps.setString(7,s7);
ps.setString(8,s8);
ps.setString(9,s9);
ps.execute();
CallableStatement cst=con.prepareCall("{call sum}");
cst.execute();
out.println("insertion done");
}
catch(Exception e)
{
    out.println("Enter valid marks");
    out.println("insertion to"+ s1+ "not done");
    
}
%>

             </form>
 <form action="newjsp9.jsp" method="get">
                <p style="text-align:center;"> <input type="submit" value="BACK"
                style="height:50px;" style="width:800px;"></p>
             </form>
</html>
