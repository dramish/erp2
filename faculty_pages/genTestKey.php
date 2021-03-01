<?php
include('config.php');
session_start();
if($_SESSION['xy']=='')
{
   echo "<script>window.location.href='faculty_login.php'</script>";
}
//echo "s2";
//del test
if(@$_GET['tname'] )
{
	//echo "s3";

$var=$_GET['tid'];
$result = mysqli_query($con,"SELECT testkey FROM quiz where quizid='$var'") or die('No Entries');
while($row=mysqli_fetch_array($result)) {
    $tkey = $row['testkey'];
    //echo "s33";
    $r1 = mysqli_query($con,"UPDATE quiz SET duplicateTestKey = '$tkey' where quizid='$var'") or die('Error1');
}


//echo "s4";
//echo "s5";
header("location:viewtest.php");
//echo "s6";
}

?>
