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
            String q="update AInsertQA set  UQUESTION='"+s1+"', UANS1='"+s2+"' ,UANS2='"+s3+"' ,UANS3='"+s4+"' ,UANS4='"+s5+"' ,UCANS5='"+s6+"' where UQID='"+s7+"' ";
            st.executeUpdate(q);
            out.println("Updated");
            con.close();
        }
              
        catch(Exception e)
        {
            out.print(e);
        }
    
                   
%>
     
        
        