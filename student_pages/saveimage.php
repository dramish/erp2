<?php
include('config.php');
session_start();
if($_SESSION['xy']=='')
{
   echo "<script>window.location.href='faculty_login.php'</script>";
}

define('UPLOAD_DIR', 'savedimages/');
$e = $_SESSION["email"];
$img = $_POST['base64image'];
$img = str_replace('data:image/jpeg;base64,', '', $img);
$img = str_replace(' ', '+', $img);
$data = base64_decode($img);
$file = UPLOAD_DIR . $e . time() . '.jpg';
$success = file_put_contents($file, $data);
$_SESSION["picture"] = $file;
?>
