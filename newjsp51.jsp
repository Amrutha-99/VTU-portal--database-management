<%-- 
    Document   : newjsp51
    Created on : 22 Nov, 2019, 9:30:19 AM
    Author     : User
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     
     <style>
         body{
         background-image: url("t.jpg");
         background-color: white;
          background-repeat: no-repeat;
        
        background-size:200%;
         }
       
         </style>
                 
        <%
              int sem=0;String musn=null,susn=null;int sm =0;int found=0;int rank=0;
            try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","amruthamahesh","amrutha99");
                Statement st=con.createStatement();
                String s=request.getParameter("r1");
                ResultSet rs1=st.executeQuery("select usn,sem from student");
            
                while(rs1.next())
                {
                      String usn=rs1.getString(1);
                    if(s.equals(usn))
                    { 
                        found=1;
                        sem=rs1.getInt(2);
                    }
                   
                }
                 if(found==0)
                    {
        %><center><font size="30">USN Not Available :-(</font></center><%
                    }
                 else{
                ResultSet rs=st.executeQuery("Select s.usn,m.usn,name"
                        + ",sem,tot_marks,percent from Student s,marks m group by s.usn,m.usn,name,sem,tot_marks,percent"
                        + " order by percent desc");
%> <center><table border="1" width="50" height="3" >
           
                     <thead>
            <tr>                                                               
                <th>RANK</th>
                <th>USN</th>
                <th>NAME</th>
                <th>PERCENT</th>
            </tr>
                     </thead>
                     
                     </tr></center>
                <%
                while(rs.next())
                {
                    musn=rs.getString(1);
                    susn=rs.getString(2);
                    sm=rs.getInt(4);
                    if(musn.equals(susn) && (sm==sem))
                    {
                        %>  
                      
                            <tr>
                              <td><%= ++rank %></td> 
                              <td><%=rs.getString(1)%>
                              <td><%=rs.getString(3)%>
                              <td><%=rs.getFloat(6)%>
                         </tr>
                                           
                       <%
                           

                        if(rank>100)
                            break;
                      
                    }
                }if(found==1){%>
 <body bgcolor="whitesmoke"><font size="20" color="indigo"><center>Visveswaraya Technological University,Belgaum</center></font>
 <font size="6" color="indigo"><center>Karnataka,India</center></font>  <center><br><br><font size="5" color="green">December - 2019 / January - 2020</center></font><br><center><h1><font color="black">VTU UNIVERSITY RANK</font><br></h1></center>
    <body bgcolor="whitesmoke">
<%}
}
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
            %>

    </table>
        </center>
        <form action="newjsp1.jsp">
    <center><input type="submit" value="back"  style="height:50px;" style="width:80px;"></center>
</form>
     </body></html>
