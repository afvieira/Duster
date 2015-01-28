$(function($) {

    var startSelectPicker = function startSelectPicker() {
        $('.selectpicker').selectpicker('render');
    };
    var startTimePicker = function startTimePicker() {
        "use strict";
        $('#timepickerBegin').timepicker({
        	defaultTime:'08:00',
        	showMeridian:false
        });

    };
    var startDatePicker = function startDatePicker() {
        $('#datepicker-default').datepicker({
            todayHighlight: true,
            format: 'dd/mm/yyyy'
        });
    };

    var startComboBox = function startComboBox(){
    	$('.combobox').combobox();
	}

    var renderOption = function renderOption(perish) {
        var opt = '<option value="' + perish + '">' + perish + "</option>";
        return opt;
    };

    var handlePostCityResult = function handlePostCityResult(data) {
        var res = data.map(renderOption);
        res.unshift('<option value="">Selecione uma freguesia</option>')
        $("#perish-opt").empty();
        $("#perish-opt").append(res.join(''));
        $('.selectpicker').selectpicker('refresh');


    };
    var handlePerishChange = function handlePerishChange(event) {
        var selected_city = $("#city-select option:selected").text();
        $.post('/ajax/perish', {
            city: selected_city
        }, handlePostCityResult);
    };

    var handlePerish = function handlePerish() {
        $("#city-select").change(handlePerishChange);
    };

    var handleMaidRepsonse = function handleMaidRepsonse(data){
        $("#maids_elements").empty();   
        $("#maids_elements").append(data)
    	console.log(data);
    }

    var handle_maid_search_submit = function handle_maid_search_submit(){

    		$("#maid_search").submit(function(event){
 				event.preventDefault();
 				var city_sel  = $("#city-select");
 				var perish_sel = $("#perish-opt");

 				if(city_sel.val() != 0){
 					perish = perish_sel.val() != 0 ? perish_sel.val() : "";
 					serv = $('input[name="optionsRadios"]:checked', '#maid_search').val();
 					time_start = $("#timepickerBegin").val();
 					quant = $("#hour_quant").val();
 					date = $("#datepicker-default").val();
 					var params = {
 						city: city_sel.val(),
 						perish: perish,
 						service_type_id: serv,
 						service_start: time_start,
 						time_pretended: quant,
 						service_date: date
 					}
                    console.log(params);
 					$.post('/ajax/search_maid', params, handleMaidRepsonse);
 				}

 				return false;


    		});

    }

    startDatePicker();
    startSelectPicker();
    startComboBox();
    startTimePicker();
    handlePerish();
    handle_maid_search_submit();



}(jQuery));