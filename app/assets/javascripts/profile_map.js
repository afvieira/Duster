(function($) {

    var user_latLng = 0;
    var serv_latLng = 0;
    var user_marker = null;
    var serv_marker = null;
    var map = null;
    var directionsDisplay = new google.maps.DirectionsRenderer();

    var directionsService = new google.maps.DirectionsService();

    var setLatLngs = function setLatLngs() {
        var user_lat = $("#user_lat").val();
        var user_lng = $("#user_lng").val();
        var serv_lat = $("#serv_lat").val();
        var serv_lng = $("#serv_lng").val();
        user_latLng = new google.maps.LatLng(user_lat, user_lng);
        serv_latLng = new google.maps.LatLng(serv_lat, serv_lng);
    }



    var calcRoute = function calcRoute() {

        var request = {
            origin: user_latLng,
            destination: serv_latLng,
            travelMode: google.maps.TravelMode.DRIVING
        };

        directionsService.route(request, function(response, status) {
            if (status == google.maps.DirectionsStatus.OK) {
                directionsDisplay.setDirections(response);
            }
        });
    }


    function initialize() {
        setLatLngs();
        console.log(user_latLng);
        console.log(serv_latLng);
        var mapOptions = {
            center: user_latLng,
            zoom: 8
        };
        map = new google.maps.Map(document.getElementById('map-canvas'),
            mapOptions);
        directionsDisplay.setMap(map);
        //directionsDisplay.setPanel(document.getElementById('directions-panel'));

        calcRoute();

    }

    $(initialize);
}(jQuery));