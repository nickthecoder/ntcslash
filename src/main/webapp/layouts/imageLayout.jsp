<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="/WEB-INF/webwidgets.tld" prefix="ww" %>

<tiles:importAttribute name="tab" ignore="true"/>
<tiles:importAttribute name="title" ignore="true"/>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<ww:browser isIe="isIe" isMobile="isMobile" /><!-- Mobile? ${isMobile} -->

<head>
  <!-- Checking if I need the mobile specific css : ${isMobile} -->
  <c:if test="${isMobile}">
    <ww:styleSheet href="/resources/mobile.css" useContextPath="false"/>  
  </c:if>
  <c:if test="${! isMobile}">
    <ww:styleSheet href="/resources/normal.css" useContextPath="false"/>  
  </c:if>
  
  <%@include file="head.inc"%>
</head>

<body onload="ww_onLoad()">

  <div id="wholeWide">
    <div class="largeInner">

      <tiles:insertAttribute name="main"/>

      <!-- {{{ footer -->
      <div id="footer">
        <%@include file="footer.inc"%>
      </div>
      <!--- end footer }}} -->

    </div>
  </div>

  <div id="postFooter">
    <div class="largeInner">
      <tiles:insertAttribute name="postFooter" ignore="true"/>
    </div>
  </div>

</body>

</html>

