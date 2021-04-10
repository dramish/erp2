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
     .adminpanel p{
       font-size:20px;
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
<br>
<div class="main">
<h1>Attendance Record</h1>
</div>
 <br>
<div class = "manageuser">
  <table align="center">
  <tr>
    <th>Program</th>
    <th>Branch</th>
    <th>Semester</th>
    <th>Roll No.</th>
    <th>Cumulative Attendance</th>
    <th>Today's attendance</th>
    <th>View dates</th>
    <th>Edit Attendance</th>
  </tr>
  
<?php

$p = $_GET['p'];
$b = $_GET['b'];
$s = $_GET['s'];

$tId=$_SESSION['idf'];
 $d=date("d-m-Y");
  $result = mysqli_query($con,"SELECT login_student.email, login_student.program, login_student.branch, login_student.semester, rollno from login_student, coursedetails WHERE login_student.branch = '$b' AND coursedetails.branch = '$b' AND login_student.program = '$p' AND coursedetails.program = '$p' AND login_student.semester = '$s' AND coursedetails.semester = '$s' AND coursedetails.tid = '$tId' ORDER BY rollno") or die('Error');

while($row = mysqli_fetch_array($result)) {
  // $id = $row['stu_id'];
  // $name = $row['name'];
  // $mob = $row['mob'];
  // $rn = $row['rollno'];
  // $att = $row['atten'];
  // $email = $row['email'];
 
  // echo '<tr><td>'.$id.'</td><td>'.$name.'</td><td>'.$rn.'</td><td>'.$email.'</td><td>'.$mob.'</td><td>'.$att.'</td>
  // <td><a title="Delete User" href="deluser.php?demail='.$email.' "><i>Delete User</i></a></td></tr>';

$program = $row['program'];
$branch = $row['branch'];
$semester = $row['semester'];
$roll = $row['rollno'];
$em = $row['email'];

  $r = mysqli_query($con, "SELECT sum(attendance_trial.attend) from attendance_trial WHERE attendance_trial.student_email = '$em' AND attendance_trial.tid='$tId'") or die('Error2');

  while($ro = mysqli_fetch_array($r)){

    //$a3 = $ro['attendno'];

      $q = mysqli_query($con, "SELECT * from attendance_trial WHERE attendance_trial.student_email = '$em' AND attendance_trial.tid='$tId' AND date = '$d'") or die('Error2');

      if($data=mysqli_fetch_array($q))
        {
          $fig = $data['attend'];
        }
        else
        {
          $fig = 0;
        }


  if ($ro['sum(attendance_trial.attend)'])
    $ra=$ro['sum(attendance_trial.attend)'];
else $ra = 0;
      echo '<tr><td>'.$program.'</td><td>'.$branch.'</td><td>'.$semester.'</td><td>'.$roll.'</td><td>'.$ra.'</td><td>'.$fig.'</td><td><a title="View" href="indi_student.php?qid='.$em.'"><i>View Dates</i></a></td><td><a title="View" href="indi_student_edit.php?qid='.$em.'"><i>Edit Attendance</i></a></td></tr>';

  }



}
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
