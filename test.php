<?php 
include "db.php";

$sql = "SELECT * FROM quiz_question";
$result_question = mysqli_query($conn,$sql);

while($row = mysqli_fetch_array($result_question)){?>

	<h5><?php echo nl2br($row['question'])?></h5>
<?php
}

?>