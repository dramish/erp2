<?php
include('config.php');
session_start();
if($_SESSION['xy']=='')
{
   echo "<script>window.location.href='faculty_login.php'</script>";
}
//echo "s2";
//del test

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
    <a href="fac_module.php"><i class="fa fa-file-text" aria-hidden="true"></i> Module</a>
    <a href="fac_classroom_page.php"><i class="fa fa-user  fa-home"></i> Home</a>
    <a href="<?php echo $meet_url ?>" target="_blank"><i class="fa fa-upload"></i> Initiate class </a>
<!--     <a href="fac_view_attendance.php"><i class="fa fa-eye" aria-hidden="true"></i> View Attendance</a> -->
        <a href="fac_batch.php"><i class="fa fa-eye" aria-hidden="true"></i> View Attendance</a>

    <a href="fac_resources.php"><i class="fa fa-upload" aria-hidden="true"></i> Resources Center </a>
    <a href="fac_display_tt.php"><i class="fa fa-upload" aria-hidden="true"></i>View Timetable</a>
    <a href="fac_edit_tt.php"><i class="fa fa-upload" aria-hidden="true"></i>Edit timetable</a>
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
<h1>Attendance Record</h1>
</div>
 
<div class = "manageuser">



 
  <table align="center">
  <tr>
    <th align="center">Date</th>
    <th>Time of joining</th>
    <th>Attendance marked</th>
  </tr>

<?php

$idf=$_SESSION['idf'];
$qid=$_GET["qid"];


	//echo "s3";

//$var=$_GET['tid'];
//echo "s33";

$r= mysqli_query($con, "SELECT * FROM attendance_trial where student_email='$qid' and tid='$idf' ORDER BY date");

while($ro = mysqli_fetch_array($r)){
    $a1 = $ro['date'];
    $a2 = $ro['time'];
    $a3 = $ro['attend'];
    //$a2 = $ro['time'];

 echo '<tr><td>'.$a1.'</td><td>'.$a2.'</td><td>'.$a3.'</td></tr>';

}

echo '</table>';


?>

