$(function($) {

    var startSelectPicker = function startSelectPicker(){
 		$('.selectpicker').selectpicker('render');
    };
	var startTimePicker = function startTimePicker () {
	    "use strict";
	    $('#timepickerBegin').timepicker();
	    $('#timepickerEnd').timepicker();

	};

	var renderOption = function renderOption(perish){
		var opt = '<option value="'+ perish +'">' + perish +"</option>";
		return opt;
	}

	var handlePostCityResult = function handlePostCityResult(data){
		var res = data.map(renderOption);
		$("#perish-opt").replaceWith(res.join());
 		$('.selectpicker').selectpicker('refresh');


	}
	var handlePerishChange = function handlePerishChange(event){
		var selected_city = $("#city-select option:selected").text();
		$.post('/ajax/perish', {city:selected_city}, handlePostCityResult);
	}
	var handlePerish = function handlePerish(){
		$("#city-select").change(handlePerishChange);
	}

    startSelectPicker();
    startTimePicker();
    handlePerish();

}(jQuery));
