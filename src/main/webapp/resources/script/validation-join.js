$(document).ready(() => {
	$('#error-msg-id').hide();
	$('#error-msg-password').hide();
	$('#error-msg-name').hide();
	$('#error-msg-birth').hide();
	$('#error-msg-telecom').hide();
	$('#error-msg-gender').hide();
	$('#error-msg-phone').hide();
	$('#error-msg-agree').hide();
	
	$('form').submit(e => {
		e.preventDefault();
		
		// 유효성 검사 처리
		const id = $('#id').val();
		const password = $('#password').val();
		const name = $('#name').val();
		const birth = $('#birth').val();
		const telecom = $('#telecom').val();
		const gender = $('#gender').val();
		const phone = $('#phone').val();
		const agree = $('#agree').val();
		
		const n = 0;
		
		if(id === '') {
			$('#error-msg-id').css('color', 'red');
			$('#error-msg-id').show();
			n++;
		}
		if(password === '') {
			$('#error-msg-password').css('color', 'red');
			$('#error-msg-password').show();
			n++;
		}
		if(name === '') {
			$('#error-msg-name').css('color', 'red');
			$('#error-msg-name').show();
			n++;
		}
		if(birth === '') {
			$('#error-msg-birth').css('color', 'red');
			$('#error-msg-birth').show();
			n++;
		}
		if(telecom === '') {
			$('#error-msg-telecom').css('color', 'red');
			$('#error-msg-telecom').show();
			n++;
		}
		if(gender === '') {
			$('#error-msg-gender').css('color', 'red');
			$('#error-msg-gender').show();
			n++;
		}
		if(phone === '') {
			$('#error-msg-phone').css('color', 'red');
			$('#error-msg-phone').show();
			n++;
		}
		if(agree === '') {
			$('#error-msg-agree').css('color', 'red');
			$('#error-msg-agree').show();
			n++;
		}
		
		if(n == 0) {
			e.target.submit();
		}
	});
})

/*
$(document).ready(() => {
	$('#error-msg-id').hide();
	
	$('form').submit(e => {
		e.preventDefault();
		
		// 유효성 검사 처리
		const id = $('#id').val();
		
		if(id === '') {
			$('#error-msg-id').show();
		} else {
			e.target.submit();
		}
	});
})*/