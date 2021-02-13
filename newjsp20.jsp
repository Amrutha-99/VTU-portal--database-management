<%-- 
    Document   : newjsp20
    Created on : 11 Nov, 2019, 12:27:09 PM
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
background-image:url("IMG20.jpg");
background-color:white;
background-repeat:no-repeat;
background-size:100%;
}
</style>
  
     <form action="newjsp23.jsp" method="post">
         <center><font size="20"><font color="black"><B>DELETION SUCCESS</b></font></font></center>
      <br>
      <center><input type="submit" value="view"></center>
<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","amruthamahesh","amrutha99");
Statement st=con.createStatement();
String d1=request.getParameter("d1");
int i=st.executeUpdate("DELETE FROM student WHERE usn='"+d1+"'");
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>    
  </form>
</html>
