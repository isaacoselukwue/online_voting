<!DOCTYPE html>
<html>
<body style="background-color:powderblue;">


<?php
//session_start();
ini_set ("display_errors", "1");
error_reporting(E_ALL);

ob_start();
session_start();
require('../connection.php');

//$tbl_name="tbAdministrators"; // Table name


$myusername=$_POST['myusername'];
$mypassword=$_POST['mypassword'];
$encrypted_mypassword=md5($mypassword); 
//echo "1".$myusername;
$myusername = stripslashes($myusername);
$mypassword = stripslashes($mypassword);
//echo "2".$myusername;
//$myusername = $mysqli->escape_string($_POST['myusername']);
//$mypassword = $mysqli->escape_string($_POST['mypassword']);
//echo "3".$myusername;
$sql="SELECT * FROM `tbAdministrators` WHERE email='$myusername' AND password='$mypassword'";// or die(mysql_error());
//echo $sql;
$result= mysqli_query($mysqli, $sql) ;//or die (mysqli_error());


$count=mysqli_num_rows($result);


if($count==1){
    // $user = $result->fetch_assoc();
    // $_SESSION['admin_id'] = $user['admin_id'];
    
                if(isset($_POST['remember']))
                {
                    setcookie('$email',$_POST['myusername'], time()+30*24*60*60); // 30 days
                    setcookie('$pass', $_POST['mypassword'],time()+30*24*60*60); // 30 days
                    $_SESSION['curname']=$myusername;
                    $_SESSION['curpass']=$mypassword;

                    $user = $result->fetch_assoc();
     				$_SESSION['admin_id'] = $user['admin_id'];

                    header("Location:admin.php");
                    exit;
                }
                else
                {
                    $log1=11;
                    $_SESSION['log1'] = $log1;
                    $_SESSION['curname']=$myusername;
                    $_SESSION['curpass']=$mypassword;

                    $user = $result->fetch_assoc();
     				$_SESSION['admin_id'] = $user['admin_id'];

                    header("Location:admin.php");
                    exit;
                }
            

}
else {
    echo "<br> <br> <br> ";
    echo "<center> <h3>Wrong Username or Password<br><br>Return to <a href=\"index.php\">login</a> </h3></center>";
}

ob_end_flush();

?> 
</body>
</html>