<%@page import="java.sql.*"%>

<%
      String s1=request.getParameter("UNAME");
      String s2=request.getParameter("UID");
      String s3=request.getParameter("UPASS");
      
 
      
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam?useSSL=false","root","root");
    Statement st=con.createStatement();
    String  q="insert into SRegis1(UNAME,UEMAIL,UPASS) select UNAME,UEMAIL,UPASS from SRegis where UNAME='"+s1+"'";
    String  q1="delete from SRegis ";
    st.executeUpdate(q);
    st.executeUpdate(q1);
    response.sendRedirect("A-menu.jsp");
    con.close();
}
catch(Exception e)
{
out.println(e);
}

%>

