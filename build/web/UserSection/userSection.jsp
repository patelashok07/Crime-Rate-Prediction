<%-- 
    Document   : userSection
    Created on : 2 Dec, 2020, 11:05:22 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USER SECTION</title>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
       
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
            margin: 10px;
            padding: 10px;
            color: white;
        }
        .navbar .collapse ul li #spa{
           
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
     
      left:10%;
       

        }
        .option {
            border-radius: 5px;
            background-color:rgba(0,0,0,0.9);
           width: 90%;
            margin-top: 50px;
           padding: 20px;
             box-shadow: gray 4px 4px 4px 5px;
              text-align: center;
      
               position: absolute;
               top:25%;
               left: 5%;
              
        }
         
        #officer_login,#admin_login,#user_login{
          width: 300px;
          height: 250px;
          
         display: inline-block;
         margin-left:  5%;
          box-shadow: gray 3px 4px;
      
         color: lightgrey;
          padding: 30px;
          background-color: rgba(0,0,0,0.85);
          border-radius: 15px;
        
         
       
        }
        #officer_login,#admin_login,#user_login:hover{
             transition: 0.5s ease;
        }
        #carouselExampleControls{
            margin-top: 0.4%;
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
                 
                 <a class="nav-link" href="userSection.jsp"style="color: black;
                    background-color: whitesmoke;text-shadow: hotpink;">  <i class="fa fa-home fa-1x" aria-hidden="true" style="color:red"></i>&nbsp;&nbsp;HOME<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addfir.jsp" ><i class="fa fa-address-card" style="color:red"></i>&nbsp;&nbsp;ADD NEW FIR</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="pro.jsp"><i class="fa fa-puzzle-piece" aria-hidden="true"style="color:red"></i>&nbsp;&nbsp;ALLOTED OFFICER</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="typesofcrime.html" ><i class="fa fa-pie-chart" aria-hidden="true"style="color:red"></i>&nbsp;&nbsp;TYPES OF CRIMES</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewfir.jsp"><i class="fa fa-list" aria-hidden="true"style="color:red"></i>&nbsp;&nbsp;VIEW ALL FIR</a>
                </li>
                <li class="nav-item myname" style="float:rigth;position: absolute;right: 10px">
               <a class="nav-link" href="#"  data-toggle="modal" data-target="#myModal"></a>
                </li>
               


            </ul>

        </div>
    </nav>
        <!--model profile-->
        
      
        
        <!--end model-->
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="pics/s1.jpg" alt="First slide" width="" height="750">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="pics/home.jpg" alt="Second slide" width="" height="750">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="pics/crime2.jpg" alt="Third slide" width="" height="750">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>

            <!-- table here.. -->
            
        </div>
      
          <div class="container-fluid option">
              
        <div id="admin_login">
           
            <h5>ADD NEW FIR</h5> <br><br>
            <a href="addfir.jsp" style="color:yellow"><i class="fa fa-pencil-square fa-5x" aria-hidden="true"></i></a><br><br><br>
           
        </div>
          <div id="officer_login">
              <h5>WORLD  PREDICTION</h5><br><br>
              <a href="worldprediction.jsp" style="color:blue"><i class="fa fa-globe fa-5x" aria-hidden="true"></i></a><br><br><br>
              
        </div>
          <div id="user_login">
              <h5>INDIAN PREDICTION</h5><br>
              <a href="indiandata.jsp" style="color:green"><img src="pics/india3.png" width="100px" height="100px"></a><br><br><br>
               
          </div><br>
          <br>
          <!--next line-->
          <div id="admin_login">
            <h5>GRAPHICAL STATUS</h5> <br><br>
            <a href="graphicalStatus.jsp" style="color:yellow"><i class="fa fa-bar-chart fa-5x" aria-hidden="true"></i></a><br><br><br>
           
        </div>
          <div id="officer_login">
              <h5>ACT & SCHEAMS</h5><br><br>
              <a href="officer_login.html" style="color:blue"><i class="fa fa-bookmark fa-5x" aria-hidden="true"></i></a><br><br><br>
              
        </div>
          <div id="user_login">
              <h5>INDIA TOP STATE</h5><br><br>
              <a href="user_sign_in.html" style="color:green"><img src="pics/state.png" width="100px" height="99px"></a><br><br>
               
          </div><br>
          <br>
           
        </div>
        
       
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
    
    </body>
</html>
