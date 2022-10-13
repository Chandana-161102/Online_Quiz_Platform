<?php 
session_start();

if(isset($_SESSION['roll'])){
//	$_SESSION['Exam_Started']+=1;
	include "../db.php";
	include "random_question.php";
	$_SESSION['question_nums'] = $random_number_array;
	//print_r($random_number_array);
	$script = '<script>var question_ids = new Array(' . implode(',', $random_number_array) . ');</script>';
	echo $script; 
	?>

	<!DOCTYPE html>
	<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
		<title>Start quiz tecnico</title>
		<script type="text/javascript" src="./js/submit_quiz.js"></script>
		<!--Copy PHP Array into JS Array -->
		<script type="text/javascript">

		//console.log(newArr);

	</script>
	<script type="text/JavaScript">
		//courtesy of BoogieJack.com
		function killCopy(e){
			return false
		}
		function reEnable(){
			return true
		}
		document.onselectstart=new Function ("return false")
		if (window.sidebar){
			document.onmousedown=killCopy
			document.onclick=reEnable
		}
	</script>

	<!--Window out auto submit -->
	<script type="text/javascript">
		var outCounter = 1;
		var submitCounter = 2;
		function windowOut(){
			if(submitCounter == 0){
				$('#submit_quiz').attr("disabled","disabled");
				autoSubmit(event);
				submitCounter = -1;
			}
			else if(submitCounter!=-1){
				alert('You are out of exam window for '+outCounter+' times\nYour Exam will auto Submit after '+submitCounter+' times');
				outCounter+=1;
				submitCounter-=1;
			}

		}
	</script>

	<!--Auto Enter Full Screen -->
	<script type="text/javascript">
		function go_full_screen(){
			var elem = document.documentElement;
			if (elem.requestFullscreen) {
				elem.requestFullscreen();
			} else if (elem.msRequestFullscreen) {
				elem.msRequestFullscreen();
			} else if (elem.mozRequestFullScreen) {
				elem.mozRequestFullScreen();
			} else if (elem.webkitRequestFullscreen) {
				elem.webkitRequestFullscreen();
			}

			$("#question_div").css('display','');
			$("#get_questions").css('display','none');
		}

	</script>

	
	
	
	<!-- page refresh-->
	<script type="text/javascript">
		window.addEventListener('beforeunload', function (e) {
	  // Cancel the event
	  e.preventDefault(); // If you prevent default behavior in Mozilla Firefox prompt will always be shown
	  // Chrome requires returnValue to be set
	  //autoSubmit();

	  e.returnValue = 'Your Exam is beeing submited';
	});

</script>

<style>
	textarea{
		resize: none;
		border: none;
		outline: none;
	}
</style>
</head>
<!-- onmouseleave="windowOut()"-->
<body   id="mainBody">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function () {
		    //Disable cut copy paste
		    $('body').bind('cut copy paste', function (e) {
		    	e.preventDefault();
		    });

		    //Disable mouse right click
		    $("body").on("contextmenu",function(e){
		    	return false;
		    });
		});
	</script>
	<header class="container p-3 border mt-2 w-100 bg-light">
		<div class="">
			<h3 class="d-inline">Quiz</h3>
			<div class="float-right">
				<h3>Prashnatantra 2022</h3>
			</div>
		</div>

	</header>
	<!--Timer -->
	<script type="text/javascript">
		if(submitCounter != -1){
			var count = 59;
			var min = 20;
			var interval = setInterval(function(){
				document.getElementById('count').innerHTML="Exam Ends in : "+min+":"+count;
				count--;
				if(count == 0){
					min--;
					count = 59;
				}
				if (min === -1){
					clearInterval(interval);
					document.getElementById('count').innerHTML='Done';

					$('#submit_quiz').attr("disabled","disabled");
					autoSubmit(event);
				// or...
			    //alert("You're out of time!");
			}
		}, 1000);
		}

	</script>

	<main class="container" id="quiz_form">
		<?php 
		$roll = $_SESSION['roll'];
		$sql_check = "SELECT * FROM results WHERE rollnumber = '".$roll."'";
	//$sql_check_reg = "SELECT * FROM register WHERE rollnumber = $roll";
		$result_check = mysqli_query($conn,$sql_check);
	//$result_check_reg = mysqli_query($conn,$sql_check_reg);

