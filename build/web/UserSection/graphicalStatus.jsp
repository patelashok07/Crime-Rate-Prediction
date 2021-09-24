<%-- 
    Document   : worldData
    Created on : 4 Dec, 2020, 11:54:36 AM
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
            background-image: url("pics/home4.png");
           
          
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
                    <a class="nav-link" href="addfir.jsp" ><i class="fa fa-address-card" style="color:red"></i>&nbsp;&nbsp;ADD NEW FIR</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="pro.jsp"><i class="fa fa-puzzle-piece" aria-hidden="true" style="color:red"></i>&nbsp;&nbsp;ALLOTED OFFICER</a>
                </li>
               
                <li class="nav-item">
                    <a class="nav-link" href="typesofcrime.html" ><i class="fa fa-pie-chart" aria-hidden="true" style="color:red"></i>&nbsp;&nbsp;TYPES OF CRIMES</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewfir.jsp"><i class="fa fa-list" aria-hidden="true" style="color:red"></i>&nbsp;&nbsp;VIEW ALL FIR</a>
                </li>
               
                <li class="nav-item myname" data-toggle="modal" data-target="#myModal" style="float:rigth;position: absolute;right: 10px">
               <a class="nav-link" href="#"></a>
                </li>

            </ul>

        </div>
    </nav>
        <div class="container-fluid tab">
  <h2> 
 
Crime Statistics World Top Country Mid-Year 2020
</h2>
      
  <table class="table table-bordered  table-dark table-striped" style="width: 90%;text-align: center">
    <thead>
        <tr style="text-align:center;bacground-color:black;color:yellow">
        <th>Rank.</th>
        <th>Country Name</th>
        <th>Crime %</th>
         <th>Safety %</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>United State</td>
        <td>47.70%</td>
         <td>52.30%</td>
      </tr>
      <tr>
           <td>2</td>
        <td>China</td>
        <td>31.18</td>
        <td>68.82</td>
      </tr>
      <tr>
        <td>3</td>
        <td>United Kingdom</td>
        <td>44.54</td>
        <td>55.46</td>
      </tr
       <tr>
        <td>4</td>
        <td>Russia</td>
        <td>40.60</td>
        <td>59.40</td>
      </tr>
       <tr>
        <td>5</td>
        <td>Germany</td>
        <td>35.14</td>
        <td>64.86</td>
      </tr>
       <tr>
        <td>6</td>
        <td>France</td>
        <td>47.37</td>
        <td>52.63</td>
      </tr>
       <tr>
        <td>7</td>
        <td>Japan</td>
        <td>21.67</td>
        <td>78.33</td>
      </tr>
       <tr>
        <td>8</td>
        <td>Italy</td>
        <td>44.24</td>
        <td>55.76</td>
      </tr>
       <tr>
        <td>9</td>
        <td>Canada</td>
        <td>40.64</td>
        <td>59.36</td>
      </tr>
    </tbody>
  </table><br><br>
  <canvas id="myChart" width="1100px" height="700px" aria-label="chart" role="img"></canvas><br><hr style="background-color:red"><br><br>
  <!--Asia crime-->
   <h2> 
 
Asia: Crime Index by Country 2020 Mid-Year
</h2>
      
  <table class="table table-bordered  table-dark table-striped" style="width: 90%;text-align: center">
    <thead>
        <tr style="text-align:center;bacground-color:black;color:yellow">
        <th>Rank.</th>
        <th>Country Name</th>
        <th>Crime %</th>
         <th>Safety %</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>	Afghanistan</td>
        <td>76.97%</td>
         <td>23.03%</td>
      </tr>
      <tr>
           <td>2</td>
        <td>	Malaysia</td>
        <td>58.55%</td>
        <td>41.45</td>
      </tr>
      <tr>
        <td>3</td>
        <td>	Bangladesh</td>
        <td>63.82%</td>
        <td>36.18%</td>
      </tr
       <tr>
        <td>4</td>
        <td>Kazakhstan</td>
        <td>54.81%</td>
        <td>45.19%</td>
      </tr>
       <tr>
        <td>5</td>
        <td>Iran</td>
        <td>48.91%</td>
        <td>51.09%</td>
      </tr>
       <tr>
        <td>6</td>
        <td>Cambodia</td>
        <td>52.18%</td>
        <td>47.82%</td>
      </tr>
       <tr>
        <td>7</td>
        <td>Indonesia</td>
        <td>46.06%</td>
        <td>53.94%</td>
      </tr>
       <tr>
        <td>8</td>
        <td>India</td>
        <td>44.42%</td>
        <td>55.58%</td>
      </tr>
       <tr>
        <td>9</td>
        <td>Pakistan</td>
        <td>44.18%</td>
        <td>55.82%</td>
      </tr>
      <tr>
        <td>10</td>
        <td>Turkey</td>
        <td>39.50%</td>
        <td>60.50%</td>
      </tr>
      <tr>
        <td>11</td>
        <td>	Sri Lanka</td>
        <td>40.23%</td>
        <td>59.77%</td>
      </tr>
      <tr>
        <td>12</td>
        <td>Nepal</td>
        <td>35.61%</td>
        <td>64.39%</td>
      </tr>
      <tr>
        <td>13</td>
        <td>Singapore</td>
        <td>31.53%</td>
        <td>68.47%</td>
      </tr>
      <tr>
        <td>14</td>
        <td>China</td>
        <td>31.18%</td>
        <td>68.82%</td>
      </tr>
      <tr>
        <td>15</td>
        <td>Uzbekistan</td>
        <td>28.62%</td>
        <td>71.38%</td>
      </tr>
      <tr>
        <td>16</td>
        <td>South Korea</td>
        <td>27.33%</td>
        <td>72.67%</td>
      </tr>
      <tr>
        <td>17</td>
        <td>Georgia</td>
        <td>20.50%</td>
        <td>79.50%</td>
      </tr>
      <tr>
        <td>18</td>
        <td>Qatar</td>
        <td>11.90%</td>
        <td>88.10%</td>
      </tr>
      <tr>
        <td>19</td>
        <td>Taiwan</td>
        <td>15.26%</td>
        <td>84.74%</td>
      </tr>
    </tbody>
  </table><br><br>
   <!--Asia graph-->
  <canvas id="myChart2" width="1400px" height="800px" aria-label="chart" role="img"></canvas><br><hr style="background-color:red"><br><br>
  <!--World crime data-->
  <h2> 
 
