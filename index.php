<?php 
	include "db.php";
?>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	 <meta http-equiv="X-UA-Compatible" content="IE=edge">
	 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
	<title>Home - Prashnatantra 2022</title>
</head>
<style type="text/css">
	#mobile_disable{
		display: none;
	}
	@media only screen and (max-width: 600px) {
  main {
    display: none;
  }
  #mobile_disable{
  	display: block;
  }
}
</style>
<body>

	<header class="container p-3 border mt-2 w-100 bg-secondary">
		<div class="">
			<h3 class="d-inline">Quiz  Registration</h3>
			<div class="float-right">
				<h3>Prashnatantra 2022</h3>
			</div>
		</div>

	</header>

	<section id="mobile_disable" class="container text-center mt-5">
		<h5 class="text-danger ">Mobile Phones are not authorised to access the content</h5>
	</section>
	<main class="container ">
		<?php if(isset($_GET['error'])){?>
                <div class="alert alert-danger text-center alert-dismissible fade show container" role="alert">
                  <strong><?php echo $_GET['error']?></strong>
              </div>
          <?php }?>
		<form class="mt-2" method="post" action="register.php">
			<div class="form-group">
			    <label for="exampleInputRoll">Roll Number</label>
			    <input type="text" class="form-control" id="roll_number" name="roll_number" required>
			    <small id="roll_number_help" class="form-text text-muted">Make sure you have entered correct Roll Number.</small>
		  	</div>
		  	<div class="form-group">
			    <label for="exampleName">Name</label>
			    <input type="text" class="form-control" id="name" name="name" required>
		  	</div>

		  <div class="form-group">
		    <label for="exampleInputEmail1">Email address</label>
		    <input type="email" class="form-control" id="email" aria-describedby="emailHelp" name="email" required>
		    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
		  </div>
		  
		  <div class="form-group">
		    <label for="exampleInputphone">Phone Number</label>
		    <input type="text" class="form-control" id="phone_number" name="phonenumber" required>
		    <small id="emailHelp" class="form-text text-muted">We'll never share your Phone Number with anyone else.</small>
		  </div>
		  <div class="form-group">
		    <label for="exampleInputphone">Exam Pin</label>
		    <input type="password" class="form-control" id="exam_pin" name="exam_pin" required>
		    <small id="emailHelp" class="form-text text-muted">Exam pin will be provided during the exam</small>
		  </div>
		 
		 <div class="form-group">
		 	<label class="font-weight-bold text-danger">Important Instructions</label>
		 	<ul>
		 		<li class="text-uppercase font-weight-bold text-danger">Do not try to refresh the browser after exam is started (Further Your not allowed to attempt the exam Once refreshed).</li>
		 		<li class="text-uppercase font-weight-bold text-danger">Your Exam Window should be in a full screen mode only.</li>
		 		<li>Exam Will be for 20 Minutes.</li>
		 		<li>You have to answer all the question before the timer reach end.</li>
		 		<li>Don not try to navigate to another tab or Window : Exam will auto submitted and will not be considered.</li>
		 		<li>Mouse Cursor should be on the Exam window only, Incase if cursor is out of the exam window : Exam will be auto Submitted and will not be considered.</li>
		 	</ul>
		 </div>
		<div class="text-center">		 
		  <button type="submit" class="btn btn-info btn-lg">Start Exam</button>
		</div>
		</form>
	</main>

	<footer class="container border p-3 text-center mt-2 bg-light">Copyrights : chandana</footer>



<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
</body>
</html>