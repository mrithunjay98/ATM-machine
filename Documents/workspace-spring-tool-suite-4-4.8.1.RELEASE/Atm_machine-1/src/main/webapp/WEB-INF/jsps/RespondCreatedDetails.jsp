<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Details Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #0757DA;
            padding: 20px;
        }
        .confirmation-box {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: 0 auto;
        }
        .confirmation-box h2 {
            margin-top: 0;
            color: #333;
        }
        .confirmation-box p {
            margin: 10px 0;
            line-height: 1.6;
        }
    </style>
</head>
<body>
    <div class="confirmation-box">
        <h2>User Details Confirmation</h2>
        <?php
        // Retrieve form data
        $name = $_POST['name'];
        $city = $_POST['city'];
        $mob = $_POST['mob'];
        $Total balance = $_POST['balance'];
$account number = $_POST['account number'];
        ?>
   <p><strong>Name:</strong> ${user.name}</p>
   <p><strong>City:</strong> ${user.city}</p>
  <p><strong>Mobile Number:</strong> ${user.mob}</p>
    <p><strong>Total balance:</strong> ${user.balance}</p>
        <p><strong>Account number:</strong> ${user.accountNumber}</p> 
        <p>Your account is created successfully. Now you can use the ATM to withdraw your money.</p>
        <h3><a href="create">Go to main menu</a></h3>
    </div>
</body>
</html>

       
   
  