let formData = new FormData();

function submitQuiz(event) {
	
	event.preventDefault();
	question_ids.forEach(getNum);

	$.ajax({
		type: 'POST',
		url:'../start_exam/submit_quiz.php',
		data: formData,
		contentType: false,
		processData:false,
		success:function(result) {
			console.log('success');
			
			$("#quiz_form").css('display','none');
			document.getElementById('result').innerHTML = result;
			submitCounter = -1;

		},
		error:function(result){
			console.log(result);
			console.log('error');
		}
	});

	console.log(formData);
}

function autoSubmit(){
	question_ids.forEach(getNum);

	$.ajax({
		type: 'POST',
		url:'../start_exam/submit_quiz.php',
		data: formData,
		contentType: false,
		processData:false,
		success:function(result) {
			console.log('success');
			$("#quiz_form").css('display','none');
			document.getElementById('result').innerHTML = result;
			document.getElementById('marks').innerHTML = result;
			submitCounter = -1;

		},
		error:function(result){
			console.log(result);
			console.log('error');
		}
	});

	console.log(formData);
}

function getNum(val){
	//let values = $('#'+val+"_option").val();
	var getSelectedValue = document.querySelector( 'input[name="'+val+'"]:checked');   

	if(getSelectedValue != null){
		console.log(val+": "+getSelectedValue.value);

		formData.append(val,getSelectedValue.value);
	}else{
		formData.append(val,'0');
	}
}