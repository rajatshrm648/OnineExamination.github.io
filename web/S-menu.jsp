<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Menu </title>
        <link rel="stylesheet" type="text/css" href="#">
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
.start1{
   margin-bottom: 50px;
    padding-left: 800px;
    padding-bottom: 100px;
}
input[type=submit] {
    padding:20px 25px; 
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
    </style>
    <nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn">
          <i class="fas fa-bars"></i>
        </label>
        <label class="logo">Online Examination</label>
        <ul>
          <li><a href="#">Performance</a></li>
          <li><a href="">About</a></li>
          <li><a href="#">Setting</a></li>
          <li><a href="Student_login.html">LogOut</a></li>
        </ul>
      </nav>
    
    
    <body>
<h1 class="welcome">Welcome Student</h1>
<br><br><br><br>    
    <form action="testjs.jsp">
    <table cellpadding="15px"> 
    <div class="start1">
<p>1. Make sure your device (mobile/tab/laptop/desktop) is ready and at your disposal for appearing for the online exam.</p>
<p>2. You must have to attempt question in sequence and once you can switch to next question you won't move back to that question again.</p>
<p>3. Make sure you have a good and stable internet connection.</p>
<p>4. Login to the online exam page (Student online portal > Student login > menu page > Online Test)
5 minutes prior to the stipulated time of the exam.</p>
<p>5. Make sure you DO NOT open any other link/tab on your browser apart from the exam link during the
online exam.</p>

            
       
        <input type="radio" name="gender" name="UGENDER" id="dot-1" />
        <label for="dot-1">
        <span >I accept Terms & Conditions.</span>
        </label>
        <br>
        <input type="submit" name="smenu" value="Start Test"></div>  
    
    </table> 
</form>
    </body>
    
</html>