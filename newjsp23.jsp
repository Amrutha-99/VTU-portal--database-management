<%-- 
    Document   : newjsp23
    Created on : 11 Nov, 2019, 12:31:13 PM
    Author     : User
--%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
body{
background-image:url("IMG5.jpg");
background-color:white;
background-repeat:no-repeat;
background-size:100%;
}
</style>
     <body>
     <%  try{
       Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","amruthamahesh","amrutha99");
   Statement st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
          ResultSet rs=st.executeQuery("select * from student");
     %>
     <table cellpadding="15" border="1">
         <tr padding:20px>
             <th><B>USN</b></th>
             <th><B>NAME</B></th>
             <th><B>BRANCH_ID</b></th>
             <th><B>SEM</b></th>
             <th><B>COLLEGE_ID</b></th>
            </tr>
         <%
   while(rs.next())
   {
     %>   
    <tr>
              
                <td><%=rs.getString(1)%>
                <td><%=rs.getString(2)%>
                <td><%=rs.getString(3)%>
                <td><%=rs.getString(4)%>
                <td><%=rs.getString(5)%>
                

                </td> 
                
            </tr>
            
           
        
    <%}
      
         }
          catch(Exception e)
          {
             out.println(e);
           }

    %>
   
    </table>
       <form action="index.html" method="get">
                 
                 <p style="text-align:center;"> 
                                 <b> <input type="submit" value="BACK" 
                                style="height:60px;" style="width:80px;"></b>
              
        </form>
           
    </body>
</html>
