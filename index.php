<?php
$insert = false;
if(isset($_POST['name'])){
    //set connection variables
    $server = "localhost";
    $username = "root";
    $password = "";
    $dbname = "trip_data";

    //create connection
    $con = mysqli_connect($server, $username, $password, $dbname);

    //check for connection
    if(!$con){
        die("Connection to this database failed due to ".mysqli_connect_error());
    }
    // else{
    //     echo "Success Connecting to database";
    // }
    //connection variables
    $name=$_POST['name'];
    $age=$_POST['age'];
    $gender=$_POST['gender'];
    $email=$_POST['email'];
    $phone=$_POST['phone'];
    $address=$_POST['address'];

    $sql = "INSERT INTO `college_trip` ( `name`, `age`, `gender`, `email`, `phone`, `address`, `dt`) VALUES ('$name', '$age', '$gender', '$email', '$phone', '$address', current_timestamp());";
    // echo $sql;

    //execute query
    if($con->query($sql)==true){
        //flag for success
        $insert = true;
        // echo "Successful";
    }
    else{
        echo "Error: $sql <br> $con->error";
    }
    //close connection
    $con->close();
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Diu Trip Registration</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&family=Sriracha&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1>Welcome to NLJIET Diu trip Form</h1>
        <p>Enter your details to confirm your participation</p>
        <?php
        if($insert==true){
            echo "<p class=\"submitMsg\">Your response has been recorded</p>";
        }
        ?>
        <form action="index.php" method="post">
            <input type="text" name="name" id="name" placeholder="Enter your name">
            <input type="text" name="age" id="age" placeholder="Enter your age">
            <input type="text" name="gender" id="gender" placeholder="Gender">
            <input type="email" name="email" id="email" placeholder="Enter your email">
            <input type="phone" name="phone" id="phone" placeholder="Enter your phone number">
            <textarea name="address" id="address" cols="30" rows="10" placeholder="Enter your address"></textarea>
            <button type="submit" class="btn">Submit</button>
            <button type="reset" class="btn">Reset</button>
        </form>
    </div>
    <script src="index.js"></script>
    
</body>
</html>