Crime Statistics World Top Country Mid-Year 2020
</h2>
      
  <table class="table table-bordered  table-dark table-striped" style="width: 90%;text-align: center">
    <thead>
        <tr style="text-align:center;bacground-color:black;color:yellow">
        <th>Rank.</th>
        <th>Country Name</th>
        <th>Crime %</th>
         <th>Safety %</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>Venezuela</td>
        <td>84.36%</td>
         <td>15.64%</td>
      </tr>
       <tr>
        <td>2</td>
        <td>Afghanistan</td>
        <td>76.97%</td>
         <td>23.03%</td>
      </tr>
       <tr>
        <td>3</td>
        <td>	South Africa</td>
        <td>77.29%</td>
         <td>22.71%</td>
      </tr>
       <tr>
        <td>4</td>
        <td>Trinidad And Tobago</td>
        <td>72.43%</td>
         <td>27.57%</td>
      </tr>
       <tr>
        <td>5</td>
        <td>Syria</td>
        <td>67.42%</td>
         <td>32.58%</td>
      </tr>
       <tr>
        <td>6</td>
        <td>Brazil</td>
        <td>68.31%</td>
         <td>31.69%</td>
      </tr>
       <tr>
        <td>7</td>
        <td>Jamaica</td>
        <td>67.20%</td>
         <td>32.80%</td>
      </tr>
       <tr>
        <td>8</td>
        <td>Bangladesh</td>
        <td>63.82%</td>
         <td>36.18%</td>
      </tr>
       <tr>
        <td>9</td>
        <td>Malaysia</td>
        <td>58.55%</td>
         <td>41.45%</td>
      </tr>
       <tr>
        <td>10</td>
        <td>Mongolia</td>
        <td>57.47%</td>
         <td>42.53%</td>
      </tr>
       <tr>
        <td>11</td>
        <td>Kazakhstan</td>
        <td>54.81%</td>
         <td>45.19%</td>
      </tr>
       <tr>
        <td>12</td>
        <td>United States</td>
        <td>47.70%</td>
         <td>52.30%</td>
      </tr>
       <tr>
        <td>13</td>
        <td>United Kingdom</td>
        <td>44.54%</td>
         <td>55.46%</td>
      </tr>
       <tr>
        <td>14</td>
        <td>India</td>
        <td>44.42%</td>
         <td>55.58%</td>
      </tr>
       <tr>
        <td>15</td>
        <td>Italy</td>
        <td>44.24%</td>
         <td>55.76%</td>
      </tr>
       <tr>
        <td>16</td>
        <td>Pakistan</td>
        <td>44.18%</td>
         <td>55.82%</td>
      </tr>
       <tr>
        <td>17</td>
        <td>Nepal</td>
        <td>35.61%</td>
         <td>64.39%</td>
      </tr>
       <tr>
        <td>18</td>
        <td>Russia</td>
        <td>40.60%</td>
         <td>59.40%</td>
      </tr>
       <tr>
        <td>19</td>
        <td>China</td>
        <td>31.18%</td>
         <td>68.82%</td>
      </tr>
       <tr>
        <td>20</td>
        <td>Qatar</td>
        <td>11.90%</td>
         <td>88.10%</td>
      </tr>
       <tr>
        <td>21</td>
        <td>Taiwan</td>
        <td>15.26%</td>
         <td>84.74%</td>
      </tr>
       </tbody>
  </table><br><br>
  <!--World graph-->
   <canvas id="myChart1" width="1400px" height="800px" aria-label="chart" role="img"></canvas><br><hr style="background-color:red"><br><br>
     
  

   <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
   <script src="canvas.js"></script>
   <script src="canvas2.js"></script>
    <script src="canvas3.js"></script>
   <!--Asia graph-->
</div>

        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
   
    </body>
</html>
