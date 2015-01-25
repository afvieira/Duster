(function($) {
	$("#form_welcome").submit(function(event) {
		event.preventDefault();
		var answer = $("#select_district option:selected").text();
		ajax_request_maid(answer);
	});

	function ajax_request_maid(answer) {
		$.post("/ajax/resquest/maid", {
			city: answer
		}, answer_callback);
	}

	function answer_callback(data) {
		console.log(data);
		$("#answer_html").html("<h5>" + data.traducao1 + data.result + data.traducao2 + "</h5>");
	}

}(jQuery));
