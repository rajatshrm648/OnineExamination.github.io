<%@page import="java.sql.*"%>

    
        <% 
      
        String s7=request.getParameter("UQID");
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam?useSSL=false","root","root");
            Statement st=con.createStatement();
            String q="delete from AInsertQA where UQID='"+s7+"'";
            st.executeUpdate(q);
            response.sendRedirect("A-menu.jsp");
            con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }
            
        %>
        
   