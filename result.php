<?php 
if(isset($_GET['chandana'])){
	include "db.php";
	$sql_result = "SELECT * FROM results ORDER BY score desc";
	$result_sql = mysqli_query($conn,$sql_result);
	if(mysqli_num_rows($result_sql)>0){?>
		<!DOCTYPE html>
		<html>
		<head>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			 <meta http-equiv="X-UA-Compatible" content="IE=edge">
			 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
			<title>Results - Quiz Tecnico</title>
		</head>
		<body>

			<header class="container p-3 border mt-2 w-100 bg-light">
				<div class="">
					<h3 class="d-inline">Quiz Tecnico Results</h3>
					<div class="float-right">
						<h3>Sri Vasavi</h3>
					</div>
				</div>

			</header>
			<main class="container ">

				<table class="table table-dark" style="overflow-x:auto;">
				  <thead>
				    <tr>
				      <th scope="col">#</th>
				      <th scope="col">Roll Number</th>
				      <th scope="col">Score</th>
				      <th scope="col">Status</th>
				      <th scope="col">Submitted On</th>
				    </tr>
				  </thead>
				  <tbody>
				  	<?php 
				  		$count = 1;
				  		while($row = mysqli_fetch_array($result_sql)){
				  	?>
				    <tr>
				      <th scope="row"><?php echo $count?></th>
				      <td><?php echo $row['rollnumber']?></td>
				      <td><?php echo $row['score']?></td>
				      <td><?php echo $row['status']?></td>
				      <td><?php echo $row['datetime']?></td>
				    </tr>
				    <?php $count+=1;
					}?>
				  </tbody>
				</table>
			</main>

			<footer class="container border p-3 text-center mt-2 bg-light">Copyrights : <a src="http://kiranmaruthi.getcleared.in" target="_blank">Kiranmaruthi2k21</a></footer>



		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
		</body>
		</html>
	<?php }else{
		echo "No data";
	}
}else{
	echo "Unauthorized access";
}

?>
