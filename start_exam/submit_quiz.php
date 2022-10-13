<?php 
	
	session_start();
	include "../db.php";

	$question_num = $_SESSION['question_nums'];
	$marks = 0;
	foreach($question_num as $val){
		$sql_question = "SELECT * FROM quiz_question WHERE question_id = '".$val."'";
		$result_question = mysqli_query($conn,$sql_question);
		$row = mysqli_fetch_array($result_question);
		//echo $_POST[$val]."-".$row['question_key'];
		if($_POST[$val] == $row['question_key']){
			//echo "<h6>True</h6>";
			$marks+=1;
		}/*else{
			echo "<h6>False</h6>";
		}*/		
	}
	$percent = ($marks/20)*100;
	$status = "fail";
	if($percent>=60){
		$status = "pass";
	}
	echo "<h5>Score : ".$marks."</h5>";
	$roll = $_SESSION['roll'];
	$sql_result = "INSERT INTO results(`rollnumber`,`score`,`status`,`datetime`) VALUES('$roll', '$marks','$status',NOW())";
	if(mysqli_query($conn,$sql_result)){
		echo "<h5 class='text-success'>Result Saved</h5>";
		if($percent>=60){
			echo"<h5 class='font-italic text-success'>Congratulations You were qualified for Round 2</h5>";
			echo '<div class="w-100 text-center">
						<h5 class="font-italic text-success text-center">See You in the next round</h5>
						</div>';
		}
	}else{
		echo "<h5 class='text-danger'>$sql_result</h5>";
	}
?>