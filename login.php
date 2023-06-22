<?php
if ($_SERVER["REQUEST_METHOD"]=== "POST"){
    $mysqli = require __DIR__."/database.php";
    $sql = sprintf("SELECT * FROM user
                    WHERE email = '%s'",
                    $mysqli->real_escape_string($_POST["email"]));

    $result = $mysqli->query($sql);
    $user = $result->fetch_assoc();

    echo "Logged in Successfully";
    

    session_start();
    $_SESSION["user_id"]= $user["id"];

    header("Location: index.php");
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
    <h1>login</h1>
    <form method="post">
    <div>
        <label for="email">Email</label>
        <input type="email" name="email", id="email">
    </div>
    <div>
        <label for="password">Password</label>
        <input type="password" name="password", id= "password">
    </div>
    <button>Log in</button>
    </form>
</body>
</html>