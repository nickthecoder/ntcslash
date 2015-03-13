<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
  <title>Map</title>

  <link rel="icon" href="/resources/mapIcon.png" />
  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCpZxghYNTdsc5KXL483zoCMIN9tRLzHWw&sensor=false"></script>
  <script type="text/javascript" src="maps.js"></script>

<style type="text/css">
<!--
body {
  margin: 0px;
  padding: 0px;
  font-family: verdana, arial, sans;
  font-size: 80%;
}

#googleMap_mapDiv {
  position: absolute;
  z-index: 200;
  width: 100%;
  height: 100%;

}

#tools {
  position: absolute;
  z-index: 300;
  padding: 1px 4px;
  text-align: center;
  left: 80px;
  font-weight: bold;
}

#tools a {
  border: 1px solid black;
  background-color: #fff;
  color: black;
  text-decoration: none;
  font-weight: normal;
  padding: 2px 0.5em;
}

#searchResultsContainer {
  visibility: hidden;
  position: absolute;
  left: 80px;
  top: 80px;
  color: #fff;
  z-index: 1000;
  border: 1px solid #888;
  border-radius: 15px;
}

#searchResultsContainer .background {
  position: absolute;
  width: 100%;
  height: 100%;
  background: #000;
  opacity: 0.8;
  border-radius: 15px;
  z-index: 0;
}

#searchResultsContent a {
  font-size: 120%;
  text-decoration: none;
  color: #fff;
}
#searchResultsContent a:hover {
  text-decoration: underline;
}

#searchResultsContent ul {
  position: relative;
  max-width: 300px;
  max-height: 400px;
  overflow: auto;
  margin: 1em;
  padding: 0px;
  z-index: 1;
}

#searchResultsContent li {
  list-style-type: none;
  padding: 0px;
  margin: 0 0 1em 0; 
}

#searchResultsHeading {
  position: relative;
  color: #fff;
  font-size: 150%;
  font-weight: bold;
  padding: 0 0.75em;
}

#searchResultsHeading a {
  color: #fff;
  text-decoration: none;
}

#searchResultsHeading a {
  float: right;
}

-->
</style>

</head>

<body onload="search( '<c:out value="${param.address}"/>' );">
  <form action="maps.jsp" id="searchForm" onsubmit="search( this.address.value ); return false;">
    <div id="tools">
      <input id="address" name="address" type="text" size="30" value="<c:out value="${param.address}"/>"/>
      <input type="submit" value="Find" />
      <input type="button" value="..." onclick="return advancedSearch();"/>
      <a id="googleMapLink" href="#" onmouseover="createGoogleMapLink()" onclick="googleMapLink(); return false;">Google Maps</a>   
      <a id="openStreetMapLink" href="#" onmouseover="createOpenStreetMapLink()" onclick="openStreetMapLink(); return false;">Open Street Maps</a>   
      <a href="#" onclick="createLink(); return false;">Link</a>
      <a href="#" onclick="createMarker(); return false;">Marker</a>
    </div> 
  </form>

  <div id="googleMap_mapDiv"></div>

  <div id="searchResultsContainer">
    <div class="background"></div>'
    <div id="searchResultsHeading">
        Search Results
        <a href="#" onclick="document.getElementById( 'searchResultsContainer' ).style.visibility = 'hidden'; return false;">X</a>
    </div>
    <div id="searchResultsContent"></div>
  </div>

</body>

</html>





