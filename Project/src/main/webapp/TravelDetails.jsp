<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rashika's Airline</title>
<style>
        body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
        body, html {
            height: 100%;
            line-height: 1.8;
        }
        body {
    margin: 0;
    padding: 0;
    font-family: sans-serif;
   background: linear-gradient(#329cb1c9, #111c29);
}
        .bgimg-1 {
            background-position: center;
            background-size: cover;
            background-image: url("img/plane.png");
            min-height: 100%;
        }
        .w3-bar .w3-button {
            padding: 16px;
        }
          .login-box {
      width: 400px;
    padding: 40px;
      transform: translate(-116%, -83%);
    background: white;
    box-sizing: border-box;
    box-shadow: 0 15px 25px rgb(0 0 0 / 60%);
    border-radius: 10px;
    position: relative;
    left: 70%;
    top: 331px;
  }
  
  .login-box h2 {
    margin: 0 0 30px;
    padding: 0;
      color: #111c29;
    text-align: center;
  }
  
  .login-box .user-box {
    position: relative;
  }
  .option{
  color:black;
  }
  .login-box .user-box input,.login-box .user-box select{
   width: 100%;
    padding: 10px 0;
    font-size: 16px;
    color: black;
    margin-bottom: 30px;
    border-bottom: 1px solid #111c29;
  }
  .login-box .user-box label {
    position: absolute;
    top: 0;
    left: 0;
    padding: 10px 0;
    font-size: 16px;
    color: white;
    pointer-events: none;
    transition: 0.5s;
  }  
  .login-box .user-box input:focus ~ label,
  .login-box .user-box input:valid ~ label{
    top: -20px;
    left: 0;
    color: #03e9f4;
    font-size: 12px;
  }
  
  .login-box form .design {
    position: relative;
    display: inline-block;
    padding: 10px 20px;
    color: #03e9f4;
    font-size: 16px;
    text-decoration: none;
    text-transform: uppercase;
    overflow: hidden;
    transition: 0.5s;
    margin-top: 40px;
    letter-spacing: 4px;
  }
  
  .login-box .design:hover {
    background: #03e9f4;
    color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 5px #03e9f4, 0 0 25px #03e9f4, 0 0 50px #03e9f4,
      0 0 100px #03e9f4;
  }
  
  .login-box a span {
    position: absolute;
    display: block;
  }
  
  .login-box a span:nth-child(1) {
    top: 0;
    left: -100%;
    width: 100%;
    height: 2px;
    background: linear-gradient(90deg, transparent, #03e9f4);
    animation: btn-anim1 1s linear infinite;
  }
  
  @keyframes btn-anim1 {
    0% {
      left: -100%;
    }
    50%,
    100% {
      left: 100%;
    }
  }
  
  .login-box a span:nth-child(2) {
    top: -100%;
    right: 0;
    width: 2px;
    height: 100%;
    background: linear-gradient(180deg, transparent, #03e9f4);
    animation: btn-anim2 1s linear infinite;
    animation-delay: 0.25s;
  }
  
  @keyframes btn-anim2 {
    0% {
      top: -100%;
    }
    50%,
    100% {
      top: 100%;
    }
  }
  
  .login-box a span:nth-child(3) {
    bottom: 0;
    right: -100%;
    width: 100%;
    height: 2px;
    background: linear-gradient(270deg, transparent, #03e9f4);
    animation: btn-anim3 1s linear infinite;
    animation-delay: 0.5s;
  }
  
  @keyframes btn-anim3 {
    0% {
      right: -100%;
    }
    50%,
    100% {
      right: 100%;
    }
  }
  
  .login-box a span:nth-child(4) {
    bottom: -100%;
    left: 0;
    width: 2px;
    height: 100%;
    background: linear-gradient(360deg, transparent, #03e9f4);
    animation: btn-anim4 1s linear infinite;
    animation-delay: 0.75s;
  }
  
  @keyframes btn-anim4 {
    0% {
      bottom: -100%;
    }
    50%,
    100% {
      bottom: 100%;
    }
  }
  label{
      color: #111c29;
}
    </style>
</head>
<body>
    <div class="w3-right w3-hide-small">
        <a href="Login.jsp" class="w3-bar-item w3-button">Admin Login</a>
    </div>
<section class="container-fluid bg">
    <section class="row justify-content-center">
        <div class="row">
            <div class="col">
                <h2 align="center" style="color:black;"><b>Airline Booking Form</b></h2>
                <br>
            </div>
        </div>
        <section class="col-sm-6 col-md-3" ">
            <img style=" position: absolute;
    left: -1pc;
    top: 6pc;
    height: 33pc;
    width: 85pc;"   src="http://www.myfreetextures.com/wp-content/uploads/2014/10/sky2.jpg" >
        </section>
        <section class="col-sm-6 col-md-3" 	 >
     --  <div class="login-box">
        <h2>Travel Details </h2>
        <form id="Login" action="travelDetailsServlet" method="post">
          <label for="Date">Date Of Travel</label>
  <div>
  <input type="date" id="Date" name="Date">
  </div>
  <label for="Source">Source</label>
<div>
<select name="Source" id="Source">  
    <option value="Hyderabad">Hyderabad</option>
     <option value="Hyderabad">Hyderabad</option>
      <option value="Hyderabad">Hyderabad</option>
       <option value="Hyderabad">Hyderabad</option>
        <option value="Hyderabad">Hyderabad</option>
         <option value="Hyderabad">Hyderabad</option>
          <option value="Hyderabad">Hyderabad</option>
     <option value="Hyderabad">Hyderabad</option>
      <option value="Hyderabad">Hyderabad</option>
       <option value="Hyderabad">Hyderabad</option>
        <option value="Hyderabad">Hyderabad</option>
         <option value="Hyderabad">Hyderabad</option>
          <option value="Goa">Goa</option>
</select>
</div>
<label for="Destination">Destination</label>
<div>
<select name="Destination" id="Destination"> 
       <option value="Goa">Goa</option>
       <option value="Goa">Goa</option>
       <option value="Goa">Goa</option>
       <option value="Bangalore">Bangalore</option>
        <option value="Bangalore">Bangalore</option>
         <option value="Bangalore">Bangalore</option>
     <option value="Mumbai">Mumbai</option>
      <option value="Mumbai">Mumbai</option>
     <option value="USA">USA</option>
     <option value="Delhi">Delhi</option>
     <option value="Delhi">Delhi</option>
     <option value="Delhi">Delhi</option>
     <option value="Delhi">Delhi</option>
      <option value="Hyderabad">Hyderabad</option>
</select>
</div>
                    <label for="persons">Number of Persons</label>
                <div class="user-box">
                    <select  id="persons" name="Persons">
                        <option class="option" value="1">1</option>
                        <option class="option" value="2">2</option>
                        <option class="option" value="3">3</option>
                        <option class="option" value="4">4</option>
                        <option class="option" value="5">5</option>
                        <option class="option" value="6">6</option>
                        <option class="option" value="7">7</option>
                        <option class="option" value="8">8</option>
                    </select>
                </div>
          <button type="submit" class="btn btn-success btn-block" value="Submit" style="    color: #333;
    background-color: cornflowerblue;
    border-color: cornflowerblue;">Search Flights</button>
        
        </form>
      </div>
        </section>
    </section>
</section>
<div class="footer" align="center">
</div>    
</body>
</html>

