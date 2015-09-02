$(document).on('ready page:load', function() {
  $("#location_input").geocomplete({
    details: "#location_section",
    detailsAttribute: "data-geo"
  });
  initiate_geolocation();

  $('.show_map').on('click', function() {
    $(this).hide();
    $('#map_canvas').show();
    showMap($(this).data('citymaker'));
  });

});

function initiate_geolocation() {
  navigator.geolocation.getCurrentPosition(handle_geolocation_query);
}

function handle_geolocation_query(position){
  if($('#location_section').length) {
    $('#city_maker_lat').val(position.coords.latitude);
    $('#city_maker_lng').val(position.coords.longitude);
  }
}

function showMap(city_maker) {
  var mapCanvas = document.getElementById('map_canvas');
  var myLatlng = new google.maps.LatLng(city_maker.lat, city_maker.lng)
  var mapOptions = {
    center: myLatlng,
    zoom: 8,
    animation: google.maps.Animation.DROP,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  var map = new google.maps.Map(mapCanvas, mapOptions)

  var contentString = '<h4>' + city_maker.name + '</h4>' + 
                      '<p>' + city_maker.location_name + '</p>' +
                      '<p>' + city_maker.phone + '</p>' + 
                      '<p><hr/>Timings: ' + city_maker.timings + '</p>';

  var infowindow = new google.maps.InfoWindow({
    content: contentString
  });

  var marker = new google.maps.Marker({
    position: myLatlng,
    map: map,
    title: city_maker.name
  });
  infowindow.open(map,marker);
}
