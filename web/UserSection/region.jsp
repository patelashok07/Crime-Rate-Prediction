<%-- 
    Document   : region
    Created on : 6 Dec, 2020, 11:54:25 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Select Region</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
       
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
               *{
                 margin: 0px;
                 padding: 0px;
                 box-sizing: border-box;
                 
             }
        body {
            background-image: url("pics/home3.png");
           
          
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
            margin: 1px;
            padding: 5px;
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
     
      left:15%;
       

        }
       
        label{
            color: white
        }
       
        h2{
            color: white;
            text-align:center;
            font-family:serif;
            
        }
        .tab{
            margin-top:5%;
            
        }
        .tab table{
            width: 90%;
            margin-left: 5%;
        }
        .tab canvas{
            margin-left: 5%;
        }
        #region{
            text-align: center;
            margin-left: 13%;
           
            padding: auto;
            
            height:50px;
            font-family: serif;
        }
        #foot{
            height: 200px;
            
        }
        #btn{
            margin-top: 5%;
            margin-left: 2%;
           
        }
        button{
            background-color:rgba(0,0,0,0.6)!important;
           
        }
        button a{
            color:white;
        }
        .ext{
            margin-top: 5%;
            text-align: center;
        }
       
       
        
        
        </style>
        <script>
            function africa(){
                var img=document.querySelector("#getimg");
                var head=document.getElementById("head");
                head.innerHTML="<h2>Africa: Crime Index by Country 2020 Mid-Year</h2>";
                //console.log((img));
                img.setAttribute("src","pics/africadata.PNG");
                 var img1=document.querySelector("#getimg1");
                  img1.setAttribute("src","");
            }
             function america(){
                var img=document.querySelector("#getimg");
               // console.log((img));
                img.setAttribute("src","pics/america.PNG");
                 var img1=document.querySelector("#getimg1");
                  img1.setAttribute("src","");
                  var head=document.getElementById("head");
                head.innerHTML="<h2>America: Crime Index by Country 2020 Mid-Year</h2>";
            }
             function asia(){
                var img=document.querySelector("#getimg");
                var img1=document.querySelector("#getimg1");
               // console.log((img));
                img.setAttribute("src","pics/asia1.PNG");
                img1.setAttribute("src","pics/asia2.PNG");
                var head=document.getElementById("head");
                head.innerHTML="<h2>Asia: Crime Index by Country 2020 Mid-Year</h2>";
            }
            function europe(){
                var img=document.querySelector("#getimg");
                var img1=document.querySelector("#getimg1");
               // console.log((img));
                img.setAttribute("src","pics/europe1.PNG");
                img1.setAttribute("src","pics/europe2.PNG");
                var head=document.getElementById("head");
                head.innerHTML="<h2>Europe: Crime Index by Country 2020 Mid-Year</h2>";
            }
                         function oceania(){
                var img=document.querySelector("#getimg");
               // console.log((img));
                img.setAttribute("src","pics/oceania.PNG");
                 var img1=document.querySelector("#getimg1");
                  img1.setAttribute("src","");
                  var head=document.getElementById("head");
                head.innerHTML="<h2>Oceania: Crime Index by Country 2020 Mid-Year</h2>";
            }
            
            
       
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

        <div class="collapse navbar-collapse" id="navbarSupportedContent" style="margin-left:3%">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="userSection.jsp">HOME<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addfir.jsp" >ADD NEW FIR</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="pro.jsp">ALLOTED OFFICER</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">PREDICT RESULT</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="typesofcrime.html" >TYPES OF CRIMES</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewfir.jsp">VIEW ALL FIR</a>
                </li>
               
                <li class="nav-item" id="inp">
                     <input type="search" placeholder="search crimes">
                </li>

            </ul>

        </div>
    </nav>
        <div class="container ext">
             <div id="btn">
           <button type="button" class="btn btn-primary btn-lg region">Select More Region:</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <button type="button" class="btn btn-outline-primary btn-lg" onclick="africa()">AFRICA</button>&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="button" class="btn btn-outline-primary btn-lg" onclick="america()">AMERICA</button>&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="button" class="btn btn-outline-primary btn-lg" onclick="asia()">ASIA</button>&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="button" class="btn btn-outline-primary btn-lg" onclick="europe()">EUROPE</button>&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="button" class="btn btn-outline-primary btn-lg" onclick="oceania()">OCEANIA</button>&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="button" class="btn btn-outline-primary btn-lg" onclick="india()">INDIA</button>&nbsp;&nbsp;&nbsp;&nbsp;
             </div><br><br>
             <h2 id="head"> Crime Index by Country 2020 Mid-Year</h2><br><hr style="background-color: red"><br>
            <img src="pics/map.PNG" id="getimg">
            <img src="" id="getimg1">
            <br><br><hr style="background-color: red"><br>
            
            
        </div>
        
        <div style="height: 100px">
            
        </div>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
    </body>
</html>
