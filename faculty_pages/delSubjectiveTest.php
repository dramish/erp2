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
//echo "s33";
$r1 = mysqli_query($con,"DELETE FROM subjective_ques WHERE quizid = '$var' ") or die('Error1');
//echo "s4";
$r1 = mysqli_query($con,"DELETE FROM subjective_history WHERE quizid = '$var' ") or die('Error2');

$r2 = mysqli_query($con,"DELETE FROM subjective_quiz WHERE subjective_quizid='$var' ") or die('Error3');
//echo "s5";

header("location:view_subjective_tests.php");
//echo "s6";
}

?>

