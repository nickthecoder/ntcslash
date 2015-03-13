<%@ page contentType="text/html; charset=iso-8859-1" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="/WEB-INF/webwidgets.tld" prefix="ww" %>

<tiles:insertTemplate template="/layouts/columnLayout.jsp" flush="true">

  <tiles:putAttribute name="title" type="string" value="Nick and Nalin .co.uk" />

  <tiles:putAttribute name="tab" type="string" value="home" />

  <tiles:putAttribute name="main" type="string" >
      
    <h2>Heading Two</h2>
    No p
    
    <h2>HeadingTwo</h2>
    <p>Paragraph</p>
  
    <h2>Heading Two</h2>
  
    <ww:edges className="whiteBox">
      <div style="background: yellow;">
        <div style="margin: 1em">
          A 1 em margin
        </div>
      </div>
    </ww:edges>
  
    <h1>Heading One</h1>
    <ww:edges className="whiteBox">
      Hello World
    </ww:edges>

    <h2>Heading Two</h2>
    <ww:edges className="whiteBox">
      Hello World
    </ww:edges>

    <h3>Heading Three</h3>
    <ww:edges className="whiteBox">
      Hello World
    </ww:edges>

    <h2>Another H2</h2>
    <div class="headingTools2">
      <div class="hMenu2">
        <ul>
          <li>              
            <a href="#">test</a>
          </li>
        </ul>
      </div>
    </div>
    
    <ww:edges className="whiteBox">
      Hello World
    </ww:edges>


    <ww:edges className="whiteBox">
      <!-- Cover -->
        
      <a href="/gidea/playMusic.do?path=%2Fdefault%2F10%2C000+Maniacs%2FIn+My+Tribe%2F" title="cover"><img
        alt="cover"
        src='/music/categories//default/10%2c000%20Maniacs/In%20My%20Tribe/.meta/cover_400.jpg'
      /></a>
        
    </ww:edges>


  </tiles:putAttribute>

</tiles:insertTemplate>

