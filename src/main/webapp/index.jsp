<%@ page contentType="text/html; charset=utf-8" %>

<%@ taglib uri="http://nickthecoder.co.uk/webwidgets" prefix="ww" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Nick The Coder .co.uk</title>
  <ww:styleSheet href="/resources/style.css"/>
  <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed|Rock+Salt|Libre+Baskerville:400,700' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
</head>
<body>

  <div id="whole">
    <div id="header">
      
      <div id="tabs">
        <div class="tab wiki"><i class="fa fa-comment"></i><br/>Wiki</div>
        <div class="tab photos"><i class="fa fa-camera-retro"></i><br/>Photos</div>
        <div class="tab recipes"><i class="fa fa-lemon-o"></i><br/>Recipes</div>
        <div class="tab garden tab_selected"><i class="fa fa-tree"></i><br/>Garden</div>
        <div class="tab software"><i class="fa fa-code"></i><br/>Software</div>
        <div class="tab family"><i class="fa fa-group"></i><br/>Family</div>
      </div>

      <h1>Nick The Coder .co.uk</h1>
      
    </div>
    
    <div id="main">
    
      <form id="search" action="/search" method="get">
        <div>
          <input class="searchtext" type="text" value="" name="s" placeholder="Search">
          <input class="fa searchsubmit" type="submit" name="go" value="">
        </div>
      </form>
      
      <h2>About</h2>
      <p>
        Hello world
      </p>
      
      <h3>Sub Heading</h3>
      <p>
        Foo bar
      </p>
      
      <h4>Minor Heading</h4>
      <p>
        Bye.
      </p>
        
    </div>
    
  </div>
    
</body>
</html>

