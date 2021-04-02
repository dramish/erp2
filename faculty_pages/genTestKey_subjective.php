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
$result = mysqli_query($con,"SELECT testkey FROM subjective_quiz where subjective_quizid='$var'") or die('No Entries');
while($row=mysqli_fetch_array($result)) {
    $tkey = $row['testkey'];
    //echo "s33";
    $r1 = mysqli_query($con,"UPDATE subjective_quiz SET duplicateTestKey = '$tkey' where subjective_quizid='$var'") or die('Error1');
}


//echo "s4";
//echo "s5";
header("location:view_subjective_tests.php");
//echo "s6";
}

?>
