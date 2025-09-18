<?php
session_start();

// Check if user is logged in
if (!isset($_SESSION['user_id'])) {
    // Redirect to login page or any other appropriate page
<<<<<<< HEAD
    header("Location:../frontend/login/login.php");
=======
    header("Location: ../login.php");
>>>>>>> 7bacc223da19858204fc9f45dc2a5380406a0e20
    exit();
}

// Unset all of the session variables
$_SESSION = array();

// Completely destroy the session
session_destroy();

// Prevent caching
header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");

// Redirect to the login page
<<<<<<< HEAD
header("Location:../frontend/login/login.php");
=======
header("Location: ../login.php");
>>>>>>> 7bacc223da19858204fc9f45dc2a5380406a0e20
exit();
?>
