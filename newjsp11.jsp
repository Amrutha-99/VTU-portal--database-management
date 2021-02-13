<%-- 
    Document   : newjsp11
    Created on : 8 Nov, 2019, 12:48:34 AM
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
        <font size="15"><font color="black">
    <center><b>ENTER DELETE RECORD</b></center></font>
            <br>
            <br>
        <form action="newjsp20.jsp" method="get">
            <center><p style="text-align:center;">
                     <b>ENTER USN:&nbsp;&nbsp;</b><input type="text" name="d1" 
                                                         style="height:40px;" style="width:300px;"></p></center>
            
            <center><input type="submit" value="ENTER"></center>      
        </form>
    </body>
</html>
