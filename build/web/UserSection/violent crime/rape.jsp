<%-- 
    Document   : rape
    Created on : 9 Dec, 2020, 11:01:28 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Graph Representation</title>
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
            background-image: url("../pics/home3.png");
           
          
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
      
       
        label{
            color: white
        }
       
        h2{
            color: white;
            text-align:center;
            font-family:serif;
        }
       
        
        #d1{
            margin-left: 12%;
        }
        #d1 span{
            background-color:rgba(0,0,0,0.5);
            padding:8px;
            border: darkorange 2px solid;
            border-radius: 5px;
        }
        .desc{
           
           
            
            font-family:monospace;
            font-size: 20px;
            
            
            
            
           
        }
      
        
        
        </style>
    </head>
    
    <body>
       <div class="container-fluid">
        <div class="logo">
            <img src="../pics/icon2.jpg"><span id="ist">INDIAN</span>&nbsp;&nbsp;
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
                    <a class="nav-link" href="../userSection.jsp">HOME<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../addfir.jsp" >ADD NEW FIR</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="pro.jsp">ALLOTED OFFICER</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">PREDICT RESULT</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../typesofcrime.html" >TYPES OF CRIMES</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../viewfir.jsp">VIEW ALL FIR</a>
                </li>
               
               
              

            </ul>

        </div>
    </nav>
        <!--carousel-->
         <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="../pics/rape.jpg" alt="First slide" width="100%" height="400">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="../pics/rape2.jpg" alt="Second slide" width="100%" height="400">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="../pics/rape3.jpg" alt="Third slide" width="100%" height="400">
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
            
        </div><br>
        <div class="container">
            <div class="desc">
                <h2 class="text-primary">Crime:Rape In India</h><br><br>
                <h5 class="text-warning">How To Describe Rape:</h5><br>
                <p class="text-white">Rape is the fourth most common crime against women in India. 
                    According to the 2019 annual report of the National Crime Records Bureau(NCRB), 32033 rape cases were registered across the country,
                    or an average of 88 cases daily,slightly lower than 2018 when 91 cases were registered daily.
                    Of these, 30,165 rapes were committed by perpetrators known to the victim (94.2 % of cases),a high number similar to 2018.
                    The share of victims who were minors or below 18 - 
                    the legal age of consent - stood at 15.4%, down from 27.8% in 2018. 
                    On the other hand, rapes by juveniles remained high in India with 3 
                    minors being arrested for rape, assault and attempted violence on women and girls each day in 2019.<br>
                    According to NCRB 2019 statistics, <strong><em><u>Rajasthan</u></em></strong> reported the highest number of rapes among Indian states.
                Other states in the hindi heartland region, across North India, such as Madhya Pradesh, Uttar Pradesh, Haryana and Chhattisgarh, also have the highest incidence of sexual violence against women.Among metropolitan cities, the national capital of Delhi continued to have the highest 
                incidence of rape at 1253 cases in 2019,while Jaipur had the highest rape rate (per 100,000 population)</p>
              
            </div><br><br>
            <div class="desc1">
                <h2 class="text-danger"> State wise crime rate of Rape in 2019</h2>
                     <table class="table table-bordered  table-dark table-striped" style="text-align: center">
    <thead>
        <tr style="text-align:center;bacground-color:black;color:yellow">
        <th>Rank.</th>
        <th>Country Name</th>
        <th>Crime Rate</th>
        
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>Delhi</td>
        <td>13.5</td>
        
      </tr>
       <tr>
        <td>2</td>
        <td>Assam</td>
        <td>10.5</td>
        
      </tr>
       <tr>
        <td>3</td>
        <td>Haryana</td>
        <td>10.9</td>
        
      </tr>
       
       <tr>
        <td>4</td>
        <td>Madhya Pradesh</td>
        <td>6.2</td>
        
      </tr>
       <tr>
        <td>5</td>
        <td>Odisha</td>
        <td>6.2</td>
        
      </tr>
       <tr>
        <td>6</td>
        <td>Rajashtan</td>
        <td>15.9</td>
        
      </tr>
       <tr>
        <td>7</td>
        <td>Maharashtra</td>
        <td>3.9</td>
        
      </tr>
       <tr>
        <td>8</td>
        <td>Chhattisgarh</td>
        <td>7.2</td>
        
      </tr>
       <tr>
        <td>9</td>
        <td>Bihar</td>
        <td>1.3</td>
        
      </tr>
       <tr>
        <td>10</td>
        <td>Uttarakhand</td>
        <td>9.6</td>
        
      </tr>
       <tr>
        <td style="color: red" >11</td>
        <td style="color: red">INDIA</td>
        <td style="color: red">4.9</td>
        
      </tr>
       <tr>
        <td>12</td>
        <td>Uttar Pradesh</td>
        <td>2.8</td>
        
      </tr>
       <tr>
        <td>13</td>
        <td>Jammu And Kashmir</td>
        <td>3.5</td>
        
      </tr>
       <tr>
        <td>14</td>
        <td>Punjab</td>
        <td>7.1</td>
        
      </tr>
       <tr>
        <td>15</td>
        <td>Telangana</td>
        <td>4.7</td>
        
        
      </tr>
       <tr>
        <td>16</td>
        <td>West Bengal</td>
        <td>2.3</td>
        
      </tr>
       <tr>
        <td>17</td>
        <td>Jharkhand</td>
        <td>7.7</td>
        
      </tr>
       <tr>
        <td>18</td>
        <td>Karnataka</td>
        <td>1.6</td>
        
      </tr>
       <tr>
        <td>19</td>
        <td>Gujarat</td>
        <td>1.6</td>
        
      </tr>
      <tr>
        <td>20</td>
        <td>Andhra Pradesh</td>
        <td>4.2</td>
        
      </tr>
       <tr>
        <td>21</td>
        <td>Tamil Nadu</td>
        <td>1</td>
        
      </tr>
       <tr>
        <td>22</td>
        <td>Kerala</td>
        <td>11.1</td>
        
      </tr>
      
      
      
    </tbody>
                  </table>

            </div>
            <!--graph-->
            
            <div class="graph">
                 <canvas id="myChart9" width="1200px" height="800px" aria-label="chart" role="img"></canvas><br><br>
         <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
          <script src="canvas9.js"></script>   
            </div>
            
                
       
        </div>
        <div style="height: 200px">
            
        </div>
          
        
           
       
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
    </body>
</html>
