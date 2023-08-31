	function men() {
		if ($('#men').css('display') == 'none') {
			$('#men').show();
			$('#rec').hide();
			$('#per').hide();
			$('#vie').hide();
			$('#ser').hide();
			$('#adm').hide();
		} else {
			$('#men').hide();
		}
	}

	function rec() {
		if ($('#rec').css('display') == 'none') {
			$('#rec').show();
			$('#men').hide();
			$('#per').hide();
			$('#vie').hide();
			$('#ser').hide();
			$('#adm').hide();
		} else {
			$('#rec').hide();
		}
	}

	function per() {
		if ($('#per').css('display') == 'none') {
			$('#per').show();
			$('#men').hide();
			$('#rec').hide();
			$('#vie').hide();
			$('#ser').hide();
			$('#adm').hide();
		} else {
			$('#per').hide();
		}
	}

	function vie() {
		if ($('#vie').css('display') == 'none') {
			$('#vie').show();
			$('#men').hide();
			$('#rec').hide();
			$('#per').hide();
			$('#ser').hide();
			$('#adm').hide();
		} else {
			$('#vie').hide();
		}
	}

	function ser() {
		if ($('#ser').css('display') == 'none') {
			$('#ser').show();
			$('#men').hide();
			$('#rec').hide();
			$('#per').hide();
			$('#vie').hide();
			$('#adm').hide();
		} else {
			$('#ser').hide();
		}
	}
	
	function adm() {
		if ($('#adm').css('display') == 'none') {
			$('#adm').show();
			$('#ser').hide();
			$('#men').hide();
			$('#rec').hide();
			$('#per').hide();
			$('#vie').hide();
		} else {
			$('#adm').hide();
		}
	}