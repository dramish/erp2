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

$r2 = mysqli_query($con,"UPDATE subjective_quiz SET testkey='closed' WHERE  subjective_quizid = '$var' ") or die('Error2');
$r2 = mysqli_query($con,"UPDATE subjective_quiz SET duplicateTestKey='Late' WHERE  subjective_quizid = '$var' ") or die('Error2');
//echo "s5";
header("location:view_subjective_tests.php");
//echo "s6";
}

?>
