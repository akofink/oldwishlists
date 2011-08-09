<?php
    include 'implementation.php';
    echo '
            <!DOCTYPE html>
            <head>
            <title>Christmas Lists</title>
            <link rel="stylesheet" type="text/css" href="style.css" />
            </head>
            <body>
            ';
    if(!isset($_SESSION['currentUser'])) {
        session_start();
        $_SESSION['currentUser'] =  new User;
    }
    $_SESSION['currentUser']->dbConnect();
?>