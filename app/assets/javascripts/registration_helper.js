/*
 * The first "$" tells jquery to wait for the document to load to
 * execute the IIEF.
 * The IIEF goes trough all input fields of a form and put the
 * correct requried tag.
 */
$(function($){

	var changeRequired = function changeRequired(index){
		//index is loop iterator count
		//this referess to DOM element
		$(this).prop("required",true);
	}

	$(".regist-mod").each(changeRequired);

	$('#datepicker-default').datepicker({format: 'dd/mm/yyyy'})
	


}(jQuery));

