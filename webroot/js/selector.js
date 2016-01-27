function selector(field) {
	document.getElementById("selector_"+field.id).innerHTML = document.getElementById("selector_"+field.id).innerHTML+"<div id='"+field.id+"' class='large-6 left' onclick='deselector(this)'><li value='"+field.value+"'>"+field.innerHTML+"</li></div>";
	document.getElementById("values_"+field.id).value = document.getElementById("values_"+field.id).value+"_"+field.value+"_";
}

function deselector(field) {
	document.getElementById("values_"+field.id).value = document.getElementById("values_"+field.id).value.replace("_"+field.firstChild.value+"_", "");
	field.removeChild(field.firstChild);
}