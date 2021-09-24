<%-- 
    Document   : admin_login.jsp
    Created on : 28 Nov, 2020, 9:08:22 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Paqe</title>

        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
       
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
        body{
            background-image:url("pics/s1.jpg");
        
         }
        .card{
        
        background-color:white
         }
         main{
             margin-top: 7%;
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
        .card-body a{
            text-decoration: none;
            font-size: 20px;
            background-color:green;
            padding: 5px ;
            color: white;
           
             padding-left: 5px;
              padding-right: 5px;
             
        }
       
        
        </style>
        <script>
            function run(){
              let frm=document.frm;
              let email=frm.email.value;
               console.log(email);
             let pass1=frm.pass1.value;
             let pass2=frm.pass2.value;
             let mess=document.getElementById("mess");
             if(email=="ashok123@gmail.com" && pass1=="ashok@123" && pass2=="ashok@123")
             {
                 mess.innerHTML="Success...";
                   mess.style.color="green";
                   setInterval(()=>{
                       return true;  
                   },3000);
                 
             }
             else if(email.length==0 ||pass1.length==0 || pass2.length==0)
                 
        {
            mess.innerHTML="Every Field is Required...";
                   mess.style.color="crimson";  
                      return false;
        }
             else{
               mess.innerText="OOPS!..Invalid Details";  
               mess.style.color="red";
                  return false;
             }
                
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

     
        <main class="d-flex align-items-center primary-background banner-background" style="height: 70vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">

                        <div class="card">
                            <div class="card-header bg-warning text-black text-center">
                                <span style="color:blue;"class="fa fa-user-plus fa-3x"></span>
                                <br>
                                <p style="color:black;">Login to your Account</p>
                                <span id="mess" style="font-size:18px"></span>
                            </div>




                            <div class="card-body">
                                <form name="frm">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your email" >
                                       
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input name="pass1" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter your password"  >
                                    </div>
                                     <div class="form-group">
                                        <label for="exampleInputPassword1">Re-Password</label>
                                        <input name="pass2" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter your password"  >
                                    </div>


                                    <div class="container text-center">
                                        <a href="adminSection.html"   onclick=" return run()">Login</a> 
                                    </div>
                             
                                  </form>
                            </div>


                        </div>



                    </div>


                </div>

            </div>

        </main>




        <!--javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        

    </body>
</html>
