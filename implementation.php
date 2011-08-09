<?php
class User {
    var $dbHostname = 'localhost';
    
    var $username;
    var $firstname;
    var $lastname;
    var $userlevel;
    
    function initialize() {
        echo 'test';
    }
    
    function dbConnect() {
        mysql_connect($this->dbHostname);
    }
}
?>