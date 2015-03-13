<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html lang="en">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://nickthecoder.co.uk/webwidgets" prefix="ww" %>

<%
  request.setAttribute( "server", request.getServerName() );
%>

<tiles:importAttribute name="title" ignore="true"/>

<!-- {{{ head -->
<head>
  <ww:styleSheet href="/resources/style.css" useContextPath="false"/>
  <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed|Rock+Salt|Libre+Baskerville:400,700' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

  <c:if test="${! empty title}">
    <title><tiles:insert name="title" ignore="true"/></title>
  </c:if>

  <c:choose>
    <c:when test="${server == 'nickthecoder.co.uk'}">
      <link rel="icon" href="/resources/ntc-icon.png" />
    </c:when>
    <c:otherwise>
      <link rel="icon" href="/resources/giddyserv-icon.png" />
    </c:otherwise>
  </c:choose>

  <ww:script src="/ww_resources/webwidgets.js"/>
  <ww:script src="/ww_resources/acunote-shortcuts.js"/>

  <script type="text/javascript">
    ww_onLoadAdd( function() { shortcutListener.init() } );

    shortcutListener.onEscape = function() { document.getElementById( "logo" ).focus(); };
    
    shortcutListener.add( ["g", "h"], function() { ww_followLink( "homeLink" ); } );
    shortcutListener.add( ["g", "w"], function() { ww_followLink( "wikiLink" ); } );
    shortcutListener.add( ["g", "m"], function() { ww_followLink( "musicLink" ); } );
    shortcutListener.add( ["g", "p"], function() { ww_followLink( "photosLink" ); } );
    shortcutListener.add( ["g", "f"], function() { ww_followLink( "familyAlbumLink" ); } );
    shortcutListener.add( ["g", "r"], function() { ww_followLink( "recipesLink" ); } );
    shortcutListener.add( ["g", "j"], function() { ww_followLink( "softwareLink" ); } );
    shortcutListener.add( ["g", "g"], function() { ww_followLink( "gardenLink" ); } );
    shortcutListener.add( ["g", "s"], function() { ww_followLink( "searchLink" ); } );

  </script>
  
  <!-- extraHead-->
  <tiles:insert name="extraHead" ignore="true"/>
  <!-- end extraHead-->

</head>
<!-- end head }}} -->

<body onload="ww_onLoad()">

  <!-- begin #whole -->
  <div id="whole">
    
    <!-- begin #header -->
    <div id="header">
    
      <!-- begin #tabs -->
      <ww:tabs id="tabs">
        <ww:tab className="wiki"     pattern="/wiki/.*"><a href="/wiki"><i class="fa fa-comment"></i><br/>Wiki</a></ww:tab>
        <ww:tab className="photos"   pattern=""><a href="/gidea/photos/"><i class="fa fa-camera-retro"></i><br/>Photos</a></ww:tab>
        <ww:tab className="recipes"  pattern=""><a href="/recipe/"><i class="fa fa-lemon-o"></i><br/>Recipes</a></ww:tab>
        <ww:tab className="garden"   pattern=""><a href="/garden/"><i class="fa fa-tree"></i><br/>Garden</a></ww:tab>
        <ww:tab className="software" pattern=""><a href="/software/"><i class="fa fa-code"></i><br/>Software</a></ww:tab>
        <ww:tab className="family"   pattern=""><a href="/familyalbum/"><i class="fa fa-group"></i><br/>Family</a></ww:tab>
      </ww:tabs>      
      <!-- end #tabs -->
            
      <h1><a id="homeLink" href="/">Nick The Coder .co.uk</a></h1>
      <div id="shortcut_status" style="display: none;"></div>
            
    </div>      
    <!-- end #header -->
    
    <!-- being #content -->
    <div id="main">
    
      <form id="search" action="/search" method="get">
        <div>
          <input class="searchtext" type="text" value="" name="s" placeholder="Search">
          <input class="fa searchsubmit" type="submit" name="go" value="">
        </div>
      </form>

      <!-- content -->
      <tiles:insert name="content" ignore="true"/>
      <!-- end content -->    

    </div>
    <!-- end #main -->
    
  </div>
  <!-- end #whole -->
  
</body>

</html>

