<?php
require_once __DIR__ . '/DataBase.php';
// Create User Function
function InsertUser($fullName, $pass, $email, $phone)
{
    global $conn;

    // 1. Check if email already exists
    // We run a select query to count rows with this email
    $checkQuery = "SELECT * FROM users WHERE email = '$email'";
    $checkResult = mysqli_query($conn, $checkQuery);

    // If we find any row, it means email exists
    if (mysqli_num_rows($checkResult) > 0) {
        return "email_exists"; 
    }

    // 2. If email does NOT exist, proceed to Insert
    $query = "INSERT INTO users (name, email, password, phone) 
              VALUES ('$fullName', '$email', '$pass', '$phone')";

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