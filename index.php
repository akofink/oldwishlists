<?php
    include 'header.php';
    echo '<h1>Christmas Lists</h1>';
    if(isset($_GET['listOf'])) {
        if(isset($_GET['changeStatusOf'])) {
            $_SESSION['currentUser']->changeStatusOf($_GET['changeStatusOf']);
        }
        $_SESSION['currentUser']->displayListOfUser($_GET['listOf']);
    }else if(isset($_GET['form']) && $_GET['form']=='newListItem') {
        $_SESSION['currentUser']->displayNewListItemForm();
    }else if(isset($_POST['item'], $_POST['url'])) {
        if($_POST['url']=='' || filter_var($_POST['url'], FILTER_VALIDATE_URL)) {
            $_SESSION['currentUser']->addListItem($_POST['item'], $_POST['url']); 
        }else {
            echo '
                Invalid URL
                <meta http-equiv="refresh" content="1;url=.?form=newListItem" />
                ';
        }
    }else if(isset($_GET['form'])) {
        if($_GET['form']=='newUser') {
            $_SESSION['currentUser']->displayNewUserForm();
        }else if($_GET['form']=='account') {
            $_SESSION['currentUser']->displayEditAccountForm();
        }else if($_GET['form']=='deleteAccount') {
            if($_GET['verified']) {
                $_SESSION['currentUser']->deleteAccount();
            }else {
                echo '
                    Are you sure you want to delete your account, '.$_SESSION['currentUser']->username.'?<br />
                    <a href=".?form=deleteAccount&verified=true">Yes</a> <a href=".">No</a>
                    ';
            }
        }
    }else if(isset($_POST['firstname'], $_POST['lastname'])) {
        if($_POST['editAccount']) {
            $_SESSION['currentUser']->editAccount($_POST['firstname'], $_POST['lastname']);
        }else if(isset($_POST['username'], $_POST['password1'], $_POST['password2'])) {
            if($_POST['username']=='' || $_POST['firstname']=='' || $_POST['lastname']=='' || $_POST['password1']=='' || $_POST['password2']=='') {
                $_SESSION['currentUser']->displayNewUserForm($_POST['username'], $_POST['firstname'], $_POST['lastname']);
                echo 'All fields are required.';
            }else if($_POST['password1']!=$_POST['password2']) {
                $_SESSION['currentUser']->displayNewUserForm($_POST['username'], $_POST['firstname'], $_POST['lastname']);
                echo 'Passwords must match.';
            }else {
                $_SESSION['currentUser']->addUser($_POST['username'], $_POST['firstname'], $_POST['lastname'], $_POST['password1']);
            }
        }
    }else if(isset($_POST['oldPassword'], $_POST['password1'], $_POST['password2'])) {
        $passwordArr = mysql_fetch_assoc(mysql_query('select sha("'.$_POST['oldPassword'].'")'));
        if($passwordArr['sha("'.$_POST['oldPassword'].'")']==$_SESSION['currentUser']->password && $_POST['password1']!='' && $_POST['password1']==$_POST['password2']) {
            $_SESSION['currentUser']->changePassword($_POST['password1']);
        }else if($passwordArr['sha("'.$_POST['oldPassword'].'")']!=$_SESSION['currentUser']->password) {
            echo 'Incorrect password.
                <meta http-equiv="refresh" content="1;url=.?form=account" />';
        }else if($_POST['password1']!=$_POST['password2']) {
            echo 'Passwords do not match.
                <meta http-equiv="refresh" content="1;url=.?form=account" />';
        }else if($_POST['password1']=='') {
            echo 'Passwords must not be blank.
                <meta http-equiv="refresh" content="1;url=.?form=account" />';
        }
    }else if(isset($_GET['removeListItem'])) {
        $_SESSION['currentUser']->removeListItem($_GET['removeListItem']);
    }else {
        $_SESSION['currentUser']->displayUsersTable();
    }
    
    include 'footer.php';
?>