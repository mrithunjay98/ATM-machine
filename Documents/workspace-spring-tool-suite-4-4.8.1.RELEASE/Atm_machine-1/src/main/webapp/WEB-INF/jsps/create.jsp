<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Details Form</title>
    <style>
        body {
            background-color: #000080;
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
            color: #0E16A5 ;
        }
          h3 {
            text-align: center;
            color: #0E16A5 ;
        }
         h4 {
            text-align: center;
            color: #0E16A5 ;
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
            background-color: #000080;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        
        input[type="submit"]:hover {
            background-color: #000080;
        }
        
       
        .link-style {
    color: #0F52EB;
}
    </style>
</head>
<body>
    <div class="container" >
    
        <h2>STATE BANK OF BIHAR</h2>
        
        
        
            
            
      <h4><a href="enterPin" class="link-style">Withdraw money </a></h4>  
      <h4><a href="changePIn"  class="link-style"> Change ATM pin</a></h4>
            
             <h4><a href="addMoney"  class="link-style"> Add Balance</a></h4>
        
        
        
        
       <h2> DONT HAVE ACCOUNT</h2>
        
        <h3>Create account</h3>
        <form action="save" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="city">City:</label>
            <input type="text" id="city" name="city" required>
            
            <label for="mob">Mobile Number:</label>
            <input type="text" id="mob" name="mob"  required>
            
            <label for="mob">Add money:</label>
            <input type="text" id="balance" name="balance"  required>
            
            <label for="atmPin"> Choose ATM Pin:</label>
            <input type="password" id="atmPin" name="atmPin" pattern="[0-9]{4}" required>
            
            <input type="submit" value="Submit">
            <P>
            
        </form>
    </div>
   
</body>
</html>

