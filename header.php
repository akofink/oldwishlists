<?php
    include 'implementation.php';
    
    if(!isset($_SESSION['currentUser'])) {
        $_SESSION['currentUser'] = new User();
    }
    
    echo '
            <!DOCTYPE html>
            <head>
            <title>Christmas Lists</title>
            <link rel="stylesheet" type="text/css" href="style.css" />
            </head>
            <body>
            <div id="headerBar">
            <a href=".">Home</a>
            </div>
            ';
    
    if(isset($_COOKIE['username'], $_COOKIE['password']) && !$_SESSION['currentUser']->isLoggedIn()) {
        $_SESSION['currentUser']->loginUsingCookie($_COOKIE['username'], $_COOKIE['password']);
    }
    
    if($_SESSION['currentUser']->isLoggedIn()) {
        $_SESSION['currentUser']->displayLoggedInForm();
        if($_GET['form']=='logout') {
            $_SESSION['currentUser']->logout();
        }
    }else if(isset($_POST['form'], $_POST['username'], $_POST['password']) && $_POST['form']='login') {
        $_SESSION['currentUser']->login($_POST['username'], $_POST['password']);
    }else {
        User::displayLoginForm();
    }
?>