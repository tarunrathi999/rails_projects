$(document).on('ready page:load', function() {
  $(".location_input").geocomplete({
    details: "#location_section",
    detailsAttribute: "data-geo"
  });
  initiate_geolocation();

  $('.show_map').on('click', function() {
    $(this).hide();
    showMap($(this).data('loo'));
  });
});

function initiate_geolocation() {
  navigator.geolocation.getCurrentPosition(handle_geolocation_query);
}

function handle_geolocation_query(position){
  if($('#location_section').length) {
    $('#loo_lat').val(position.coords.latitude);
    $('#loo_lng').val(position.coords.longitude);
  }
}

function showMap(loo) {
  var mapCanvas = document.getElementById('map_canvas');
  var myLatlng = new google.maps.LatLng(loo.lat, loo.lng)
  var mapOptions = {
    center: myLatlng,
    zoom: 8,
    animation: google.maps.Animation.DROP,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  var map = new google.maps.Map(mapCanvas, mapOptions)

  var contentString = '<h4>' + loo.name + '</h4>' + '<p>' + loo.location_name + '</p>';

  var infowindow = new google.maps.InfoWindow({
    content: contentString
  });

  var marker = new google.maps.Marker({
    position: myLatlng,
    map: map,
    title: loo.name
  });

  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map,marker);
  });

}

