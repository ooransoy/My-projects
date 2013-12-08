$(document).ready(function () {
	$('#toggleableButton').on('click', function() {
    	var flag = $(this).data('flag');
    	$(this).fadeTo('slow', flag ? 1 : 0.5);
    	$(this).data('flag', !flag);
	});
});