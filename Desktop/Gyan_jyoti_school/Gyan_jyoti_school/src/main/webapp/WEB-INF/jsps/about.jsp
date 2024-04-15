<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Our School</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
 body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f8f9fa;
  }
  .jumbotron{
    background-color: #455EE7;
    color: #fff;
    padding: 1px 0;
    text-align: center;
     margin-bottom: 130px;
  }
  .jumbotron.foot{
    background-color:green;
    color: #ffff;
    padding: 20px 0;
    text-align: center;
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
 
  .container {
    max-width: 800px;
    margin: 50px auto;
  }
  h1 {
    font-size: 36px;
    font-weight: bold;
    margin-bottom: 30px;
  }
  p {
    font-size: 18px;
    line-height: 1.6;
  }
  marquee {
    background-color: #C6140B; /* Change the background color here */
    color: #fff;
    padding: 10px;
    font-size: 15px;
    border-radius: 5px;
  }
</style>
</head>
<body>
<marquee behavior="scroll" direction="left">Childrens are the future of our india lets educate them</marquee>
<div class="jumbotron">
  <div class="container">
    <h1 class="header-text">GYAN JYOTI PUBLIC SCHOOL</h1>
    <div class="btn-container">
      <a href="/home" class="btn btn-primary custom-link-box">Home</a>
      <a href="adminLoginUI.jsp" class="btn btn-primary custom-link-box">Login</a>
      <a href="/fees" class="btn btn-primary custom-link-box">Fees structure</a>
      <!-- Add custom class to change box color -->
      <a href="/about" class="btn btn-primary custom-link-box">About us</a>
    </div>
  </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<div class="container">
  <div class="jumbotron foot">
    <h1>About Our School</h1>
    <p>Welcome to Our School, where we strive for excellence in education and holistic development of our students.</p>
    <p>Our Mission:</p>
    <ul>
      <li>To provide quality education that fosters academic excellence.</li>
      <li>To cultivate a conducive learning environment that promotes creativity, critical thinking, and lifelong learning.</li>
      <li>To instill moral values, integrity, and social responsibility in our students.</li>
    </ul>
    <p>Our Vision:</p>
    <p>To be a leading institution in shaping future leaders who contribute positively to society.</p>
    <p>Contact Us:</p>
    <p>Email: info@ourschool.com</p>
    <p>Phone: +1234567890</p>
  </div>
</div>
</body>
</html>
