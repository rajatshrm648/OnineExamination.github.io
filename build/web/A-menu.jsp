<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin Menu Page</title>
    <link rel="stylesheet" type="text/css" href="A-menu.css">
</head>
    <nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn">
          <i class="fas fa-bars"></i>
        </label>
        <label class="logo">PIEMR</label>
        <ul>
          <li><a href="A-SResult.jsp">Student Performance</a></li>
          <li><a href="">UpDate</a></li>
          <li><a href="#">Setting</a></li>
          <li><a href="A-Login.jsp">LogOut</a></li>
        </ul>
      </nav>
<h1 class="welcome">WelCome Admin</h1>
<div class="Student-Confiram">
<a href="A-SConfirm.jsp"><input type="button" value="Student Confiramtion" id="t1" ></a></div>
<div class="cont">
<h2 class="Our-Cou">Our Courses</h2>
<p class="para">C/C++ JAVA PYTHON DATA STRUCTURE</p>
<div class="btn1">
<a href="A-Insert.jsp"><input type="button" value="Insert Questions" id="t1"></a>
<a href="A-ShowAllQA.jsp"><input type="button" value="ShowAllQuestions" id="t1"></a><br><br>
<a href="A-update.jsp"><input type="button" value="Search& UpDate Questions  " id="t1"></a>
<a href="A-DeleteQA.jsp"><input type="button" value="Delete Questions" id="t1"></a><br><br></div></div>
</body>
</html>