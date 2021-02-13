<%-- 
    Document   : newjsp6
    Created on : 6 Nov, 2019, 9:01:25 PM
    Author     : User
--%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
body{
background-image:url("IMG6.jpg");
background-color:white;
background-repeat:no-repeat;
background-size:100%;
}
</style>
<%!
String s1,s2,s3,s4,s5,s6,s7,s8,c1,c2,c3,c4,c5,c6,c7,c8,s,bname,branch,sname,u;
int coursesem,branch_id,found=0,m1,m2,m3,m4,m5,m6,m7,m8,t;
String csem;
float p;%>
<%
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","amruthamahesh","amrutha99");
Statement st=con.createStatement();
s=request.getParameter("r1");
ResultSet rs10=st.executeQuery("select usn,branch_id,sem from student s where usn='"+s+"'");
while(rs10.next())
{
u=rs10.getString(1);
branch_id=rs10.getInt(2);
coursesem=rs10.getInt(3);
}
found=0;
if(s.compareTo(u)==0)
{
found=1;
}
else
{
%><center><font size="30"><B>USN Not Available:(</b></font></center><%
}
if(found==1)
{
%>
<body bgcolor="whitesmoke"><font size="20" color="indigo"><center>
    <B>VISVESWARAYA TECHNOLOGICAL UNIVERSITY,BELAGUM</b></center></font>
    <font size="6" color="indigo"><center><B>KARNATAKA,INDIA</b></center></font>
<style>
<img src="11.jpg"></style><%
ResultSet rs=st.executeQuery("select s.sem,s.branch_id,name,usn from student s where usn='"+s+"'");
while(rs.next())
{
sname=rs.getString(3);
if(branch_id==1) 
  branch="CSE";
else if(branch_id==2)
  branch="EC";
else if(branch_id==3)
  branch="ME";
else
  branch="CIV";%>
<BR>
<BR>
<center><b>STUDENT NAME=<%=sname%></B></center>
<center><b>STUDENT USN=<%=s%></B></center>
<center><b>STUDENT BRANCH=<%=branch%></B></center>



<%
}
if((coursesem==1))
{
 if(branch_id==1||branch_id==2)
 {
 csem="1";
 }
 if(branch_id==3||branch_id==4)
 {
 csem="1";
 }
ResultSet rs1=st.executeQuery("select b.branch_name,s1,s2,s3,s4,s5,s6,s7,s8,c1,c2,c3,"+"c4,c5,c6,c7,c8 from course,branch b where sem='"+csem+"'and course.b_id='"+branch_id+"'");
while(rs1.next())
{
bname=rs1.getString(1);
s1=rs1.getString(2);
s2=rs1.getString(3);
s3=rs1.getString(4);
s4=rs1.getString(5);
s5=rs1.getString(6);
s6=rs1.getString(7);
s7=rs1.getString(8);
s8=rs1.getString(9);
c1=rs1.getString(10);
c2=rs1.getString(11);
c3=rs1.getString(12);
c4=rs1.getString(13);
c5=rs1.getString(14);
c6=rs1.getString(15);
c7=rs1.getString(16);
c8=rs1.getString(17);
}
}

else if((coursesem==2))
{
if(branch_id==1||branch_id==2)
{
csem="2";
}
if(branch_id==3||branch_id==4)
{
csem="2";
}
ResultSet rs1=st.executeQuery("select b.branch_name,s1,s2,s3,s4,s5,s6,s7,s8,c1,c2,c3,"
+"c4,c5,c6,c7,c8 from course,branch b where sem='"+csem+"'and course.b_id='"+branch_id+"'");
while(rs1.next())
{
bname=rs1.getString(1);
s1=rs1.getString(2);
s2=rs1.getString(3);
s3=rs1.getString(4);
s4=rs1.getString(5);
s5=rs1.getString(6);
s6=rs1.getString(7);
s7=rs1.getString(8);
s8=rs1.getString(9);
c1=rs1.getString(10);
c2=rs1.getString(11);
c3=rs1.getString(12);
c4=rs1.getString(13);
c5=rs1.getString(14);
c6=rs1.getString(15);
c7=rs1.getString(16);
c8=rs1.getString(17);
}
}


/* else
{
ResultSet rs1=st.executeQuery("select b.branch_name,s1,s2,s3,s4,s5,s6,s7,s8,c1,c2,c3,"
+"c4,c5,c6,c7,c8 from course,branch b where sem='"+coursesem+"'and course.b_id='"+branch_id+"'");
while(rs1.next())
{
bname=rs1.getString(1);
s1=rs1.getString(2);
s2=rs1.getString(3);
s3=rs1.getString(4);
s4=rs1.getString(5);
s5=rs1.getString(6);
s6=rs1.getString(7);
s7=rs1.getString(8);
s8=rs1.getString(9);
c1=rs1.getString(10);
c2=rs1.getString(11);
c3=rs1.getString(12);
c4=rs1.getString(13);
c5=rs1.getString(14);
c6=rs1.getString(15);
c7=rs1.getString(16);
c8=rs1.getString(17);
}
}*/
ResultSet rs2=st.executeQuery("select m1,m2,m3,m4,m5,m6,m7,m8,tot_marks,percent from marks where usn='"+s+"'");
%>
<center><table border="1" width="5px" height="3px">
<thead>
<tr>
    <th><B>SUBJECT</b></th>
    <th><B>SUBCODE</b></th>
    <th><B>MARKS</b></th>
</tr>
</thead>
</tr>
<%

    while(rs2.next()) {
m1=rs2.getInt(1);
m2=rs2.getInt(2);
m3=rs2.getInt(3);
m4=rs2.getInt(4);
m5=rs2.getInt(5);
m6=rs2.getInt(6);
m7=rs2.getInt(7);
m8=rs2.getInt(8);
t=rs2.getInt(9);
p=rs2.getFloat(10);
}
%>
<tr>
<td><%=s1%></td>
<td><%=c1%>
<td><%=m1%>
</tr>
<tr>
<td><%=s2%></td>
<td><%=c2%>
<td><%=m2%>
</tr>
<tr>
<td><%=s3%></td>
<td><%=c3%>
<td><%=m3%>
</tr>
<tr>
<td><%=s4%></td>
<td><%=c4%>
<td><%=m4%>
    </tr>
<tr>
<td><%=s5%></td>
<td><%=c5%>
<td><%=m5%>
</tr>
<tr>
<td><%=s6%></td>
<td><%=c6%>
<td><%=m6%>
</tr> <tr>
<td><%=s7%></td>
<td><%=c7%>
<td><%=m7%>
</tr> <tr>
<td><%=s8%></td>
<td><%=c8%>
<td><%=m8%>
</tr>
<B>PERCENTAGE:<input type="button" value="<%=p%>"></b>
<%
}
}

catch(Exception e)
{
%><center><font size="30"><B>USN Not Available:(</b></font></center><%

//out.println(e);
}%>

</table>
</center>
<form action="newjsp1.jsp">
    <center><input type="submit" value="back"  style="height:50px;" style="width:80px;"></center>
</form>
</body>
</html>