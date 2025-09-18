<?php
session_start();

include 'connection.php';

if (isset($_POST['submit'])) {
    $storedOTP  = $_SESSION['otp'] ?? '';
    $enteredOTP = $_POST['otp'] ?? '';
    $usern      = $_SESSION['email'] ?? '';

    if ($enteredOTP == $storedOTP) {
        $sql = "SELECT role FROM users WHERE username = ?";
        $stmt = $con->prepare($sql);
        $stmt->bind_param("s", $usern);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            $role = $row['role'];

            switch ($role) {
                case "System Administrator":
                    header('location: admin-dashboard.html');
                    exit();
                case "Prison Inspector":
                    header('location: prison-inspector.html');
                    exit();
                case "Security Manager":
                    header('location: security-manager.html');
                    exit();
                case "Discipline Officer":
                    header('location: discipline-officer.html');
                    exit();
                case "Record Officer":
                    header('location: record-officer.html');
                    exit();
                default:
                    $error = "Invalid role";
            }
        } else {
            $error = "User not found.";
        }
    } else {
        $error = "Incorrect OTP. Please try again.";
    }
} 
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Verify OTP</title>
    <link rel = "stylesheet" href="css/verify-otp.css">
</head>

<body>
    <div class="popup-container">
        <div class="otp-form">
            <h2>Verify OTP</h2>
            <?php if (isset($error)) { ?>
                <p><?php echo $error; ?></p>
            <?php } ?>

            <form method="post">
                <label for="otp">Enter OTP:</label>
                <input type="text" name="otp" id="otp" required>
                <button type="submit" name="submit">Verify OTP</button>
                <button class="cancel-btn" onclick="window.location.href='login.php';" type="button">Cancel</button>
            </form>
        </div>
    </div>
</body>
</html>