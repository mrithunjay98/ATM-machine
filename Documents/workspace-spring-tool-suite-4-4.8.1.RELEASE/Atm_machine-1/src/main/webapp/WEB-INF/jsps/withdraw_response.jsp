<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Details Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #000080;
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
        <h2> Your trasnsaction is sucessfull  please collect cash</h2>
         
        <?php
        // Retrieve form data
        $name = $_POST['name'];
     
        $Balance = $_POST['balance'];
        ?>
   <p><strong>Name:</strong> ${user.name}</p>
 <p><strong> withdraw amount </strong>${amount}</p>
 
        <p><strong>Your available Balance:</strong> ${user.balance}</p>
         
         
      
         
     
        <h3><a href="create">Go to main menu</a></h3>
    </div>
</body>
</html>

       
   
  