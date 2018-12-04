
$(function () {
	setTimeout(function () {
		$('#flash_notice').fadeOut("slow", function () {
			$(this).remove();
		})
	}, 4500);
	$('#flash_notice').hide();
	$('#flash_notice').fadeIn("slow", function () {
	});
});