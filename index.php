<?php
    include 'header.php';
    
    if(isset($_GET['listOf'])) {
        $_SESSION['currentUser']->displayListOfUser($_GET['listOf']);
    }else if(isset($_GET['form']) && $_GET['form']=='newListItem') {
        $_SESSION['currentUser']->displayNewListItemForm();
    }else if(isset($_POST['item'], $_POST['url'])) {
        $_SESSION['currentUser']->addListItem($_POST['item'], $_POST['url']);
    }else if(isset($_GET['form']) && $_GET['form']=='newUser') {
        $_SESSION['currentUser']->displayNewUserForm();
    }else if(isset($_POST['username'], $_POST['firstname'], $_POST['lastname'], $_POST['password1'], $_POST['password2'])) {
        if($_POST['username']=='' || $_POST['firstname']=='' || $_POST['lastname']=='' || $_POST['password1']=='' || $_POST['password2']=='') {
            $_SESSION['currentUser']->displayNewUserForm($_POST['username'], $_POST['firstname'], $_POST['lastname']);
            echo 'All fields are required.';
        }else if($_POST['password1']!=$_POST['password2']) {
            $_SESSION['currentUser']->displayNewUserForm($_POST['username'], $_POST['firstname'], $_POST['lastname']);
            echo 'Passwords must match.';
        }else {
            $_SESSION['currentUser']->addUser($_POST['username'], $_POST['firstname'], $_POST['lastname'], $_POST['password1']);
        }
        
    }else {
        $_SESSION['currentUser']->displayUsersTable();
    }
    
    include 'footer.php';
?>