<%-- 
    Document   : newjsp13
    Created on : 8 Nov, 2019, 1:29:46 PM
    Author     : User
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<html>
    <style>
body{
background-image:url("11.jpg");
background-color:white;
background-repeat:no-repeat;
background-size:100%;
}
</style>
        <%String s1=request.getParameter("t1");
String s2=request.getParameter("m1");
String s3=request.getParameter("m2");
String s4=request.getParameter("m3");
String s5=request.getParameter("m4");
String s6=request.getParameter("m5");
String s7=request.getParameter("m6");
String s8=request.getParameter("m7");
String s9=request.getParameter("m8");

try
   {
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","amruthamahesh","amrutha99");
PreparedStatement ps=con.prepareStatement("insert into marks values(?,?,?,?,?,?,?,?) where usn=?");
ps.setString(1,s2);
ps.setString(2,s3);
ps.setString(3,s4);
ps.setString(4,s5);
ps.setString(5,s6);
ps.setString(6,s7);
ps.setString(7,s8);
ps.setString(8,s9);
ps.setString(9,s1);
out.println("INSERTION SUCESSFULL");
ps.executeUpdate();
}
catch(Exception e)
{
    out.println(e);
}
%><h><b><center>SUBMISSION SUCCESSFULL</center></b></h>
<form action="newjsp14.jsp" method="get">
                <p style="text-align:center;"> <input type="submit" value="VIEW"
                style="height:50px;" style="width:800px;"></p>
             </form>
 <form action="newjsp12.jsp" method="get">
                <p style="text-align:center;"> <input type="submit" value="BACK"
                style="height:50px;" style="width:800px;"></p>
             </form>
</html>