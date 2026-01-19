<?php
require_once __DIR__ . '/DataBase.php';
// Create User Function
function InsertUser($fullName, $pass, $email, $phone, $user_type)
{
    global $conn;

    $checkQuery = "SELECT * FROM users WHERE email = '$email'";
    $checkResult = mysqli_query($conn, $checkQuery);

    if (mysqli_num_rows($checkResult) > 0) {
        return "email_exists"; 
    }

    // ✅ user_type inserted
    $query = "INSERT INTO users (name, email, password, phone, user_type) 
              VALUES ('$fullName', '$email', '$pass', '$phone', '$user_type')";

    $result = mysqli_query($conn, $query);

    if ($result) {
        return true;
    } else {
        return false;
    }
}


// --- Login Function ---
function Login($email, $pass)
{
    global $conn;

    // Select user where email AND password match
    $query = "SELECT * FROM users WHERE email = '$email' AND password = '$pass'";
    
    $result = mysqli_query($conn, $query);

    // If a row is found, login is successful
    if (mysqli_num_rows($result) > 0) {
        // Fetch the user data (id, name, etc.) to store in Session later
        $user = mysqli_fetch_assoc($result);
        return $user; 
    } else {
        return false;
    }
}
?>