<%@page import="java.sql.*"%>

    
        <% 
        String s1=request.getParameter("UNAME");
        String s2=request.getParameter("UEMAIL");
        String s3=request.getParameter("UPNO");
        String s4=request.getParameter("UPASS");
        String s5=request.getParameter("UCPASS");
        String s6=request.getParameter("UGENDER");
                
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam?useSSL=false","root","root");
            Statement st=con.createStatement();
            String q="insert into SRegis values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')";
            st.executeUpdate(q);
            response.sendRedirect("Student_login.html");
            con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }
            
        %>
        
   