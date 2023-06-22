<?php

if(empty($_POST["name"])){
    die("Name is required"); 
}
if(! filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)){
    die("Valid email is required");
}
if(strlen($_POST["password"])<8){
    die("Password must be at least 8 characters");
}
if ($_POST["password"] !== $_POST["confirmpassword"]){
    die("Password must match");
}
$password_hash = password_hash($_POST["password"], PASSWORD_DEFAULT);

$sqli = require __DIR__."/database.php";
$sql ="INSERT INTO user(name, email , password_hash)
        VALUES(?, ?, ?)";
$stmt= $mysqli->stmt_init();

if(! $stmt->prepare($sql)){
    die("SQL error:" . $mysqli->error);
}
$stmt->bind_param("sss",
                $_POST["name"],
                $_POST["email"],
                $password_hash);

header("Location: signupsuccess.html");
exit;

?>