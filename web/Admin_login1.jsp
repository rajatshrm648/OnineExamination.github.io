<%@page import="java.sql.*"%>

    
        <% 
        String s2=request.getParameter("UID");
        String s3=request.getParameter("UPASS");

        
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam?allowPublicKeyRetrieval=true&useSSL=false","root","root");
            Statement st=con.createStatement();
            String q="select * from  Alogin where UID='"+s2+"' AND UPASS='"+s3+"'";
            ResultSet rs=st.executeQuery(q);
            if(rs.next())
            {
               response.sendRedirect("A-menu.jsp");
            }
            else
            {
               response.sendRedirect("Admin_login.html?=Invalid ID & Pass");
            }
            
            response.sendRedirect("Admin_login.html");
            con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }
            
        %>
        
   