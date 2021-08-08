<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Confirmation</title>
        <link rel="stylesheet" type="text/css" href="#">
    </head>
    <body>
    <center><h1>"Student Confirmation"</h1>
    <form action="A-SConfirm1.jsp">
        <table cellpadding="15px">
              <tr>
              <td>NAME</td>
              <td>Email-id</td>
              </tr>
          
<%

try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam?useSSL=false","root","root");
    Statement st=con.createStatement();    
    String  q="select * from SRegis";
    ResultSet rs=st.executeQuery(q);
%>

<%
    while(rs.next())
    {%>
        <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><b>Add</b><input value="<%=rs.getString(1)%>" type="submit" name="UNAME"></td>
        <td><input type="button" value="DeActivate"  ></td>
        </tr>        
    
        <%
    }
    con.close();
}
catch(Exception e)
{
out.println(e);
}

%>              
        </table>
        </form>
        </center>
</body>
</html>
