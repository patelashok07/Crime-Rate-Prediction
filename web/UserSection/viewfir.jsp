<%-- 
    Document   : viewfir
    Created on : 1 Dec, 2020, 8:58:52 PM
    Author     : dell
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import=" java.io.IOException, java.io.PrintWriter, static java.lang.System.out,java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet,java.sql.SQLException,java.sql.Statement,java.util.logging.Level,java.util.logging.Logger,javax.servlet.ServletException,javax.servlet.http.HttpServlet, javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Fir</title>
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
        
        table {
            border-color: black;
            border-radius: 3px;
            border-collapse: collapse;
            margin-top: 5%;
         margin-left: 4%;
            border: 4px solid gray;
            border-style: ridge;
            border-top: none;
            width: 93%;
        }
        
        tr,
        th,
        td {
            padding: 15px;
            border: 6px solid rgb(218, 209, 209);
            border-style: ridge;
            border-top: none;
            text-align: center;
        }
        
        tr:nth-child(odd) {
            background-color: rgb(184, 176, 176);
            
                font-size:18;
        }
        
        tr:nth-child(even) {
            background-color: lightgrey;
             font-size:18;
        }
        
        tr:nth-child(1) {
            background-color: gray;
            font-size: 20;
            font-family: fantasy;
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
                    <a class="nav-link" href="userSection.jsp"><i class="fa fa-home fa-1x" aria-hidden="true"style="color:red"></i>&nbsp;&nbsp;HOME<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addfir.jsp"><i class="fa fa-address-card" style="color:red"></i>&nbsp;&nbsp;ADD NEW FIR</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="pro.jsp"><i class="fa fa-puzzle-piece" aria-hidden="true" style="color:red"></i>&nbsp;&nbsp;ALLOTED OFFICER</a>
                </li>
               
                <li class="nav-item">
                    <a class="nav-link" href="typesofcrime.html"><i class="fa fa-pie-chart" aria-hidden="true" style="color:red"></i>&nbsp;&nbsp;TYPES OF CRIMES</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewfir.jsp"  style="color: black;
            background-color: whitesmoke;text-shadow: hotpink;"><i class="fa fa-list" aria-hidden="true" style="color:red"></i>&nbsp;&nbsp;VIEW FIR</a>
                </li>
                    <li class="nav-item myname" data-toggle="modal" data-target="#myModal" style="float:rigth;position: absolute;right: 10px">
               <a class="nav-link" href="#"></a>
                </li>
               
              

            </ul>

        </div>
         </nav>
        <%!
            
      private Connection conn;
      private Statement st;
        %>
        <% 
            try
            {
Class.forName("oracle.jdbc.OracleDriver");
System.out.println("driver load susseccfully");
conn=DriverManager.getConnection("jdbc:oracle:thin:@//DESKTOP-IB4S84P:1521/XE","javabatch","myscholars");
System.out.println("connection open");
            }
 catch(Exception ex)
{
System.out.println("exception in init "+ex);
ServletException se=new ServletException();
throw se;
}

            try
             {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ViewFir</title>"); 
       
            out.println("</head>");
             out.println("<body>");
           
            st =conn.createStatement();
           ResultSet rs=st.executeQuery("select name,crime,address,gender,date_crime,city,state from fir");
             out.println("<table border='2' align='centre'>");
             int i=0;
              out.println("<tr id='a'><th>S.No</th><th>Suspect Name</th><th>Crime Name</th><th>Address</th><th>Gender</th><th>Date Crime</th><th>City</th><th>State</th></tr>");
           while(rs.next())
           {
                String name=rs.getString(1);
                String crime=rs.getString(2);
                 String address=rs.getString(3);

                  String gender=rs.getString(4);
                String date=rs.getString(5);
                 String city=rs.getString(6);
                 String state=rs.getString(7);
i++;

               out.println("<tr id='a'><td>"+i+"</td><td>"+name+"</td><td>"+crime+"</td><td>"+address+"</td><td>"+gender+"</td><td>"+date+"</td><td>"+city+"</td><td>"+state+"</td></tr>");
                
            }
             
            out.println("</table>");
           
           
            
            out.println("</body>");
            out.println("</html>");
             }
        catch(SQLException ex)
         {
        System.out.println("exception in dopost");
        out.println("please come some time later");
           }
        %>
       
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
    </body>
</html>
