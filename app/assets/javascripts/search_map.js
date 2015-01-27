(function($) {

    function initialize() {
        console.log("ola");
        var mapOptions = {
            center: {
                lat: 40.48038142908172,
                lng: -8.1298828125
            },
            zoom: 7,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById('map-search-prof'),
            mapOptions);



        google.maps.event.addListener(map, 'click', function(event) {
            console.log(event)
            console.log(event.latLng);

            //map.setZoom(8);
            //map.setCenter(marker.getPosition());
        });

		google.maps.event.addListenerOnce(map, 'idle', function(){
	        // Create the search box and link it to the UI element.
	        /** @type {HTMLInputElement} */
	        var input = (document.getElementById('pac-input'));
	        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

	        /** @type {HTMLInputElement} */
	        var searchBox = new google.maps.places.SearchBox((input));

	        // Listen for the event fired when the user selects an item from the
	        // pick list. Retrieve the matching places for that item.
	        google.maps.event.addListener(searchBox, 'places_changed', function() {
	            console.log(searchBox.getPlaces());
        });
        	        
		});

    }
    //$(initialize);
}(jQuery));

