<%-- 
    Document   : newjsp12
    Created on : 8 Nov, 2019, 12:53:02 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
       <style>
body{
background-image:url("IMG9.jpg");
background-color:white;
background-repeat:no-repeat;
background-size:100%;
}
</style>
    <body>
      <form action="newjsp15.jsp" method="get">
        
    <center> <font size="50"><h1>ENTER STUDENT DETAILS</h1></center>
    <p style="text-align:center;">
               <font size="5"><font color="black">
               USN:&nbsp;&nbsp;<input type="text" name=t1 style="height:30px;" style="width:400px;">
    </p>
    </font>
    <p style="text-align:center;">
               <font size="5"><font color="black">
               &nbsp; &nbsp; NAME:&nbsp;&nbsp;
               <input type="text" name="t2" style="height:30px;" style="width:400px;">
    </p>
    </font>
    <p style="text-align:center;">
               <font size="5"><font color="black">
                    BRANCH_ID:&nbsp;&nbsp;
                    <input type="text" name="t3" style="height:30px;" style="width:400px;">
               </p>
    
    </font>
    <p style="text-align:center;">
               <font size="5"><font color="black">
               SEM:&nbsp;&nbsp;<input type="text" name="t4" style="height:30px;" style="width:400px;">
    </p>
    </font>
    <p style="text-align:center;">
               <font size="5"><font color="black">
               COLLEGE_ID:&nbsp;&nbsp;<input type="text" name="t5" style="height:30px;" style="width:400px;">
    </p>
    </font>
    <center><input type="submit" value="SUBMIT" style="height:30px;" style="width:500px;"></p>
                                     </center>
    </form>
                                     
                                     
    </body>
</html>
