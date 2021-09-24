<%-- 
    Document   : addfir
    Created on : 5 Dec, 2020, 1:28:24 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
       
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Admi-Section</title>
         <style>
             *{
                 margin: 0px;
                 padding: 0px;
                 box-sizing: border-box;
                 
             }
        body {
            background-image: url("pics/home.jpg");
             font-family: Arial, Helvetica, sans-serif;
        }
        
        .logo {
            width: 100%;
            height: 50px;
            margin-top: 1%;
        }
        
        #ist {
            color: white;
            font-size: 35px;
            font-weight: bold;
            margin-left: 15px;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        }
        
        #iist {
            color: black;
            font-size: 20px;
            font-weight: bold;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        }
        
        .logo img {
            width: 70px;
            height: 65px;
            border-radius: 30px;
        }  
        .navbar .collapse ul li {
            margin: 2px;
            padding: 10px;
        }
        
        .navbar .collapse a {
            font-weight: 500;
            font-size: 15px;
            margin: 5px;
            padding: 10px;
            color: white;
        }
        
        .navbar .collapse a:hover {
            transition: 0.5s ease-out;
            color: black;
            background-color: whitesmoke;
           
            text-shadow: hotpink;
        }
        nav{
            margin-top: 3%;
            height: 50px;
            background-color: rgba(0,0,0,0.6);
           box-shadow: gray 3px 4px;
        }
        nav #inp{
       margin-top: 1.5%;
      position: relative;
     
      left:20%;
       

        }
         input[type=text],
        select,
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
            color: white;
            background-color: rgba(0,0,0,0.6);
        }
        
        .container {
            border-radius: 5px;
            background-color:rgba(0,0,0,0.9);
            padding: 20px;
            margin-top: 50px;
            width:50%;
             box-shadow: gray 4px 4px 4px 5px;
        }
        label{
            color: white
        }
        </style>
        <script>
            function user(){
                var a=document.getElementById("userdb");
                var b=document.querySelector(".myname");
                var c=b.querySelector("a");
                var name=a.innerText;
                c.innerHTML="Hello, "+name;
                c.style.color="crimson";
                c.style.fontSize="18px";
                c.style.paddingTop="6px";
                c.style.textDecoration="underline white"
             c.style.fontStyle="oblique"
               
                
            }
            window.onload=user;
           
            </script>
    </head>
    <body>   
        <div class="container-fluid">
        <div class="logo">
            <img src="pics/icon2.jpg"><span id="ist">INDIAN</span>&nbsp;&nbsp;
            <span id="iist" style="color: red;">CRIME-RATE</span>&nbsp;
            <span id="iist" style="color:red;font-size: 18px;">PREDICTION</span>

        </div>
        </div>
         <nav class="navbar navbar-expand-lg  ">
        <a class="navbar-brand" href="#" style="margin-left:-4%;"><span style="color:black">INDIAN</span><span style="color:red">Crime</span><span style="color:skyblue;">Investigation</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span style="color:white;"class="navbar-toggler-icon">+</span>
        </button>
        <%
            HttpSession sess=request.getSession();
            if(sess.isNew())
            {
                
            }
            else{
                String name=(String)sess.getAttribute("user");
                out.println("<h6 id='userdb'style='color:black'>"+name+"</h2>");
            }
            
           %>

        <div class="collapse navbar-collapse" id="navbarSupportedContent" style="margin-left:3%">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="userSection.jsp"><i class="fa fa-home fa-1x" aria-hidden="true" style="color:red"></i>&nbsp;&nbsp;HOME<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="adminSection.html" style="color: black;   background-color: whitesmoke;text-shadow: hotpink;"> <i class="fa fa-address-card" style="color:red"></i>&nbsp;&nbsp;ADD NEW FIR</a>
                </li>
                    
                <li class="nav-item">
                    <a class="nav-link" href="adminSection.html"><i class="fa fa-puzzle-piece" aria-hidden="true" style="color:red"></i>&nbsp;&nbsp;ALLOTED OFFICER</a>
                </li>
               
                <li class="nav-item">
                    <a class="nav-link" href="typesofcrime.html"><i class="fa fa-pie-chart" aria-hidden="true" style="color:red"></i>&nbsp;&nbsp;TYPES OF CRIME</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewfir.jsp"><i class="fa fa-list" aria-hidden="true" style="color:red"></i>&nbsp;&nbsp;VIEW FIR</a>
                </li>
               
               
                 <li class="nav-item myname" data-toggle="modal" data-target="#myModal" style="float:rigth;position: absolute;right: 10px">
               <a class="nav-link" href="#"></a>
                </li>

            </ul>

        </div>
    </nav>
         <div class="container">
        <h3 style="text-align: center;font-size: 18px;color: white"><i class="fa fa-map-marker" aria-hidden="true"></i> &nbsp;Add New FIR</h3>
        <form action="../FirServlet" method="post">
            <i class="fa fa-user-o" aria-hidden="true" style="color:red"></i>&nbsp;&nbsp;<label for="fname">Enter Suspect Name</label>
            <input type="text" id="fname" name="firstname" placeholder="Your name.." required>

           <i class="fa fa-user-circle" aria-hidden="true" style="color:red"></i> &nbsp;&nbsp;<label for="lname">Crime</label>
            <input type="text" id="lname" name="crimename" placeholder="Enter Crime.." required>

            <i class="fa fa-map-marker" aria-hidden="true" style="color:red"></i> &nbsp;&nbsp;<label for="add1"> Fill Address</label>
            <input type="text" id="add1" name="add" placeholder="Enter Address Line 1..." required>
             <i class="fa fa-venus-mars" aria-hidden="true" style="color:red"></i>&nbsp;&nbsp;<label for="state">Gender</label>
           <select id="gender" name="gender" required>
      <option value="Male">Male</option>
      <option value="Female">Female</option>
       <option value="Other">Other</option>
           </select>

            <i class="fa fa-calendar" aria-hidden="true" style="color:red"></i>&nbsp;&nbsp;<label for="date">Date Of Crime</label><br>
            <input type="date" id="date" name="date" placeholder="Enter Date..." required style="width:100%;padding: 8px;"><br><br>
            <i class="fa fa-home" aria-hidden="true" style="color:red"></i> &nbsp;&nbsp; <label for="cty">City</label>
          <input type="text" id="cty" name="city" placeholder="Enter City..." required>
           <i class="fa fa-globe" aria-hidden="true" style="color:red"></i>&nbsp;&nbsp; <label for="state">State</label>
            <select id="state" name="state" required>
      <option value="Andhra Pradesh">Andhra Pradesh</option>
      <option value="Assam">Assam</option>
      <option value="Bihar">Bihar</option>
      <option value="Chandigarh">Chandigarhr</option>
      <option value="Chhattisgarh">Chhattisgarh</option>
      <option value="Dehli">Dehli</option>
      <option value="Goa">Goa</option>
      <option value="Gujrat">Gujrat</option>
      <option value="Haryana">Haryana</option>
      <option value="Jharkhand">Jharkhand</option>
      <option value="Kerala">Kerala</option>
      <option value="Madhya Pradesh">Madhya Pradesh</option>
      <option value="Maharashtra">Maharashtra</option>
      <option value="Punjab">Punjab</option>
      <option value="Rajasthan">Rajasthan</option>
      <option value="Tamil Nadu">Tamil Nadu</option>
      <option value="Uttar Pradesh">Uttar Pradesh</option>
      
    </select>
           <i class="fa fa-phone" aria-hidden="true" style="color:red"></i>&nbsp;&nbsp;<label for="phn">Phone</label>
            <input type="text" id="phn" name="phn" placeholder="Enter Phone..." required>
          <i class="fa fa-envelope" aria-hidden="true" style="color:red"></i> &nbsp;&nbsp; <label for="eml">Email</label>
            <input type="text" id="eml" name="eml" placeholder="Enter Email..." required>

            

            <button class="btn-lg btn-outline-success " value="Submit" type="submit">Submit</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button class="btn-lg btn-outline-warning " value="Submit" type="reset">Clear</button>

        </form>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
    </body>
</html>

