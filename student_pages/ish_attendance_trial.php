<?php
include('config.php');
session_start();
if($_SESSION['xy']=='')
{
   echo "<script>window.location.href='student_login.php'</script>";
}
//echo "s2";
//del test

$sId=$_SESSION['email'];
  $qid=$_GET["qid"];
    $hid=$_GET["hid"];

 $d=date("d-m-Y");

date_default_timezone_set("Asia/Kolkata");
$t = date("h:i:s a");

$count = 1;
$duplicate = 2;

	//echo "s3";

//$var=$_GET['tid'];
//echo "s33";

$que= mysqli_query($con, "SELECT * FROM attendance_trial where student_email='$sId' and tid='$qid' and date='$d'");
      if($data=mysqli_fetch_array($que))
        {
        }
        else
        {
 $query = "INSERT INTO attendance_trial(student_email, tid, date, time, attend) values ('$sId','$qid','$d','$t','$count')";
  $row= mysqli_query($con,$query)or die('Error');
        }



header("location:$hid");
//   echo "<script>window.location.href='$hid'</script>";

//echo "<script>window.open('$hid', '_blank');</script>";


//window.open("https://www.yourURL.com", "_blank");




// $r1 = mysqli_query($con,"INSERT into attendance_trial () SET time=1 where subjective_quizid='$var'") or die('Error1');
//echo "s4";
//echo "s5";
//echo "s6";


?>
