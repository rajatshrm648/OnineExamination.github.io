<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Question</title>
        <link rel="stylesheet" type="text/css" href="delete.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    </head>
    <body>
    <nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn">
          <i class="fas fa-bars"></i>
        </label>
        <label class="logo">PIEMR</label>
        <ul>
          <li><a href="A-menu.jsp">Home</a></li>
          <li><a href="">UpDate</a></li>
          <li><a href="#">Delete</a></li>
          <li><a href="">ShowAll</a></li>
          <li><a href="A-Login.jsp">LogOut</a></li>
        </ul>
      </nav>
   
       <h1 class="del-ans">"Delete Your Question & Answer Here"</h1>
     <div class="Search-1">
      <form action="A-DeleteQA.jsp" >
        <table cellpadding="20px">   
        
            <tr>
                <td class="Search-pera">Search by Question ID</td>
                <td><input type="text"  id="t1" placeholder="Search by Question ID" name="UQID"></td>
            </tr>
            
            <tr>
            <th colspan="2"><input type="submit" value="Search" name="b1" id="t1"></th>        
            </tr>               
            </table>  
          </form>  
        </div>  
    <br>
    <%
    String s11=request.getParameter("UQID");
    if(s11!=null)
    {
    
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam?useSSL=false","root","root");
        Statement st=con.createStatement();
        String q="select * from  AInsertQA where UQID='"+s11+"'";
        ResultSet rs=st.executeQuery(q);
        
        if(rs.next())   
        {
%>
         <div class="tab">
        <form action="A-DeleteQA1.jsp">
         <table cellpadding="12">
                <tr>
                <td class="tb-pera">QUESTION ID</td>
                <td><input type="text" placeholder="QUESTION ID" value="<%=rs.getString(7)%>" name="UQID"></td>
                </tr>
                <tr>
                <td class="tb-pera">QUESTION</td>
                <td><input type="text" value="<%=rs.getString(1)%>" name="UQUESTION"></td>
                </tr>
                <tr>
                <td class="tb-pera">ANSWER1</td>
                <td><input type="text" value="<%=rs.getString(2)%>" name="UANS1"></td>
                </tr>
                <tr>
                <td class="tb-pera">ANSWER2</td>
                <td><input type="text" value="<%=rs.getString(3)%>" name="UANS2"></td>
                </tr>
                <tr>
                <td class="tb-pera">ANSWER3</td>
                <td><input type="text" value="<%=rs.getString(4)%>" name="UANS3"></td>
                </tr>
                <tr>
                <td class="tb-pera">ANSWER4</td>
                <td><input type="text" value="<%=rs.getString(5)%>" name="UANS4"></td>
                </tr>
                <tr>
                <td class="tb-pera">CORRECT ANSWER</td>
                <td><input type="text" value="<%=rs.getString(6)%>" name="UCANS2"></td>
                </tr>
                
                <tr>
                    <th colspan="2"><input type="submit" value="Delete" name="UQID"  ></th>
                </tr>

                </table>        
                </form>
            </div>
            <% }

        }
    catch(Exception e)
    {
    out.println(e);
    }
    }
    
    %>
    </body>
</html>
      
