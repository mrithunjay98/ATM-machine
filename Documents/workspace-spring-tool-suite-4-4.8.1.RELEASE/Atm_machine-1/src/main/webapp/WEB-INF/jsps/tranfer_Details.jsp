<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Details Form</title>
    <style>
        body {
            background-color: #0757DA;
            font-family: Arial, sans-serif;
        }
        
        .container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        
        h2 {
            text-align: center;
            color: #004884;
        }
        
        label {
            display: block;
            margin-bottom: 6px;
            color: #666;
        }
        
        input[type="text"],
        input[type="tel"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #004884;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        
        input[type="submit"]:hover {
            background-color: #00345a;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Enter Transfer Details</h2>
        <form action="transferUpdate" method="post">
        
             <label for="atmPin">  </label>
            <input type="hidden" value="${user.accountNumber}" id="amount" name="accountSender" " required>
            
             <label for="atmPin">  Receiver Account number:</label>
            <input type="text" id="amount" name="accountReceiver" "required>
            
             <label for="atmPin">  Receiver Account name:</label>
            <input type="text" id="amount" name="name" " required>
            
            <label for="atmPin">  Amount:</label>
            <input type="text" id="amount" name="amount" " required>
            
            <label for="atmPin">  </label>
            <input type="hidden" id="atmPin"  value="${user.atmPin}"name="atmPin" pattern="[0-9]{4}" required>
            
            <input type="submit" value="Submit">
            <h3><a href="create">Go to main menu</a></h3>
            
            
        </form>
    </div>
</body>
</html>
</body>
</html>