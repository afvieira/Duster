// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
// require jquery  Import for rails jquery, theme uses an older version
//= require jquery/jquery-1.8.2.min
//= require jquery_ujs
//= require bootstrap/bootstrap
//= require jquery-cookie/jquery.cookie
//= require scrollMonitor/scrollMonitor
//= require frontend/apps/apps
//= require answer_maid
//= require frontend/apps/magnific-popup.min


// Initialize popup as usual

$(document).ready(function() {
	$('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
		disableOn: 700,
		type: 'iframe',
		mainClass: 'mfp-fade',
		removalDelay: 160,
		preloader: false,

		fixedContentPos: false
	});

	$('.media-body').magnificPopup({
  		delegate: 'i',
	  	removalDelay: 500, //delay removal by X to allow out-animation
	  	callbacks: {
	    	beforeOpen: function() {
       	this.st.mainClass = this.st.el.attr('data-effect');
    }
  },
  midClick: true // allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
});

// $('#how-it-works-container').magnificPopup({
//   delegate: 'a',
//   removalDelay: 160, //delay removal by X to allow out-animation
//   callbacks: {
//     beforeOpen: function() {
//        this.st.mainClass = this.st.el.attr('data-effect');
//     }
//   },
//  //  	disableOn: 700,
// 	// type: 'iframe',
// 	// mainClass: 'mfp-fade',
// 	// preloader: false,

// 	// fixedContentPos: false

//   midClick: true // allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
// });

	// // Image popups
	// $('.play-video').magnificPopup({
	//   delegate: 'a',
	//   type: 'image',
	//   removalDelay: 500, //delay removal by X to allow out-animation
	//   callbacks: {
	//     beforeOpen: function() {
	//       // just a hack that adds mfp-anim class to markup 
	//        this.st.image.markup = this.st.image.markup.replace('mfp-figure', 'mfp-figure mfp-with-anim');
	//        this.st.mainClass = this.st.el.attr('data-effect');
	//     }
	//   },
	//   closeOnContentClick: true,
	//   midClick: true // allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
	// });


	// // Hinge effect popup
	// $('a.hinge').magnificPopup({
	//   mainClass: 'mfp-with-fade',
	//   removalDelay: 1000, //delay removal by X to allow out-animation
	//   callbacks: {
	//     beforeClose: function() {
	//         this.content.addClass('hinge');
	//     }, 
	//     close: function() {
	//         this.content.removeClass('hinge'); 
	//     }
	//   },
	//   midClick: true
	// });

});




