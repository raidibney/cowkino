<?php
session_start(); // Start session to store messages
require_once '../model/DataBase.php';
require_once '../model/users.php';

if (isset($_POST['submit'])) {

    // 1. Sanitize Inputs
    $fullname = trim($_POST['fullname']);
    // PARSE EMAIL TO LOWERCASE HERE
    $email = strtolower(trim($_POST['email'])); 
    $phone = trim($_POST['phone']);
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];

    // 2. Validation Logic
    if (empty($fullname) || empty($email) || empty($phone) || empty($password)) {
        $_SESSION['error_msg'] = "All fields are required!";
        header('location: ../view/register.php');
        exit;
    }

    if ($password !== $confirm_password) {
        $_SESSION['error_msg'] = "Passwords do not match!";
        header('location: ../view/register.php');
        exit;
    }

    // 3. Call Model to Insert User
    $status = InsertUser($fullname, $password, $email, $phone);

    if ($status === true) {
        // Success: Optional success message for login page
        $_SESSION['success_msg'] = "Account created successfully! Please login.";
        header('location: ../view/login.php');
        exit;
    } elseif ($status === "email_exists") {
        // Error: Email taken
        $_SESSION['error_msg'] = "This email is already registered!";
        header('location: ../view/register.php');
        exit;
    } else {
        // Error: Database failed
        $_SESSION['error_msg'] = "System error. Could not create account.";
        header('location: ../view/register.php');
        exit;
    }
} else {
    // If someone tries to access this file directly without submitting form
    header('location: ../view/register.php');
    exit;
}