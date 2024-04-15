<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>School Management System</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

<style>
  body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f8f9fa;
    margin: 0;
    padding: 0;
  }
  .jumbotron {
    background-color:#455EE7;
    color: #fff;
    padding: 1px 0;
    text-align: center;
    margin-bottom: 30px;
  }
  .btn-container {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
  }
   .btn-container .btn, .btn-container .link-box {
      margin: 10px;
      width: 150px;
      font-size: 15px;
      background-color:#28BA0B;
      color: #fff;
      border: none;
      border-radius: 25px;
      text-decoration: none;
      text-align: center;
      padding: 10px 20px;
      transition: background-color 0.3s, color 0.3s;
      display: flex;
      align-items: center;
      justify-content: center;
       font-weight: bold;
    }
    .btn-container .btn:hover, .btn-container .link-box:hover {
      background-color: #fff;
      color: #040D7A;
    }
  .header-text {
    font-size: 36px;
    font-weight: bold;
    margin-bottom: 30px;
     font-family: 'Times New Roman';
      letter-spacing: 0.1em;
       word-spacing: 0.5em; /* Add space between letters */
  }
  marquee {
    background-color:  #C6140B;
    color: #fff;
    padding: 10px;
    font-size: 15px;
    border-radius: 5px;
  }
  .container {
  
    margin-top: 20px;
  }
  .infrastructure {
    text-align: center;
    margin-bottom: 20px;
  }
  .infrastructure img {
    margin: 10px;
    width: 50px;
  }

    /* Custom class for link box color */
    .custom-link-box {
      background-color:#2FC70A !important; /* Change the box color here */
    }
    .dropbtn {
      margin: 10px;
      width: 150px;
      font-size: 15px;
     border-radius: 25px;
  background-color: #04AA6D;
  color: white;
     padding: 10px 20px;
  font-size: 16px;
   background-color:#28BA0B;
      color: #fff;
       font-weight: bold;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color:#455EE7;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: white;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #28BA0B;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}


.zoom {
  overflow: hidden;
  position: relative;
}

.zoom img {
   padding: 0 150px;
  width: 100%;
  height: auto;
  transition: transform 0.3s ease;
  margin-bottom: 120px;
  animation: zoomAnimation 5s infinite alternate; /* Change the animation duration as needed */
}

@keyframes zoomAnimation {
  from {
    transform: scale(1);
  }
  to {
    transform: scale(1.2);
  }
}

    
  </style>
</head>
<body>
<marquee behavior="scroll" direction="left">Children are the future of our India let's educate them</marquee>
<div class="jumbotron">
  <div class="container">
    <h1 class="header-text">GYAN JYOTI  PUBLIC SCHOOL</h1>
    <div class="btn-container">
      <a href="/home" class="btn btn-primary custom-link-box">Home</a>
      <a href="" class="btn btn-primary custom-link-box">Gallery</a>
      <a href="/fees" class="btn btn-primary custom-link-box">Fees structure</a>
      
         <a href="/about" class="btn btn-primary custom-link-box">About us</a>
       <div class="dropdown">
  <button class="dropbtn">Login</button>
  <div class="dropdown-content">
    <a href="#">Principle</a>
    <a href="/classteacherLogin">class teacher</a>
    <a href="#"> Student</a>
  </div>
</div>
      </div>
     
    </div>
  </div>


  <div class="zoom">
 <img src="school.jpeg" alt="School Image">
 </div>
  <h3 class="infrastructure">Infrastructure</h3>
  <div class="infrastructure">
    <img src="icon-playground.png" alt="Playground">
    <img src="icon-laboratory.png" alt="Laboratory">
    <img src="icon-campus-tour.png" alt="Campus Tour">
    <img src="icon-cctv.png" alt="CCTV">
  </div>
  <p>Playground &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lab &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Campus &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CCTV</p>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
