<%-- 
    Document   : newjsp14
    Created on : 8 Nov, 2019, 1:29:54 PM
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
          ResultSet rs=st.executeQuery("select * from marks");
     %>
     <table cellpadding="15" border="1">
         <tr padding:20px>
                <th>USN</th>
                <th>MARKS1</th>
                <th>MARKS2</th>
                <th>MARKS3</th>
                <th>MARKS4</th>
                <th>MARKS5</th>
                <th>MARKS6</th>
                <th>MARKS7</th>
                <th>MARKS8</th>
              
               
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
                <td><%=rs.getString(6)%>
                <td><%=rs.getString(7)%>
                <td><%=rs.getString(8)%>
                <td><%= rs.getString(9) %>

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
      <form action="newjsp9.jsp" method="get">
                <p style="text-align:center;"> <input type="submit" value="BACK"
                style="height:50px;" style="width:800px;"></p>
             </form>
    </body>
</html>
