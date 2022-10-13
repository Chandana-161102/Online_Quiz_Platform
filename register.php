<?php 
	session_start();
	include "db.php";

	function validate($data){
		$data = trim($data);
		$data = stripslashes($data);
		$data = htmlspecialchars($data);
		return $data;
	}

	$roll = validate($_POST['roll_number']);
	$name = validate($_POST['name']);
	$email = validate($_POST['email']);
	$phonenumber = validate($_POST['phonenumber']);

	if($_POST['exam_pin'] == "629142"){
	//date_default_timezone_set("Asia/Calcutta");

		$sql_register = "INSERT INTO 
		register(`rollnumber`,`name`,`email`,`phonenumber`,`datetime`) 
		VALUES('$roll','$name','$email','$phonenumber',NOW())";

		if(mysqli_query($conn, $sql_register)){
			$_SESSION['roll'] = $roll;
			$_SESSION['name'] = $name;
			$_SESSION['email'] = $email;
			$_SESSION['phonenumber'] = $phonenumber;
			
			//$_SESSION['Exam_Started'] = 0;
			header("Location: ./start_exam");
		}else{
			header("Location: ./?error=Error in Connection");
			//print_r($sql_register);
		}
	}else{
		header("Location: ./?error=Enter a valid Exam Pin");
	}

?>