<?php
include('config.php');
session_start();
?>

<?php

if($_SESSION['xy']=='')
{
   echo "<script>window.location.href='faculty_login.php'</script>";
}
$sub=$_GET["sub"];
$doc_name=$_GET["doc"];
$sem=$_GET["sem"];
$branch=$_GET["branch"];
$prog=$_GET["prog"];
$docid=$_GET["docid"];

//echo $doc_name;

?>


<!DOCTYPE html>
<html lang="en">
<head>
<link rel = "icon" type = "image/png" href = "IGDTUW-Logo.png">
<title>Manage User</title>
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
  }
*/

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

.dropdown {
  float: left;
  overflow: hidden;
}

/*.dropdown .dropbtn {
  font-size: 16px;
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}*/

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: #4CAF50;
}

/*.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: rgba(165, 161, 161, 0.397);
}

.dropdown:hover .dropdown-content {
  display: block;
}*/

.manageuser{
      font-family: "Times New Roman", Times, serif;
      font-size: 20px;

    }
    table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 80%;
}

td, th {
  border: 2px solid #dddddd;
  text-align: center;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2;}
tr:hover {background-color: #ddd;}

th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
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
  .navbar a {
   float: left;
   font-size: 12px;
   color: white;
   text-align: center;
   padding: 8px 10px;
   text-decoration: none;
 }
 h2{
     font-size: 15px;
   }
   th,td{
     font-size:8px;
   }
   table{
     width:80%;
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

<div class="navbar">

    <a href="fac_module.php"><i class="fa fa-file-text" aria-hidden="true"></i> Module</a>
    <a href="fac_teaching_home.php"><i class="fa fa-user  fa-home"></i> Home</a>
    <a href="fac_upload.php"><i class="fa fa-upload" aria-hidden="true"></i> Upload Assignment </a>
    <a href="view_uploaded_ass_by_fac.php"><i class="fa fa-eye" aria-hidden="true"></i> Manage Uploads</a>
    <a href="fac_download_ass.php"><i class="fa fa-download" aria-hidden="true"></i> Download Student Assignments </a>

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
<br>
<div class="main">
<h1>Assignment Name: <?php echo $doc_name; ?></h1>

<?php echo"<h1>Program :&nbsp".$prog."&nbsp&nbsp&nbsp Branch :&nbsp".$branch."  &nbsp&nbsp&nbsp Semester :&nbsp".$sem."</h1>"; ?>
</div>
 <br>
<div class = "manageuser">
  <table align="center">
  <tr>
    <th>SNo.</th>
    <th>Name</th>
    <th>Enrollment No.</th>
    <th>Email</th>
    <th>Late</th>
     <th>Download</th>
  </tr>

<?php


//  $result = mysqli_query($con,"SELECT * FROM login_student WHERE program='$prog' AND branch='$branch' AND semester='$sem' ORDER BY rollno ") or die('Error');

  $result = mysqli_query($con,"SELECT * FROM assignment WHERE docid='$docid'") or die('Error');

$c=1;

while($row = mysqli_fetch_array($result)) {

  $email = $row['stuemail'];
  $doc=$row['doc'];
  $late=$row['late'];

   $result1 = mysqli_query($con,"SELECT * FROM login_student WHERE email='$email' AND program='$prog' AND branch='$branch' AND semester='$sem' ORDER BY rollno ") or die('Error');

while($row1 = mysqli_fetch_array($result1)) {

$name=$row1['name'];
 $rn = $row1['rollno'];

  echo '<tr><td>'.$c++.'</td><td>'.$name.'</td><td>'.$rn.'</td><td>'.$email.'</td><td>'.$late.'</td>
    <td><a href=../student_pages/assignment/'.$doc.' download><i class="fa fa-download"></i></a></td></tr>';



}
}
$c=0;
echo '</table></div>';


?>
</table>

</div>
<br>
<br>
</div>

    <?php
include('../footer.php');
?>
</body>
</html>