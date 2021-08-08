<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>


<%
String s1=request.getParameter("TQ");
String s2=request.getParameter("CQ");

       try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam?useSSL=false","root","root");
            Statement st=con.createStatement();
            String q="insert into SResult values('Ram','"+s1+"','"+s2+"')";
            st.executeUpdate(q);

            con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }

%>

<html>

<head>
  <title>Student Result</title>
  <link rel="stylesheet" type="text/css" href="#">
  <script type="text/javascript">

  </script>
</head>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
    margin: 0;
    padding: 0;
    font-family: 'Poppins',sans-serif;
}
body{
    background-color: #fff;
}
nav{
    background: rgb(255, 255, 255);
    padding: -0.8rem;
    border: 1px solid rgb(31, 29, 29);
}
label.logo{
  color: blue;
  font-size: 2rem;
  font-family: var(--Playfair);
  font-size: 35px;
  line-height: 71px;
padding: 6px 6px;
  font-weight: bold;
}

nav ul{
  float: right;
  margin-right: 20px;
}
nav ul li{
  display: inline-block;
  line-height: 80px;
  margin: 0 5px;
}
nav ul li a{
    text-decoration: none;
    font-family: var(--Roboto);
    color: blue;
    font-size: 17px;
    padding: 7px 13px;
    border-radius: 3px;
    text-transform: uppercase;
  }
a.active,a:hover{
    background: rgba(185, 185, 185, 0.6);
  transition: .5s;
}
.checkbtn{
  font-size: 30px;
  color: blue;
  float: right;
  line-height: 80px;
  margin-right: 40px;
  cursor: pointer;
  display: none;
}
#check{
  display: none;
}
@media (max-width: 952px){
  label.logo{
    font-size: 25px;
    padding-left: 8px;
  }
  nav ul li a{
    font-size: 16px;
  }
}
@media (max-width: 858px){
  .checkbtn{
    display: block;
  }
  ul{
    position: fixed;
    width: 100%;
    height: 100vh;
  background-color: rgb(230 228 228);;
    top: 80px;
    left: -100%;
    text-align: center;
    transition: all .5s;
  }
  nav ul li{
    display: block;
    margin: 50px 0;
    line-height: 30px;
  }
  nav ul li a{
    font-size: 20px;
  }
  a:hover,a.active{
    background: none;
    color:rgb(109, 86, 86)
  }
  #check:checked ~ ul{
    left: 0;
  }
}
.welcome{
  padding-top: 52px;
  padding-left: 650px;
  color: blue;
  font-size: 40px;
}
.cont{
  padding-top: 52px;
  padding-left: 500px;
}
.bb2{
  color: blue;
}
input[type=submit] {
    margin: 2px;
    padding:5px 15px; 
    background:#ccc; 
    border:0 none;
    cursor:pointer;
    -webkit-border-radius: 5px;
    border-radius: 5px; 
}
input[type=submit]:hover{
    background: blue;
    color:#fff;
}
.aa2{
  margin-top: 41px;
  margin-left: 200px;
}
</style>

<body>
    <form action="S-menu.jsp">
    <h1 class="welcome">Result</h1>
    <div class="cont">
    <table cellpadding='12'>
        <tr>
          <th class="bb2">Total Question</th>
          <th class="bb2">Correct Question</th>

        </tr>
        <tr>
          <td><label  for="Total question" id="que">
              <%= request.getParameter("TQ")%>
          </td>
          <td><label  input type="text" for="correct question" id="Tque">
              <%= request.getParameter("CQ")%>
          </td>
        </tr>
    </table>
    <div>
      <tr>
        <div  class="aa2" > 
        <th colspan="2"><input type="submit" value="Back To Menu"></th>
        </th></div>
        </table>
  </form>
</body>

</html>