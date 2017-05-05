<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_con233 = "localhost";
$database_con233 = "webtest";
$username_con233 = "root";
$password_con233 = "";
$con233 = @mysql_pconnect($hostname_con233, $username_con233, $password_con233) or trigger_error(mysql_error(),E_USER_ERROR); 


?>