<?php 
require_once('Connections/con233.php'); ?>
<?php
if (!function_exists("GetSQLValueString")) {
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  if (PHP_VERSION < 6) {
    $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;
  }

  $theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);

  switch ($theType) {
    case "text":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;    
    case "long":
    case "int":
      $theValue = ($theValue != "") ? intval($theValue) : "NULL";
      break;
    case "double":
      $theValue = ($theValue != "") ? doubleval($theValue) : "NULL";
      break;
    case "date":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;
    case "defined":
      $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;
      break;
  }
  return $theValue;
}
}

mysql_select_db($database_con233, $con233);
$query_Recordset1 = "SELECT users.user_name, users.user_pwd FROM users";
$Recordset1 = mysql_query($query_Recordset1, $con233) or die(mysql_error());
$row_Recordset1 = mysql_fetch_assoc($Recordset1);
$totalRows_Recordset1 = mysql_num_rows($Recordset1);
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>JSDemo</title>
        <link href="CSS/Test.css" type="text/css" rel="stylesheet">

        <script language="javascript">
            function check(){
                var name = jsform.user.value;//获取用户添加的用户名信息
                var password = jsform.password.value;//获取用户添加的密码信息
                if (name==""||name==null) {
                    alert("用户名为空，请输入用户名");
                    jsform.user.focus();//用户名文本框获取焦点
                    return;
                }else if(password==""||password==null){
                    alert("您还未输入密码，请输入密码");
                    jsform.password.focus();
                    return;
                }else{
                    alert("登录成功！"
                        +"\n"+"用户名："+name
                        +"\n"+"用户密码："+password);
                    jsform.submit();
                }
            }
        </script>

    </head>
    <body>
    <!--头部内容-->
    <div id="header">
      <!--Logo-->
     <div id="logo">
         <img src="images/icon_logo.jpg" >
     <!--导航条-->
     <div id="nav">
         <ul>
             <li><a href="Company.html" title="">首 页</a> | </li>
             <li><a href="" title="">简 介</a> | </li>
             <li><a href="jsdemo.html" title="">JSDemo</a> | </li>
             <li><a href="" title="">未 定</a> | </li>
             <li><a href="" title="">未 定</a> | </li>
         </ul>
     </div>
     </div> 
     <!--清除float浮动的影响-->
     <div style="clear: both"></div>
    </div>

    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    用JS实现的用户登录功能</h3>
    <form name="jsform" method="post" action="">

    <table width="500" border="1" bordercolor="#FFFFFF" cellspacing="0"

    cellpadding="0" bordercolordark="#CCCCCC" bordercolorlight="#FFFFFF">
        <caption>用户登录</caption>
        <tbody>
            <tr>
                <td width="100" height="30" align="center">用户名：</td>
                <td width="200" height="30" align="left"><input type="text" name="user" id="user"></td>
            </tr>
            <tr>
                <td width="100" height="30" align="center">用户密码：</td>
                <td width="100" height="30" align="left"><input type="text" name="password" id="password" ></td>
            </tr>
            <tr>
                <td height="30" colspan="2" align="center">
                    <input type="button" value="登录" onclick=" return check()">
                </td>
            </tr>
        </tbody>
    </table>
    <table width="482" border="1">
      <tr>
        <td height="160">&nbsp;用户账号</td>
        <td>&nbsp;登录密码</td>
      </tr>
      <tr>
        <td height="165">&nbsp;<?php echo $row_Recordset1[1]?></td>
        <td>&nbsp;<?php echo $row_Recordset1[2]?></td>
      </tr>
    </table>
        
    </form>

    </body>
</html>
<?php
mysql_free_result($Recordset1);
?>
