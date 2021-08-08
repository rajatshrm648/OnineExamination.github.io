<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Questions</title>
<link rel="stylesheet" type="text/css" href="#">
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Navbar</title>
   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
</head>
<style> A{text-decoration: none;}</style>
<style>
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

input[type=text] {
    padding:5px; 
    border:2px solid #ccc; 
    -webkit-border-radius: 5px;
    border-radius: 5px;
    margin: 5px;
    transition: all 0.3s ease;
}

input[type=text]:focus {
    border-color:#333;
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
.inster-para{
    color:blue;
}
.insert-btn{
    padding-bottom: 50px;
}
</style>
    </head>
    <nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn">
          <i class="fas fa-bars"></i>
        </label>
        <label class="logo">Online Examination</label>
        <ul>
          <li><a href="A-menu.jsp">Home</a></li>
          <li><a href="#">Update</a></li>
          <li><a href="#">Delete</a></li>
          <li><a href="#">Show All</a></li>
          <li><a href="Admin_login.html">Log Out</a></li>
        </ul>
      </nav>
    <body>
    <form action="A-Insert1.jsp"><br><br>
        <center><h1 class="inster-para">"Insert Your Question & Answer Here"</h1>
        
        <table>   
            <br><br>
        <tr><b>Question ID:</b><input type="text"  id="t1" name="UQID"></tr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <tr><b>Question:</b><input type="text"  id="t1" name="UQUESTION"></tr>
        <br><br><br><br>
        <b></b><br>
        <tr><b>Answer 1.</b>&nbsp;&nbsp;<input type="text" placeholder="Ans1" name="UANS1" id="t1"><br><br></tr>    
        <tr><b>Answer 2.</b>&nbsp;&nbsp;<input type="text" placeholder="Ans2" name="UANS2" id="t1"><br><br></tr>
        <tr><b>Answer 3.</b>&nbsp;&nbsp;<input type="text" placeholder="Ans3" name="UANS3" id="t1"><br><br></tr>
        <tr><b>Answer 4.</b>&nbsp;&nbsp;<input type="text" placeholder="Ans4" name="UANS4" id="t1"><br><br></tr> 
        <tr><b>Correct Ans.</b><br><br><input type="text" placeholder="Correct Answer" name="UCANS5" id="t1"><br><br></tr>    
        <tr><th  colspan="2" ><input type="submit" value="Insert" id="t1" class="insert-btn"></th></tr>
        </table>    
        </center>
            
    </form>
    </body>
</html>