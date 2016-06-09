'use strict'
	function IsEmpty(){ 

		let first = document.getElementById('fname');
		let lastname = document.getElementById('lname');
		let phone = document.getElementById('phone');
		debugger
	if(first.value == "" || lastname.value == "")
	{
		alert("empty");
	}
	  

	if(phone.value.length!=10)
	{
		alert("number not equal to 10");
	}
	   
	
	}

	document.getElementById('submit').addEventListener("click",IsEmpty);
