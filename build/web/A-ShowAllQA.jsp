<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ShowAll Q&A</title>
        <link rel="stylesheet" type="text/css" href="#" >
    </head>
    <body>
        <center>
        <h1>ShowAll Question & Answer</h1>
        </center>
<%
    String s1=request.getParameter("UQUESTION");
    String s6=request.getParameter("UCANS5");
       
    try
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam?useSSL=false","root","root");
        Statement st=con.createStatement();
        String q="select * from AInsertQA";
        ResultSet rs=st.executeQuery(q);
        
        while(rs.next())
        {
            System.out.println(rs.getString(s1)+"\t"+rs.getString(s6));
        }
        System.out.println(rs.next());
        con.close();
    }
    catch(Exception e)
    {
        out.println(e);
    }
    
%>

        </body>
</html>