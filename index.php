<?php
    include 'header.php';
    
    if(isset($_GET['listOf'])) {
        $_SESSION['currentUser']->displayListOfUser($_GET['listOf']);
    }else {
        $_SESSION['currentUser']->displayUsersTable();
    }
    
    include 'footer.php';
?>