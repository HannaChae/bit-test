'use strict'
var mem = mem || {}
mem.home = demo => {
	$(`#home-btn`).click( e => {
	location.href = `../`
})
}
mem.join = x => {

	$.ajax({
		url:`${x}/members`,
		type: 'POST',
		data: JSON.stringify({
			memid: $('#memid').val(),
			password: $('#password').val()
		}),
		dataType: 'json',
		contentType: 'application/json',
		success: data => {
			location.href=`/mem/login`
		},
		error: error => {
			alert(`Fail`)
			console.log(`회원가입 실패 : ${e.responseText}`)
		}
	})
	
}