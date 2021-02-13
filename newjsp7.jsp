<%-- 
    Document   : newjsp1
    Created on : 2 Nov, 2019, 2:32:22 PM
    Author     : User
--%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.DriverManager" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        body{
background-image:url("35.jpg");
background-color:white;
background-repeat:repeat;
background-size:100%;
}
    </style>
    <body  background="C:\Users\ADMIN\Pictures\image1.jpg">
        
       <% String s=request.getParameter("t1");
          String s1=request.getParameter("t2");
          String s2="amruthamahesh";
          String s3="amrutha99";
          if(s.equals(s2) && s1.equals(s3))
          { 
            try
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","amruthamahesh","amrutha99");
                out.println("connection");
            }
            catch(Exception e)
            {
                out.println(e);
            }
            %>
          <p style="text-align:center;">
              <font size="20"><font color="black">VTU RESULTS</font></font>
          </p>
          
             
          
           <form action="newjsp9.jsp" method="get">
              <p style="text-align:center;">
                  <input type="submit" value="CREATE STUDENT" 
                    style="height:50px;" style="width:700px;"></p>
           </form>
             
          <% }
          else
          { %>
          <p style="text-align:center;"> AUTHENTICATION FAILED </p> 
         
          <% }
          %>
       
       <form action="index.html" method="get">
                 
                 <p style="text-align:center;"> 
                                 <b> <input type="submit" value="BACK" 
                                style="height:60px;" style="width:80px;"></b>
              
        </form>
           
       
        
    </body>
</html>


