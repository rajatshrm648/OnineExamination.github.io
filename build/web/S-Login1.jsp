<%@page import="java.sql.*"%>

    
        <% 
        String s2=request.getParameter("UEMAIL");
        String s4=request.getParameter("UPASS");

        
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam?useSSL=false","root","root");
            Statement st=con.createStatement();
            String q="select * from  SRegis1 where UEMAIL='"+s2+"' AND UPASS='"+s4+"'";
            ResultSet rs=st.executeQuery(q);
            if(rs.next())
            {
               response.sendRedirect("S-menu.jsp");
            }
            else
            {
               response.sendRedirect("Student_login.html?=Invalid ID & Pass");
            }
            
//            response.sendRedirect("S-Login.jsp");
            con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }
            
        %>
        
   