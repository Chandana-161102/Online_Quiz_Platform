<?php 

$host = "localhost";
$user = "root";
$password = "";
$db ="u628814859_quiz_fest";
$conn = mysqli_connect($host,$user,$password,$db);

if(!$conn){
	echo "Conntection failed".mysqli_error();
}

?>