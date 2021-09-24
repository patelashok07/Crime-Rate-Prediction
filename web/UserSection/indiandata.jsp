<%-- 
    Document   : indiandata
    Created on : 6 Dec, 2020, 12:54:57 PM
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
      
       
        label{
            color: white
        }
       
        h2{
            color: white;
            text-align:center;
            font-family:serif;
        }
        .tab{
            margin-top:6%;
            
        }
        .cont table{
           
            margin-left: 5%;
        }
        .cont{
            margin-top: 5%;
            
            text-align: centre;
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
        #desc{
            color:wheat;
            margin-left: 5%;
            
            font-family:monospace;
            font-size: 20px;
            
            
            
            
           
        }
        <!--search bar-->
        * {
  box-sizing: border-box;
}

#myInput {
  
  background-position: 10px 12px;
  background-repeat: no-repeat;
  width: 90%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myUL {
  list-style-type: none;
  padding: 0;
  margin: 0;
  display: none;
}

#myUL li a {
  border: 1px solid #ddd;
  margin-top: -1px; /* Prevent double borders */
  background-color: #f6f6f6;
  padding: 12px;
  text-decoration: none;
  font-size: 18px;
  color: black;
  display: block
}

#myUL li a:hover:not(.header) {
  background-color: #eee;
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
                    <a class="nav-link" href="addfir.jsp" ><i class="fa fa-address-card"style="color:red"></i>&nbsp;&nbsp;ADD NEW FIR</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="pro.jsp"><i class="fa fa-puzzle-piece" aria-hidden="true"style="color:red"></i>&nbsp;&nbsp;ALLOTED OFFICER</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="typesofcrime.html" ><i class="fa fa-pie-chart" aria-hidden="true" style="color:red"></i>&nbsp;&nbsp;TYPES OF CRIMES</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewfir.jsp"><i class="fa fa-list" aria-hidden="true"style="color:red"></i>&nbsp;&nbsp;VIEW ALL FIR</a>
                </li>
               
               
                 <li class="nav-item myname" data-toggle="modal" data-target="#myModal" style="float:rigth;position: absolute;right: 10px">
               <a class="nav-link" href="#"></a>
                </li>
              

            </ul>

        </div>
    </nav>
        <div class="container-fluid cont">
            <h2>Absolute number of reported crimes & crime rates across India </h2><br><hr style="background-color: white"><br>
            <div id="d1">
                <span class="h2 text-left text-warning">India</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="h2 text-left text-white">5156172<small class="text-muted">- 2019</small></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <span class="h2 text-left text-white">5074635<small class="text-muted">- 2018</small></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <span class="h2 text-left text-white">5007044<small class="text-muted">- 2017</small></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <span class="h2 text-left text-white">4831515<small class="text-muted">- 2016</small></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 
            </div>
            <br>
            <br>
            
            <!--table data-->
       <table class="table table-bordered  table-dark table-striped" style="width: 90%;text-align: center"><br><hr style="background-color:red"><br>
    <thead>
        <tr style="text-align:center;bacground-color:black;color:yellow">
        <th>Rank.</th>
        <th>State/UT</th>
        <th>2017</th>
         <th>2018</th>
          <th>2019</th>
           <th>Percentage Share Of State/UT</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>Uttar Pradesh</td>
          <td>600082</td>
            <td>585157</td>
              <td>628578</td>
                <td>12.2</td>
      </tr>
       <tr>
        <td>2</td>
       <td>Maharashtra</td>
          <td>467753</td>
            <td>515674</td>
              <td>509443</td>
                <td>9.9</td>
      </tr>
       <tr>
        <td>3</td>
       <td>Kerala</td>
          <td>653500</td>
            <td>512167</td>
              <td>453083</td>
                <td>8.8</td>
      </tr>
       <tr>
        <td>4</td>
       <td>Tamil Nadu</td>
          <td>420876</td>
            <td>499188</td>
              <td>455094</td>
                <td>8.8</td>
      </tr>
       <tr>
        <td>5</td>
        <td>Gujarat</td>
          <td>334799</td>
            <td>393194</td>
              <td>431066</td>
                <td>8.4</td>
      </tr>
       <tr>
        <td>6</td>
       <td>Madhya Pradesh</td>
          <td>379682</td>
            <td>405129</td>
              <td>395619</td>
                <td>7.7</td>
      </tr>
       <tr>
        <td>7</td>
       <td>Rajasthan</td>
          <td>245553</td>
            <td>250546</td>
              <td>304394</td>
                <td>5.9</td>
      </tr>
       <tr>
        <td>8</td>
       <td>Bihar</td>
          <td>236055</td>
            <td>262815</td>
              <td>269109</td>
                <td>5.2</td>
      </tr>
       <tr>
        <td>9</td>
       <td>Delhi</td>
          <td>244714</td>
            <td>262612</td>
              <td>316261</td>
                <td>5.2</td>
      </tr>
       <tr>
        <td>10</td>
      <td>West Bengal</td>
          <td>195537</td>
            <td>188063</td>
              <td>17890</td>
                <td>3.6</td>
      </tr>
       <tr>
        <td>11</td>
      <td>Haryana</td>
          <td>224816</td>
            <td>191229</td>
              <td>166336</td>
                <td>3.2</td>
      </tr>
      <tr>
        <td>12</td>
      <td>Karnataka</td>
          <td>184063</td>
            <td>163416</td>
              <td>163691</td>
                <td>3.2</td>
      </tr>
      <tr>
        <td>13</td>
      <td>Andhra Pradesh</td>
          <td>148002</td>
            <td>144703</td>
              <td>145751</td>
                <td>2.8	</td>
      </tr>
       <tr>
        <td>14</td>
       <td>Assam</td>
          <td>109952</td>
            <td>120572</td>
              <td>123783</td>
                <td>2.6</td>
      </tr>
       <tr>
        <td>15</td>
       <td>Telangana</td>
          <td>133197</td>
            <td>126858</td>
              <td>131254</td>
                <td>2.5</td>
      </tr>
       <tr>
        <td>16</td>
       <td>Odisha</td>
          <td>103866</td>
            <td>107408</td>
              <td>121525</td>
                <td>2.4</td>
      </tr>
      
       <tr>
        <td>17</td>
      <td>Chhattisgarh</td>
          <td>90516</td>
            <td>98233</td>
              <td>96561</td>
                <td>1.9</td>
      </tr>
       <tr>
        <td>18</td>
      <td>Punjab</td>
          <td>70673</td>
            <td>70318</td>
              <td>72855</td>
                <td>1.4</td>
      </tr>
       <tr>
        <td>19</td>
