/*
*
*/

var destinationCheck = function() {
	if (document.form.destination.value == "") {
		if (alert("Please enter your to address")) {
			document.form.destination.focus();
		}
		else
document.activeElement.blur();
	}
	else {
		return false;
	}

}

var sourceCheck = function() {
	if (document.form.source.value == "") {
		if (alert("Please enter your from address")){ 
				 document.form.source.focus();
	}
	else
		document.activeElement.blur();
}
 else {
	return false;
} 

}


