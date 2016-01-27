function updateList(field) {
	var select = document.getElementById('lister_'+field.id);
	var ifNoResult = true;
	for (var opt in select.options) {
		var test = select.options[opt].innerHTML;
		if (test !== undefined){
			test = test.toLowerCase();
			if ( test.search(field.value.toLowerCase()) == -1) {
				select.options[opt].style.display = "none";
			}else {
				select.options[opt].style.display = "block";
				ifNoResult = false;
			}
		}
	}
	if(ifNoResult){
		field.style.backgroundColor = "#FAA";
	}else{
		field.style.backgroundColor = "#FDC";
	}
}