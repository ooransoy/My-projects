$(document).ready(function () {
	$('button').click(function () {
		var num = parseInt($('input[name=cc1]').val());
		var num0 = parseInt($('input[name=cc2]').val());
		$('ccaddr').html(num + num0)
	});
});