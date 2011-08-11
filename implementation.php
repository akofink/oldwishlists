<?php
session_start();

class User {
    var $dbHostname = 'localhost';
    var $dbUsername = 'anonymous';
    var $dbConnection;
    var $dbName = 'christmaslists';
    
    var $username;
    var $firstname;
    var $lastname;
    var $password;
    var $userlevel;
    
    var $isLoggedIn = false;
    
    function addListItem($item, $url) {
        $this->dbConnect();
        mysql_query('insert into lists (username, item, url) values
                    ("'.$this->username.'", "'.$item.'", "'.$url.'")') or die(mysql_error());
        echo '<meta http-equiv="refresh" content="0; url=.?listOf='.$this->username.'" />';
    }
    
    function addUser($username, $firstname, $lastname, $password) {
        $this->dbConnect();
        mysql_query('insert into users (username, firstname, lastname, password)
                    values ("'.$username.'", "'.$firstname.'", "'.$lastname.'", "'.$password.'")
                    ') or die(mysql_error());
        echo '<meta http-equiv="refresh" content="0; url=." />';
    }
    
    function changePassword($password) {
        $this->dbConnect();
        mysql_query('update users set password="'.$password.'" where username="'.$this->username.'"') or die(mysql_error());
        echo 'Password Changed.<meta http-equiv="refresh" content="1; url=." />';
    }
    
    function changeStatusOf($id) {
        $this->dbConnect();
        $arr = mysql_fetch_assoc(mysql_query('select * from lists where id='.$id)) or die(mysql_error());
        if($arr['status']) {
            mysql_query('update lists set status=0 where id='.$id) or die(mysql_error());
        }else {
            mysql_query('update lists set status=1 where id='.$id) or die(mysql_error());
        }
    }
    
    function dbConnect() {
        $dbConnection = mysql_connect($this->dbHostname, $this->dbUsername) or die(mysql_error());
        mysql_select_db($this->dbName) or die(mysql_error());
    }
    
    function deleteAccount() {
        $this->dbConnect();
        mysql_query('delete from lists where username="'.$this->username.'"') or die(mysql_error());
        mysql_query('delete from users where username="'.$this->username.'"') or die(mysql_error());
        $this->logout();
    }
    
    function displayEditAccountForm() {
        echo '
            <h3>Edit Account</h3>
            <form action="." method="post">
                <table>
                <tr><td>
                <label for="firstname">First Name: </label></td><td>
                <input type="text" id="firstname" name="firstname" value="'.$this->firstname.'" />
                </td></tr>
                <tr><td>
                <label for="lastname">Last Name: </label></td><td>
                <input type="text" id="lastname" name="lastname" value="'.$this->lastname.'" />
                </td></tr>
                <tr><td>
                <input type="hidden" name="editAccount" value="true" />
                <input type="submit" value="Update" />
                <input type="reset" value="Reset" />
                </td></tr>
            </form></table><br /><br />
            <h3>Change Password</h3>
            <form action="." method="post">
                <table>
                <tr><td>
                <label for="oldPassword">Old Password: </label></td><td>
                <input type="password" id="oldPassword" name="oldPassword" />
                </td></tr>
                <tr><td>
                <label for="password1">New Password: </label></td><td>
                <input type="password" id="password1" name="password1" />
                </td></tr>
                <tr><td>
                <tr><td>
                <label for="password2">Confirm Password: </label></td><td>
                <input type="password" id="password2" name="password2" />
                </td></tr>
                <tr><td>
                <input type="submit" value="Update" />
                <input type="reset" value="Reset" />
                </td></tr>
            </form></table><br /><br />
            <table id="deleteAccount">
            <tr><td><a href=".?form=deleteAccount">Delete account and all list items.</a></td></tr>
            </table>
            ';
    }
    
    function displayListOfUser($username) {
        $this->dbConnect();
        $userArr = mysql_fetch_assoc(mysql_query('select * from users where username="'.$username.'"'));
        
        echo '<h3>'.$username.'\'s Christmas List</h3>';
        
        if($this->isLoggedIn() && $this->username != $username) {
            echo '
                Click on the &#x2713; or &#x2717; to toggle the status.
                <table>
                <th></th>';
        }else {
            echo '<table>';
        }
        
        echo '
            <th>Item</th>
            <th>URL</th>
            ';
        
        if($this->isLoggedIn() && $this->username == $username) {
            echo '<th></th>';
        }
        
        $result = mysql_query('select * from lists where username="'.$username.'"');
        while($row = mysql_fetch_array($result)) {
            echo '<tr>';
            if($this->isLoggedIn() && $this->username != $username) {
                if($row['status']) {
                    echo '<td><a href=".?listOf='.$row['username'].'&changeStatusOf='.$row['id'].'">&#x2713;</a></td>';
                }else {
                    echo '<td><a href=".?listOf='.$row['username'].'&changeStatusOf='.$row['id'].'">&#x2717;</a></td>';
                }
            }
            echo '
                <td>'.$row['item'].'</td>
                <td><a href="'.$row['url'].'" target="_page">'.$row['url'].'</a></td>
                ';
            
            if($this->isLoggedIn() && $this->username == $username) {
                echo '<th><a href=".?removeListItem='.$row['id'].'">Remove Item</a></th>';
            }
            
            echo '</tr>';
        }
    }
    
    public function displayLoginForm() {
        echo '
                <div id="floatRightBox">
                <a href=".?form=newUser">Create a new account</a>
                <h3>Existing User</h3>
                <form action="." method="post">
                <input type="hidden" name="form" value="login" />
                <label for="username">Username: </label>
                <input type="text" id="username" name="username" /><br />
                <label for="password">Password: </label>
                <input type="password" id="password" name="password" /><br />
                <input type="submit" value="Submit" />
                <input type="reset" value="Reset" />
                </form>
                </div>
                ';
    }
    
    function displayLoggedInForm() {
        echo '
                <div id="floatRightBox">
                <a href=".?form=newListItem">New List Item</a>
                <a href=".?form=account">Account</a>
                <a href=".?form=logout">Logout</a>
                </div>
                ';
    }
    
    function displayNewListItemForm() {
        echo '
            <form action="." method="post">
                <table>
                <tr><td>
                <label for="item">Item: </label></td><td>
                <input type="text" id="item" name="item" />
                </td></tr>
                <tr><td>
                <label for="url">URL: </label></td><td>
                <input type="text" id="url" name="url" /><br />
                </td></tr>
                <tr><td>
                <input type="submit" value="Submit" /></td><td>
                <input type="reset" value="Reset" />
                </td></tr>
                </table>
            </form>
            ';
    }
    
    function displayNewUserForm($username, $firstname, $lastname) {
        echo '<h3>New User</h3>';
        echo '
            <form action="." method="post">
                <table>
                <tr><td>
                <label for="username">Username: </label></td><td>
                <input type="text" id="username" name="username" value="'.$username.'" />
                </td></tr>
                <tr><td>
                <label for="firstname">First Name: </label></td><td>
                <input type="text" id="firstname" name="firstname" value="'.$firstname.'" />
                </td></tr>
                <tr><td>
                <label for="lastname">Last Name: </label></td><td>
                <input type="text" id="lastname" name="lastname" value="'.$lastname.'" />
                </td></tr>
                <tr><td>
                <label for="password1">Password: </label></td><td>
                <input type="password" id="password1" name="password1" />
                </td></tr>
                <tr><td>
                <label for="password2">Confirm Password: </label></td><td>
                <input type="password" id="password2" name="password2" />
                </td></tr>
                <tr><td>
                <input type="submit" value="Submit" />
                <input type="reset" value="Reset" />
                </td></tr>
            </form></table>
            ';
    }
    
    function displayUsersTable() {
        $this->dbConnect();
        
        echo '
            <h3>Select a User</h3>
            <table>
            <th>Username</th>
            <th>First Name</th>
            <th>Last Name</th>
            ';
        $result = mysql_query('select * from users') or die(mysql_error());
        while($row = mysql_fetch_array($result)) {
            echo '
                    <tr>
                    <td><a href=.?listOf='.$row['username'].'>'.$row['username'].'</a></td>
                    <td>'.$row['firstname'].'</td>
                    <td>'.$row['lastname'].'</td>
                    </tr>
                    ';
        }
        echo '</table>';
    }
    
    function editAccount($firstname, $lastname) {
        $this->dbConnect();
        mysql_query('update users set firstname="'.$firstname.'",
                    lastname="'.$lastname.'" where username="'.$this->username.'"') or die(mysql_error());
        $this->firstname = $firstname;
        $this->lastname = $lastname;
        echo '<meta http-equiv="refresh" content="0; url=." />';
    }
    
    function isLoggedIn() {
        return $this->isLoggedIn;
    }
    
    function login($username, $password) {
        $this->dbConnect();
        $arr = mysql_fetch_assoc(mysql_query('select * from users where username="'.$username.'";')) or die('Invalid username/password <meta http-equiv="refresh" content="1;url=." />');
        if($arr['password'] == $password) {
            $this->isLoggedIn = true;
            $this->username = $arr['username'];
            $this->firstname = $arr['firstname'];
            $this->lastname = $arr['lastname'];
            $this->password = $arr['password'];
            $this->userlevel = $arr['userlevel'];
            echo '<meta http-equiv="refresh" content="0; url=." />';
        }else {
            echo 'Invalid username/password <meta http-equiv="refresh" content="1;url=." />';
            die();
        }
    }
    
    function logout() {
        $this->isLoggedIn = false;
        session_destroy();
        echo '<meta http-equiv="refresh" content="0; url=." />';
    }
    
    function removeListItem($id) {
        $this->dbConnect();
        $arr = mysql_fetch_assoc(mysql_query('select * from lists where id='.$id));
        $username = $arr['username'];
        mysql_query('delete from lists where id='.$id) or die(mysql_error());
        echo '<meta http-equiv="refresh" content="0; url=.?listOf='.$username.'" />';
    }
}
?>