//	&& (mysqli_num_rows($result_check_reg) == 1)

		if(mysqli_num_rows($result_check) == '0' ){
			?>

			<div class="mt-2">
				<h4 class="d-inline">Roll Number : <?php echo $_SESSION['roll']?></h4>
				<!--Timmer -->
				<div class="float-right">
					<h5 id="count">Time : 00:00</h5>
				</div><br>
				<div class="w-100 text-center">
					<button class="btn btn-lg btn-info" onclick="go_full_screen(); startExam();" id="get_questions">Get Questions</button>
				</div>
				<div style="display: none;" id="question_div">
					<!-- Questions-->
					<div class="border p-3 mt-5">
						<form method="post" id="">
							<?php 
							$q_count = 1;
							$text_counter = 0;
							foreach ($random_number_array as $question_num) {

								$sql_question = "SELECT * FROM quiz_question WHERE question_id = '".$question_num."'";
								$result_question = mysqli_query($conn,$sql_question);

								if(mysqli_num_rows($result_question)>0){
									$row = mysqli_fetch_array($result_question);
						//while($row = mysqli_fetch_array($result_question)){
									$text_counter += 1;
									?>
									<div class="form-group">
										<span><?php echo $q_count?>.</span>
										<textarea class="fs-3 form-control font-weight-bold" id="<?php echo 'question_area'.$text_counter?>" disabled> 
											<?php echo ($row['question'])?>
										</textarea>
										<div class="form-check border p-2 m-3">
											<input class="form-check-input" type="radio" name="<?php echo $row['question_id']?>" id="<?php echo $row['question_id']?>_option" value="A">
											<label class="form-check-label"><?php echo nl2br($row['A'])?></label>
										</div>
										<div class="form-check border p-2 m-3">
											<input class="form-check-input" type="radio" name="<?php echo $row['question_id']?>" id="<?php echo $row['question_id']?>_option" value="B">
											<label class="form-check-label"><?php echo nl2br($row['B'])?></label>
										</div>
										<div class="form-check border p-2 m-3">
											<input class="form-check-input" type="radio" name="<?php echo $row['question_id']?>" id="<?php echo $row['question_id']?>_option" value="C">
											<label class="form-check-label"><?php echo nl2br($row['C'])?></label>
										</div>
										<div class="form-check border p-2 m-3">
											<input class="form-check-input" type="radio" name="<?php echo $row['question_id']?>" id="<?php echo $row['question_id']?>_option" value="D">
											<label class="form-check-label"><?php echo nl2br($row['D'])?></label>
										</div>

										<?php 
		  				//}			
										$q_count+=1;
									}else{
										echo "Questions not Uploaded";
									}
								}
								?>
								<div class="text-right">
									<button class="btn btn-info btn-sm" type="submit" onclick="submitQuiz(event)", id="submit_quiz">Submit Quiz</button>
								</div>
							</form>

						</div>
					<?php }
					else{
						$row = mysqli_fetch_array($result_check);
						?>
						<h5 class="text-danger text-center">You Have already Taken the test </h5>
						<script type="text/javascript">submitCounter = -1;</script>
						<?php 
						$score = $row['score'];
							/*if(isset($row['score'])){
								$score = $row['score'];
							}else{
								$score = "Your Session is terminated";
							}*/


							?>
							<h5 class="text-center">Your Score is <?php echo $score?> </h5>
							<?php if($row['status'] == "pass"){?>
								<h5 class='font-italic text-success text-center'>Congratulations You were qualified for Round 2</h5>
								<h5 class='font-italic text-success text-center'>See You in the next round</h5>
								<div class="w-100 text-center">
									<!-- <a class="font-italic text-center btn btn-outline-success" onclick="open_url()">Start Round 2</a> -->
								</div>
							<?php }?>
						<?php }?>
					</main>

					<div id="result" class="text-center border container mt-2"></div>

					<footer class="container border p-3 text-center mt-2 bg-light">Copyrights : chandana</footer>


				</body>
				<!--Text area rows-->
				<script type="text/javascript">
					for(var i = 1;i<=20;i++){
						var text = $("#question_area"+i).val();   
						var lines = text.split("\n");
						var count = lines.length;
					//console.log(count); // Outputs 4
					document.getElementById('question_area'+i).rows=count;
					//console.log(text.length);
				}
			</script>
			</html>

			<?php 
		}else{
			header("Location: ../?error=Unauthorized access");
		}
		?>

