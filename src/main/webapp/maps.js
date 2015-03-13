var googleMap_map = null;
var marker = null;

function getParameter( name )
{
  name = name.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");
  var regexS = "[\\?&]"+name+"=([^&#]*)";
  var regex = new RegExp( regexS );
  var results = regex.exec( window.location.href );
  if( results == null )
    return null;
  else
    return decodeURIComponent( results[1] );
}

function googleMap_load()
{
    var div = document.getElementById( "googleMap_mapDiv" );
    div.style.height = window.innerHeight + "px";

    var lat = getParameter( "lat" );
    var lng = getParameter( "lng" );
    var zoom = getParameter( "zoom" );
    var mapType = getParameter( "mapType" );
    var label = getParameter( "marker" );

    if ( zoom == null ) {
      zoom = 11;
    } else {
      zoom = 1 * zoom;
    }
    
    var mapTypeId = google.maps.MapTypeId.ROADMAP;
    if (mapType == 2) {
      mapTypeId = google.maps.MapTypeId.SATELLITE;
    } else if (mapType == 3) {
      mapTypeId = google.maps.MapTypeId.HYBRID;
    }
    
    var lnglat;
    if ( (lat != null) && (lng != null) ) {
      lnglat = new google.maps.LatLng( 1 * lat, 1 * lng);

    } else {
      lnglat = new google.maps.LatLng( 51.5743537, 0.1983946 );
    }
    
    var mapOptions = {
      center: lnglat,
      zoom: zoom,
      mapTypeId: mapTypeId,
      scrollwheel: false
    };
    
    googleMap_map = new google.maps.Map(document.getElementById("googleMap_mapDiv"),
        mapOptions);

    if ( (label != null) && (lat != null) && (lng != null) ) {
        createMarker();
        marker.setTitle( label );
        var mlat = getParameter( "mlat" );
        var mlng = getParameter( "mlng" );
        if ( (mlat != null) && (mlng != null) ) {
            marker.setPosition( new google.maps.LatLng( 1 * mlat, 1 * mlng ) );
        }
    }
    
    geocoder = new google.maps.Geocoder();
}

function googleMap_reset() {

  return false;
}

function search( address ) {
  var request = { address: address, location: googleMap_map.getCenter(), region: "uk" };
  
  geocoder.geocode( request, function ( results, status ) {
    
    if ( status == google.maps.GeocoderStatus.OK ) {
    
        result = results[0];    
        googleMap_map.setCenter( result.geometry.location );    
        

        googleMap_map.fitBounds( result.geometry.viewport );  
    } else {
        alert( "Location : " + address + " not found." );
    }
    
  });
}

function advancedSearch() {
  var request = { address: document.getElementById("address").value, location: googleMap_map.getCenter(), region: "uk" };
  
  geocoder.geocode( request, function ( results, status ) {

    advancedSearch.results = results;
    var html = '<ul>';
    for ( var i = 0; i < results.length; i ++ ) {
        html += '<li><a href="#" onclick="return selectedSearch(' + i + ');">' + results[i].formatted_address + '</a></li>';
        
    }
    html += '</ul>';
    
    document.getElementById("searchResultsContent").innerHTML = html;
    document.getElementById("searchResultsContainer").style.visibility = 'visible';
        
  });
  
  return false;
}

function selectedSearch( index )
{
  result = advancedSearch.results[index];
  googleMap_map.setCenter( result.geometry.location );    

  googleMap_map.fitBounds( result.geometry.viewport );
  
  return false;
}

function createLink() {

  var latLng = googleMap_map.getCenter();
  var zoom = googleMap_map.getZoom();
  var mapType = 1;
  if (googleMap_map.mapTypeId == google.maps.MapTypeId.SATELLITE) {
    mapType = 2;
  } else if (googleMap_map.mapTypeId == google.maps.MapTypeId.HYBRID) {
    mapType = 3;
  }
  
  var url = "maps.jsp?lat=" + latLng.lat() + "&lng=" + latLng.lng() + "&zoom=" + zoom + "&mapType=" + mapType;
  
  if ( marker != null ) {
    url += '&marker=' + marker.getTitle();
    if ( marker.getPosition() != googleMap_map.getCenter() ) {
      url += '&mlat=' + marker.getPosition().lat() + '&mlng=' + marker.getPosition().lng();
    }
  }
  
  document.location = url;

}


function createGoogleMapLink() {

  var latLng = googleMap_map.getCenter();
  var zoom = googleMap_map.getZoom();

  var url = "http://maps.google.co.uk/maps?ll=" + latLng.lat() + "," + latLng.lng() + "&z=" + zoom;
  document.getElementById( "googleMapLink" ).href = url;
  return url;

}
function googleMapLink() { 
  document.location = createGoogleMapLink();
}


function createOpenStreetMapLink() {

  var latLng = googleMap_map.getCenter();
  var zoom = googleMap_map.getZoom();

  var url = "http://www.openstreetmap.org/?lat=" + latLng.lat() + "&lon=" + latLng.lng() + "&zoom=" + zoom;
  document.getElementById( "openStreetMapLink" ).href = url;
  return url;

}
function openStreetMapLink() { 
  document.location = createOpenStreetMapLink();
}

function createMarker() {
  if ( marker == null ) {
    marker = new google.maps.Marker( {
        map: googleMap_map,
        position: googleMap_map.getCenter(),
        draggable: true,
        title: "click to rename",
        clickable: true,
        animation: google.maps.Animation.DROP
    } );
    marker.addListener( "click", renameMarker );
    
  } else {
    marker.setPosition( googleMap_map.getCenter() );
  }
}

function renameMarker()
{
    googleMap_map.setCenter( marker.getPosition() );
    var name = window.prompt( "Rename Marker", marker.getTitle() );
    if ( name != null ) {
        marker.setTitle( name );
    }
}

google.maps.event.addDomListener(window, 'load', googleMap_load);

