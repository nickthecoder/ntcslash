<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://webwidgets.nickthecoder.co.uk" prefix="ww" %>

<tiles:insertTemplate template="/layouts/columnLayout.jsp" flush="true">

  <tiles:putAttribute name="title" type="string" value="Reference Book Shelf" />

  <tiles:putAttribute name="tab" type="string" value="apis" />

  <tiles:putAttribute name="main" type="string" >

    <h1>Reference Book Shelf</h1>

    <p>
      Check out my wiki page, for lists of <a href="/wiki?page=Programming">API Documentation</a>.
    </p>

    <ww:edges className="whiteBox">

      <p class="center">
        <a href="/reference/unixbookshelf/index.htm"><img alt="unix" src="/reference/unixbookshelf/gifs/banner.gif"/></a>
        <br/>
        <a href="/reference/networkingbookshelf/index.html"><img alt="networking" src="/reference/networkingbookshelf/gifs/banner.gif"/></a>
        <br/>
        <a href="/reference/javabookshelf/index.html"><img alt="java" src="/reference/javabookshelf/gifs/banner.gif"/></a>
        <br/>
        <a href="/reference/javaenterprisebookshelf/index.htm"><img alt="java enterprise" src="/reference/javaenterprisebookshelf//gifs/banner.gif"/></a>
        <br/>
        <a href="/reference/perlbookshelf/index.htm"><img alt="perl" src="/reference/perlbookshelf/gifs/banner.gif"/></a>
        <br/>
        <a href="/reference/webprogrammingbookshelf/index.htm"><img alt="web programming" src="/reference/webprogrammingbookshelf/gifs/banner.gif"/></a>
        <br/>
        <a href="/reference/xmlbookshelf/index.htm"><img alt="xml" src="/reference/xmlbookshelf/gifs/banner.gif"/></a>
        <br/>
      </p>

    </ww:edges>

  </tiles:putAttribute>
</tiles:insertTemplate>


