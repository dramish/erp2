<?php
include('config.php');
session_start();
?>
<?php

if($_SESSION['xy']=='')
{
   echo "<script>window.location.href='faculty_login.php'</script>";
}

?>

<?php

    //$res=$_GET["ans"];
  $hid = $_GET["hid"];
  $qid=$_GET["qid"];

?>

<html lang="en">
<head>
<link rel = "icon" type = "image/png" href = "IGDTUW-Logo.png">
<title>View Responses</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
/* Style the body */
.content {
  flex: 1 0 auto;
}
body {
  font-family: Arial;
  /* margin: 0; */
}

/* Header/Logo Title */
.header {
  position: relative;
  padding: 20px;
  background: white;
  color: #21610B;
  font-size: 15px;

}
p{
color:black;
font-size:25px;
}

 .header img {
  float: left;
  width: 150px;
  height: 120px;
  background: #555;
  margin-right:15px;
}
/*.footer p{
  position: relative;
  height: 50px;
  width: 100%;
  background-color: black;
  text-align: center;
  color:white;
   font-size:30px;
  }*/

 .registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 80%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

 .main h1{
    font-family: "Times New Roman", Georgia, Serif;
    font-size: 30px;
    color:#5e0c17;
    text-align: center;
  }

    .navbar {
  overflow: hidden;
  background-color:#555;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: #4CAF50;
}


.manageuser{
      font-family: "Times New Roman", Times, serif;
      font-size: 20px;

    }
    table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 80%;
}

.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=number], select{
  width: 80%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

td, th {
  border: 2px solid #dddddd;

  padding: 8px;
}
tr:nth-child(even){background-color: #f2f2f2;}
tr:hover {background-color: #ddd;}

th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
.navbar .icon {
  display: none;
}
@media (max-width: 576px) {

  .header{
    font-size:8px;
  }
  .header p{
    font-size:12px;
  }
  .header img{
    width:100px;
    height:80px;
 }
 .main h1{
     font-size: 20px;
   }
   th,td{
     font-size:12px;
     padding:5px;
   }
   table{
     width:100%;
   }
     .navbar a:not(:first-child) {display: none;}
  .navbar a.icon {
    float: right;
    display: block;
  }
  .navbar.responsive {position: relative;}
  .navbar.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .navbar.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
  .navbar a:hover{
  background-color: #ddd;
  color: black;
}

  .navbar a.active {
  background-color: #4CAF50;
  color: white;
}

 }
</style>
</head>
<body>
<a name="top"></a>
    <div class="content">
<div class="header">
  <img src="IGDTUW-logo.png" alt="logo" />
  <h1>INDIRA GANDHI DELHI TECHNICAL UNIVERSITY FOR WOMEN</h1>
  <p>(Established by Govt. of Delhi vide Act 9 of 2012)</p>
</div>

    <div class="navbar" id="myTopnav">
    <a class="active" href="fac_module.php"><i class="fa fa-file-text" aria-hidden="true"></i> Module</a>
        <a href="fac_teaching_home.php"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
        <a href="add_subjective.php"><i class="fa fa-plus-circle" aria-hidden="true"></i> Add Subjective Quiz</a>
        <a href="view_subjective_tests.php"><i class="fa fa-eye" aria-hidden="true"></i> View Subjective Test</a>
        <a href="f_subjectivetestresult.php"><i class="fa fa-address-card-o" aria-hidden="true"></i> View Subjective Result</a>

        <a href="f_logout.php"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
      </div>
      <script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "navbar") {
    x.className += " responsive";
  } else {
    x.className = "navbar";
  }
}
</script>
<div class="main">
<h1>Response </h1>
</div>

<div class = "manageuser">




  <table align="center">
  <tr>
    <th>SNo.</th>
    <th>Question</th>
    <th>Response</th>
    <th>Download</th>
  </tr>

    <?php

    $query = "SELECT * FROM subjective_history WHERE hid='$hid'";
  $result = mysqli_query($con,$query) or die('Error first');
  while($row = mysqli_fetch_array($result)) {
  $aid= $row["stud_ans"];
  $qList = $row['indiQues'];
  $pics = $row['image'];

$ans_array=explode("@",$aid);
$ques_array=explode("`",$qList);
$pics_array=explode("#",$pics);

 //print_r($ans_array);
  $len=count($ans_array);

  for ($x = 0; $x < $len-1; $x++)
  {
  	$opid1=$ans_array[$x];
    $qpId1=$ques_array[$x];
    $pic=$pics_array[$x];
  	//$ua=substr($opid1,0,1);
  	//if($ua != "U")
  	//{
  		// $result = mysqli_query($con,"SELECT * FROM options as O inner join ques as q on O.qid= q.qid where O.optionid='$opid1'") or die('Error');
	  	// while($row = mysqli_fetch_array($result)) {
		  // $qu =$row['ques'];
		  // $opt=$row['option'];
		  $c=$x+1;
		  echo '<tr><td>'.$c.'</td><td>'.$qpId1.'</td><td>'.$opid1.'</td>
          <td><a href=../student_pages/'.$pic.' download><i class="fa fa-download"></i></a></td</tr> ';
		}
  	//}
  // 	else
  // 	{
  // 	 $questt=substr($opid1,1);
  // 	 $c=$x+1;
	 // echo '<tr><td>'.$c.'</td><td>'.$questt.'</td><td>Unattempted</td></tr> ';
  // 	}

  }

echo '</table></div>';
?>

<?php
$q = "SELECT totalques, correct FROM subjective_quiz WHERE subjective_quizId='$qid'";
            $result = mysqli_query($con,$q) or die('Error first');
  while($row = mysqli_fetch_array($result)) {
  $tq=$row["totalques"];
  $corr = $row["correct"]; }

?>

   <form align="center" method="post" enctype="multipart/form-data">
    <div class="container">
    <input type="number" name="finalScore" placeholder="Enter marks obtained here (Maximum marks = <?php echo $tq*$corr?> )">
    <button name="sub" type="submit" class="registerbtn">Submit Total Score</button>
    </div>
  </form>

<?php
        if(isset($_POST["sub"]))
        {
          $finalScore=$_POST["finalScore"];


$query="UPDATE subjective_history SET score='$finalScore' WHERE  hid = '$hid' ";
      $row=mysqli_query($con, $query);
      if($row > 0)
      {
        //header("location:testres_subjectivetestwise.php");
      //echo "33";
        echo "<script>alert('Score Updated')</script>";
        echo "<script>window.location.href='f_subjectivetestresult.php'</script>";
        //echo "<script>window.location.href='fac_home.php'</script>";
      }
      else
      {
        echo "<script>alert('not done')</script>";
      }

// $r2 = mysqli_query($con,"UPDATE subjective_history SET score='$finalScore' WHERE  hid = '$hid' ") or die('ErrorIsh');
// header("location:testres_subjectivetestwise.php");

  }

  ?>

</div>

    <?php
include('../footer.php');
?>

</body>
</html>

