<%@page import="java.sql.*"%>
<html>
    <head>
     <link rel="stylesheet" type="text/css" href="test.css">
     <style>
p {
  text-align: center;
  font-size: 60px;
  margin-top: 0px;
}
 </style>            
    </head>
    <body>
        
        <p id="demo"></p>

<script>
// Set the date we're counting down to
var countDownDate = new Date("August 7, 2021 11:41:25").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

  // Get today's date and time
  var now = new Date().getTime();
    
  // Find the distance between now and the count down date
  var distance = countDownDate - now;
    
  // Time calculations for days, hours, minutes and seconds
  
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
  // Output the result in an element with id="demo"
  document.getElementById("demo").innerHTML = minutes + "m " + seconds + "s ";
    
  // If the count down is over, write some text 
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "EXPIRED";
  }
}, 1000);
</script>

        
        <div class ="main-div">
            <div class="inner-div">
                <h2 class="question">Question comes here</h2>
                <ul>
                <li>
                    <input type="radio" name="answer" id="ans1" class="answer">
                    <label for="ans1" id="option1">Answer Option</label>
                </li>
                <li>
                    <input type="radio" name="answer" id="ans2" class="answer">
                    <label for="ans2" id="option2">Answer Option</label>
                </li>
                <li>
                    <input type="radio" name="answer" id="ans3" class="answer">
                    <label for="ans3" id="option3">Answer Option</label>
                </li>
                <li>
                    <input type="radio" name="answer" id="ans4" class="answer">
                    <label for="ans4" id="option4">Answer Option</label>
                </li>
                </ul>
                <button id="submit">Submit</button>
                <div id="showScore" class="scoreArea"></div>
            </div>
        
        </div>      
        
        
        <script src="script.js"></script>
       
<!--        <input type="hidden" id="TQ" value="<%= request.getParameter("TQ") %>" name="TQ">
        <input type="hidden" id="CQ" value="<%= request.getParameter("CQ") %>" name="CQ">
        <input type="hidden" id="NAME" value="<%= request.getParameter("NAME1") %>" name="NAME1">
        <form class="box" >

        <h4><input type="text" Placeholder="Enter Question_NO." name="un" id="qn"></h4>
        <center>
            
                <table cellpadding='12' >
                    <tr>
                        <td><label for = "question" id="que"></td>
                    </tr>
                    <tr>
                        <td><input type="radio" name="opt" id="opa" ><label id="opta"></label></td>
                        <td><input type="radio" name="opt" id="opb" ><label id="optb"></label></td>
                    </tr> 
                    <tr>
                        <td><input type="radio" name="opt" id="opc" ><label id="optc"></label></td>                
                        <td><input type="radio" name="opt" id="opd" ><label id="optd"></label></td>
                    </tr>
                    <tr><td><button id="nb" onclick="mf()">NEXT</button>
                        <td><button id="nb" onclick="mf1()">Submit</button></td>
                    </tr>
                    <input type="hidden" id="ans" >
                </table>
        </center>
        </form>>
    <script>
    nextque();    
    </script>-->
    </body>
</html>

