<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title></title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    table {
      width: 100%;
      border-collapse: collapse;
    }
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #f8f9fa;
    }
    .jumbotron {
      background-color:#455EE7;
      color: #fff;
      padding: 12px 0;
      text-align: center;
      margin-bottom: 100px;
    }
    p.one {
      word-spacing: 120px;
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
      background-color: #C6140B; /* Change the background color here */
      color: #fff;
      padding: 10px;
      font-size: 15px;
      border-radius: 5px;
    }
    th, td {
      margin: 10px;
      padding: 5px;
      text-align: left;
      border-bottom: 2px solid #ddd;
      font-weight: bold;
      font-color: #0024C7;
    }
    th {
      background-color: black;
      color: white;
    }
    h1{
      font-color: #0024C7;
    }
    
    /* Custom class for link box color */
    .custom-link-box {
      background-color:#2FC70A !important; /* Change the box color here */
    }
    
    .center {
      margin: 0 auto; /* Center align the element */
      width: fit-content; /* Set width to fit content */
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

<div class="center">
 <center> <h1>Fee Structure</h1></center>

  <table>
    <tr>
      <th>Class</th>
      <th>Admission Fee</th>
      <th>Tuition Fee (per year)</th>
      <th>Transport Fee (per year)</th>
      <th>Total Fee (per year)</th>
    </tr>
    <tr>
      <td>1</td>
      <td>2000</td>
      <td>500</td>
      <td>100</td>
      <td>8000</td>
    </tr>
    <tr>
      <td>2</td>
      <td>2000</td>
      <td>500</td>
      <td>100</td>
      <td>8000</td>
    </tr>
    <tr>
      <td>3</td>
      <td>2000</td>
      <td>500</td>
      <td>100</td>
      <td>8000</td>
    </tr>
    <tr>
      <td>4</td>
      <td>2000</td>
      <td>500</td>
      <td>100</td>
      <td>8000</td>
    </tr>
    <tr>
      <td>5</td>
      <td>2000</td>
      <td>500</td>
      <td>100</td>
      <td>8000</td>
    </tr>
    <tr>
      <td>6</td>
      <td>3000</td>
      <td>1000</td>
      <td>150</td>
      <td>8000</td>
    </tr>
    <tr>
      <td>7</td>
      <td>3000</td>
      <td>1000</td>
      <td>150</td>
      <td>8000</td>
    </tr>
    <tr>
      <td>8</td>
      <td>2000</td>
      <td>1000</td>
      <td>150</td>
      <td>14000</td>
    </tr>
    <tr>
      <td>9</td>
      <td>2000</td>
      <td>1200</td>
      <td>150</td>
      <td>15000</td>
    </tr>
    <tr>
      <td>10</td>
      <td>2000</td>
      <td>1200</td>
      <td>150</td>
      <td>15000</td>
    </tr>
  </table>
</div>

</body>
</html>
