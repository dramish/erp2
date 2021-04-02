<?php
include('config.php');
session_start();
if($_SESSION['xy']=='')
{
   echo "<script>window.location.href='faculty_login.php'</script>";
}

if(@$_GET['qid'] AND @$_GET['tid'] AND @$_GET['tname'] ) 
{
	$var=$_GET['qid'];
	$testid=$_GET['tid'];
	$testn=$_GET['tname'];



	$r1 = mysqli_query($con,"DELETE FROM subjective_ques WHERE qid = '$var' ") or die('Error1');
	$r4 = mysqli_query($con,"SELECT * FROM subjective_quiz WHERE subjective_quizid='$testid' ") or die('Error4');
                 while($row=mysqli_fetch_array($r4))
                 {
                 $noofques=$row['totalques'];
                 $newno=$noofques-1;
                 if($newno==0)
                 {
                    $r5 = mysqli_query($con,"DELETE FROM subjective_quiz WHERE subjective_quizid = '$testid' ") or die('Error5');
                 }
                 else
                 {
                    $r6 = mysqli_query($con,"UPDATE subjective_quiz SET totalques='$newno' WHERE subjective_quizid='$testid' ") or die('Error4');
                 }
                }

	//header("location:viewques.php?tid=".$var."&tname=".$testn."");
header("location:view_subjective_tests.php");

}

?>

