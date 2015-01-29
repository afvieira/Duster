(function($) {

    function initialize() {
        console.log("ola");
        latinit = new google.maps.LatLng(38.7222524, -9.139336599999979);

        var mapOptions = {
            center: latinit,
            zoom: 7
        };


        var map = new google.maps.Map(document.getElementById('map-canvas'),
            mapOptions);
        
         geocoder = new google.maps.Geocoder();


        //google.maps.event.addListener(map, 'click', function(event) {

            /* geocoder.geocode({'latLng': event.latLng}, function(results,status){
               // console.log(results);
                //console.log(status);

             });*/


       // });

        var input = (document.getElementById('map-input'));

        // @type {HTMLInputElement} 
        var searchBox = new google.maps.places.SearchBox((input));

        var marker = null;
        var position = null;

        google.maps.event.addListener(searchBox, 'places_changed', function() {
            place = searchBox.getPlaces()[0];
            // console.log(place.geometry.viewport.getCenter());
            lat = place.geometry.location.k;
            lng = place.geometry.location.D;


            lati = {
                lat: lat,
                lng: lng
            };
            console.log(lati);

            position = new google.maps.LatLng(lat, lng, true);
            if (marker != null) {
                marker.setPosition(position);
            } else {
                // map.setCenter(latLng)
                marker = new google.maps.Marker({
                    position: position,
                    map: map,
                    title: 'A minha morada'
                });
            }

            map.panTo(marker.getPosition());

            map.setZoom(15);


            //map.panTo(google.maps.LatLng(lat,lng))
        });






    }
    google.maps.event.addDomListener(window, 'load', initialize);

}(jQuery));