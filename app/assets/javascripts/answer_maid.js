(function($) {
	$("#form_welcome").submit(function(event) {
		event.preventDefault();
		var answer = $("#select_district option:selected").text();
		var lan = $("#languageToSearchMaid").val();
		ajax_request_maid(answer, lan);
	});

	function ajax_request_maid(answer, lan) {
		$.post("/ajax/resquest/maid", {
			city: answer,
			lan: lan
		}, answer_callback);
	}

	function answer_callback(data) {
		console.log(data);
		$("#answer_html").html("<h5>" + data.traducao1 + data.result + data.traducao2 + "</h5>");
	}

}(jQuery));
