function fn_submit() {
	var fn = document.frm;


	if (fn.applyname.value == "") {
		alert("이름을 입력해주세요.");
		fn.applyname.focus();
		return false;
	}

	if (fn.phone.value == "") {
		alert("전화번호를 입력해주세요.");
		fn.phone.focus();
		return false;
	}

	if (fn.address.value == "") {
		alert("주소를 입력해주세요.");
		fn.address.focus();
		return false;
	}

	if (fn.instrument.value == "") {
		alert("악기를 입력해주세요.");
		fn.instrument.focus();
		return false;
	}

	if (fn.career.value == "") {
		alert("연주 경력을 입력해주세요.");
		fn.career.focus();
		return false;
	}

	if (fn.motivation.value == "") {
		alert("지원동기를 입력해주세요");
		fn.motivation.focus();
		return false;
	}
	
	fn.submit();
}
