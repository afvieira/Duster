(function($) {
    function initialize() {
        console.log("ola");
        latinit = new google.maps.LatLng(38.7222524, -9.139336599999979);
        var zoom = 7;
        var mapOptions = {
            center: latinit,
            zoom: 7
        };
        var map = new google.maps.Map(document.getElementById('map-canvas'),
            mapOptions);


        geocoder = new google.maps.Geocoder();
        var input = (document.getElementById('map-input'));
        // @type {HTMLInputElement}
        var searchBox = new google.maps.places.SearchBox((input));
        var marker = null;
        var position = null;


        google.maps.event.addListener(map, 'click', function(event) {
            geocoder.geocode({
                'latLng': event.latLng
            }, function(results, status) {

                var suggestion = results[0].formatted_address;
                $('#map-input').val(suggestion);

                if (marker != null) {
                    marker.setPosition(event.latLng);
                } else {
                    // map.setCenter(latLng)
                    marker = new google.maps.Marker({
                        position: event.latLng,
                        map: map,
                        title: 'A minha morada'
                    });
                }
                setFormValues(event.latLng);

            });
        });


        google.maps.event.addListener(searchBox, 'places_changed', function() {
            place = searchBox.getPlaces()[0];
            // console.log(place.geometry.viewport.getCenter());
            lat = place.geometry.location.k;
            lng = place.geometry.location.D;

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

            map.panTo(position);
            if (map.getZoom() == 7) {
                map.setZoom(15);
            }
            setFormValues(position)
        });
    }

    var setFormValues = function setFormValues(pos){
        $('#map-lat').val(pos.lat());
        $('#map-long').val(pos.lng());
    }

    $(initialize);
}(jQuery));