<td>Jharkhand</td>
          <td>52664</td>
            <td>55664</td>
              <td>62206</td>
                <td>1.2</td>
      </tr>
       <tr>
        <td>20</td>
        <td>Jammu and Kashmir</td>
          <td>25608</td>
            <td>27276</td>
              <td>25408</td>
                <td>0.5</td>
      </tr>
       <tr>
        <td>21</td>
        <td>Uttarakhand</td>
          <td>28861</td>
            <td>34715</td>
              <td>28268</td>
                <td>0.5</td>
      </tr>
       <tr>
        <td>22</td>
      <td>Himachal Pradesh</td>
          <td>17796</td>
            <td>19594</td>
              <td>19924</td>
                <td>0.4</td>
      </tr>
       <tr>
        <td>23</td>
       <td>Arunachal Pradesh</td>
          <td>2746</td>
            <td>2817</td>
              <td>2877</td>
                <td>0.1</td>
      </tr>
       <tr>
        <td>24</td>
      <td>Goa</td>
          <td>3943</td>
            <td>3884</td>
              <td>3727</td>
                <td>0.1</td>
      </tr>
       <tr>
        <td>25</td>
      <td>Manipur</td>
          <td>4250</td>
            <td>3781</td>
              <td>3661</td>
                <td>0.1</td>
      </tr>
       <tr>
        <td>26</td>
       <td>Meghalaya</td>
          <td>3952</td>
            <td>3482</td>
              <td>3897</td>
                <td>0.1</td>
      </tr>
      <tr>
          <td>27</td>
           <td>Mizoram</td>
            <td>2738</td>
             <td>2351</td>
              <td>2880</td>
               <td>0.1</td>
      </tr>
       <tr>
          <td>28</td>
           <td>Andaman and Nicobar Islands</td>
            <td>3014</td>
             <td>3699</td>
              <td>4034</td>
               <td>0.1</td>
      </tr>
       <tr>
          <td>29</td>
           <td>Dadra and Nagar Haveli</td>
            <td>309</td>
             <td>315</td>
              <td>290</td>
               <td>0.0</td>
      </tr>
       <tr>
          <td>30</td>
           <td>Lakshadweep</td>
            <td>114</td>
             <td>77</td>
              <td>182</td>
               <td>0.0</td>
      </tr>
      =
       </tbody>
  </table><br><br> 
  <!--indian crime by graph-->
  <canvas id="myChart5" width="1400px" height="800px" aria-label="chart" role="img"></canvas><br><br><br>
  <!--line represtation-->
  <canvas id="myChart6" width="1400px" height="800px" aria-label="chart" role="img"></canvas><br><hr style="background-color:red"><br><br>
       <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
   <script src="canvas5.js"></script>   
  <script src="canvas6.js"></script>  
   <h2 style="text-decoration: underline">Explore Indian Violent Crimes By Types.. </h2><br><br>
   <div id="desc">
       In a violent crime, a victim is harmed by or threatened with violence. Violent crimes include rape and sexual assault, robbery, assault and murder.<br>
       We concentrate on a class of well recognized violent. crimes in India: murder, attempt to murder, culpable. homicide not amounting to murder (manslaughter), rape, kidnapping and abduction, dacoity (armed robbery), and. robbery.<br>
       As of 2019,. ... But in terms of absolute number of cases, Uttar Pradesh reported the highest incidence of violent crimes accounting for 15.2% of total violent crimes in India (65,155 out of 4,28,134) followed by Maharashtra (10.7%), and Bihar and West Bengal each accounting for 10.4% of such cases.<br>
       <br><br>
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="pics/voilent1.jpg" alt="First slide" width="" height="300">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="pics/voilent5.jpg" alt="Second slide" width="" height="300">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="pics/violent4.jpg" alt="Third slide" width="" height="300">
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
        <!--voilent crime table-->
          <table class="table table-bordered  table-dark table-striped" style="width: 90%;text-align: center"><br><hr style="background-color:red"><br>
    <thead>
        <tr style="text-align:center;bacground-color:black;color:yellow">
        <th>S-NO.</th>
        <th>Name Of Violent Crime</th>
        <th>Number Of cases Reported</th>
         
      </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Kidnapping & abduction</td>
            <td>105,037</td>
        </tr>
         <tr>
            <td>2</td>
            <td>Grievous hurt</td>
            <td>89115</td>
        </tr>
         <tr>
            <td>3</td>
            <td>Attempt To Commit Murder</td>
            <td>51254</td>
        </tr>
         <tr>
            <td>4</td>
            <td>Rioting</td>
            <td>46209</td>
        </tr>
         <tr>
            <td>5</td>
            <td>Rape</td>
            <td>32033</td>
        </tr>
         <tr>
            <td>6</td>
            <td>Robbery</td>
            <td>31065</td>
        </tr>
         <tr>
            <td>7</td>
            <td>Murder</td>
            <td>28918</td>
        </tr>
         <tr>
            <td>8</td>
            <td>Arson</td>
            <td>8420</td>
        </tr>
         <tr>
            <td>9</td>
            <td>Attempt To Commit culpable homicide</td>
            <td>7766</td>
        </tr>
         <tr>
            <td>10</td>
            <td>Dowry Death</td>
            <td>7115</td>
        </tr>
         <tr>
            <td>11</td>
            <td>Attempt To Commit Rape</td>
            <td>3944</td>
        </tr>
         <tr>
            <td>12</td>
            <td>Dacoity</td>
            <td>3176</td>
        </tr>
    </tbody>
          </table>
        <br><br>
        <!--By graph-->
        
         <canvas id="myChart7" width="1400px" height="800px" aria-label="chart" role="img"></canvas><br><hr style="background-color:red"><br><br>
       
   <script src="canvas7.js"></script>  
   <!--Search bar-->
   <div class="container" style="height:500px">
       <h2>Violent Crime Of India By Types</h2>
 <div class="fontuser"> 
     <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search Crime names.." title="Type Crime"><img src="pics/search.png" style="background-color: white;width:50px;height: 50px">
 </div>

<ul id="myUL">
  <li><a href="violent crime/murder.jsp">Murder</a></li>
  <li><a href="#">Robbery</a></li>

  <li><a href="violent crime/rape.jsp">Rape</a></li>
  <li><a href="violent crime/dowryDeath.jsp">Dowry Death</a></li>

  <li><a href="#">Insult to the modesty of women</a></li>
  <li><a href="violent crime/kidnapping.jsp">Kidnapping and Abduction</a></li>
  <li><a href="#">Dacoity</a></li>
    <li><a href="#">Attempt to commit Murder</a></li>
     <li><a href="#">Assault on Women</a></li>
      <li><a href="#">Acid Attack</a></li>
</ul>

<script>
function myFunction() {
    var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName("li");
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
            ul.style.display = 'block';
             if (filter.length == 0) {
                ul.style.display = 'none';
            }

        } else {
            li[i].style.display = "none";
        }
    }
}
</script>
   </div>
       
   </div>
  
        </div>
        <div style="width: 100%;height: 40px;background-color: darkslategray;">
            
        </div>
             
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
    </body>
</html>