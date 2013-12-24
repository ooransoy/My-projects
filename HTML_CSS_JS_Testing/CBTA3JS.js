$(document).ready(function () {
	$('#toggleableButton').click(function() {
    	var flag = $(this).data('flag');
    	$(this).fadeTo('slow', flag ? 1 : 0.5);
    	$(this).data('flag', !flag);
	});
	$('#colorChangerButton').click(function() {
		var ccbclassname = $('#colorChangerButton').attr('class');
		
		if (ccbclassname == "red") {
			$('#colorChangerButton').toggleClass('red').addClass('green');
		} else if (ccbclassname == "green") {
			$('#colorChangerButton').toggleClass('green').addClass('blue');
		} else if (ccbclassname == "blue") {
			$('#colorChangerButton').toggleClass('blue').addClass('red');
		};
	});
	$('#lampInside').click(function() {
		var flag2 = $(this).data('flag');
    	$(this).fadeTo('slow', flag2 ? 1 : 0.1);
    	$(this).data('flag', !flag2);
	});
});