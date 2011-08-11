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
    
    function dbConnect() {
        $dbConnection = mysql_connect($this->dbHostname, $this->dbUsername) or die(mysql_error());
        mysql_select_db($this->dbName) or die(mysql_error());
    }
    
    public function displayLoginForm() {
        echo '
                <div id="floatRightBox">
                <h3>Login</h3>
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
                <a href=".?form=logout">Logout</a>
                </div>
                ';
    }
    
    function displayListOfUser($username) {
        $this->dbConnect();
        $userArr = mysql_fetch_assoc(mysql_query('select * from users where username="'.$username.'"'));
        
        if($this->isLoggedIn()) {
            if($this->username == $username) {
                echo '
                    <h3>'.$username.'\'s Christmas List</h3>
                    <table>
                    <th>Item</th>
                    <th>URL</th>
                    ';
            }else {
                echo '
                    <h3>'.$username.'\'s Christmas List</h3>
                    <table>
                    <th>Status</th>
                    <th>Item</th>
                    <th>URL</th>
                    ';
            }
            
        }else {
            echo '
                <h3>'.$username.'\'s Christmas List</h3>
                <table>
                <th>Item</th>
                <th>URL</th>
                ';
        }
        $result = mysql_query('select * from lists where username="'.$username.'"');
        while($row = mysql_fetch_array($result)) {
            echo '
                    
                    ';
        }
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
}
?>