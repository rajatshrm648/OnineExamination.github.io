<%@page import="java.sql.*"%>

    
        <% 
        String s1=request.getParameter("UQUESTION");
        String s2=request.getParameter("UANS1");
        String s3=request.getParameter("UANS2");
        String s4=request.getParameter("UANS3");
        String s5=request.getParameter("UANS4");
        String s6=request.getParameter("UCANS5");
        String s7=request.getParameter("UQID");
        
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam?useSSL=false","root","root");
            Statement st=con.createStatement();
            String q="insert into AInsertQA values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')";
            st.executeUpdate(q);
            response.sendRedirect("A-Insert.jsp");
            con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }
            
        %>
        
   