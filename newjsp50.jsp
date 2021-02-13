<%-- 
    Document   : newjsp50
    Created on : 22 Nov, 2019, 9:29:28 AM
    Author     : User
--%>


<%@page import="java.lang.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <style>
         body{
         background-image: url("gf.jpg");
         background-color: white;
          background-repeat: no-repeat;
        
        background-size:100%;
         }
        
         </style>
       
    
    <body bgcolor="whitesmoke">
        
        <%
            try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","amruthamahesh","amrutha99");
                Statement st=con.createStatement();
                String s=request.getParameter("r1");
                int sem=0,bid=0;
                String colid=null;
                int rank=0;int found=0;
                
                ResultSet rs1=st.executeQuery("select usn,branch_id,sem,s.college_id from student s");
                  while(rs1.next())
                    {
                        String str=rs1.getString(1);
                        
                       
                           if(s.equals(str))
                            {
                                found=1;
                              colid=rs1.getString(4);
                              sem=rs1.getInt(3);
                           
                              bid=rs1.getInt(2);
                        
                            }
                    }
                 if(found==0)
                    {
                         %><center><font size="30">USN Not Available :-(</font></center><%
                        
                    }
                 else
                 {
                ResultSet rs=st.executeQuery("select s.usn,name,s.sem,branch_name,b.branch_id,s.Branch_id,s.college_id,c.college_id,"
            + "tot_marks,percent,marks.usn from Student s,Branch b,College c,marks "
       + " group by s.usn,name,s.sem,branch_name,b.branch_id,s.Branch_id,s.college_id,c.college_id,tot_marks,percent,marks.usn"
                        + " order by tot_marks desc");
             %> 
         
             
    <center><table border="1" width="1">
                     <thead>
            <tr>                                                               
                <th>RANK</th>
                <th>USN</th>
                <th>NAME</th>
                <th>SEM</th>
                <th>BRANCH</th>
                <th>MARKS</th>
                <th>PERCENT</th>
            </tr>
                     </thead>
                     </tr>
            <%
                while(rs.next())
                    
                    
                {   
                   String rsc=rs.getString(7);
                   String rcc=rs.getString(8);
                   String susn=rs.getString(1);
                   String musn=rs.getString(11);
                   int rsem=rs.getInt(3);
                   int rbid=rs.getInt(5);
                     if(sem==rsem  && bid==rbid && colid.equals(rsc))
                   
                    {
                        if(rs.getInt(6)==rs.getInt(5) && rsc.equals(rcc))
                        {
                         if(susn.equals(musn))  
                         {   %>  
                         <tr>
                              <td><%= ++rank %></td> 
                              <td><%=rs.getString(1)%>
                              <td><%=rs.getString(2)%>
                              <td><%=rs.getInt(3)%>
                              <td><%=rs.getString(4)%>
                              <td><%=rs.getInt(9)%>
                              <td><%=rs.getString(10)%><br>
                         </tr>
                          
                       <%
                        
                        }
                    }
}   
}if(found==1){
  %>
   <body bgcolor="whitesmoke"><font size="20" color="indigo"><center>Visveswaraya Technological University,Belgaum</center></font>
 <font size="6" color="indigo"><center>Karnataka,India</center></font>  <center><br><br><font size="5" color="green">December - 2019 / January - 2020</center></font><br><center><h1><font color="black">CLASS RANK</font><br></h1></center>
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
