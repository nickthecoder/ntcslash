<%@ page contentType="text/html; charset=utf-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://nickthecoder.co.uk/webwidgets" prefix="ww" %>

<tiles:importAttribute name="content" />
<tiles:importAttribute name="title" ignore="true"/>
<tiles:importAttribute name="sidebar" ignore="true"/>
<tiles:importAttribute name="extraHead" ignore="true"/>

<c:choose>
  <c:when test="${empty adverts}">
    <c:choose>
      <c:when test="${empty sidebar}">
        <c:set var="columnCount" value="1"/>
      </c:when>
      <c:otherwise>
        <c:set var="columnCount" value="2"/>
        </c:otherwise>
    </c:choose>
  </c:when>
  <c:otherwise>
    <c:set var="columnCount" value="3"/>
  </c:otherwise>
</c:choose>

<tiles:insert template="rawLayout.jsp" flush="false">

  <c:if test="${! empty title}">
    <tiles:put name="title" type="string" value="${title}"/>
  </c:if>

  <c:if test="${! empty extraHead}">
    <tiles:put name="extraHead" type="string" value="${extraHead}"/>
  </c:if>

  <tiles:put name="content" type="string">

    <!-- begin #content -->
    <div id="content">
      ${content}
    </div>
    <!-- end #content -->

    <c:if test="${! empty sidebar}">
      <!-- begin #sidebar -->
      <div id="sidebar">
          ${sidebar}
      </div>
      <!-- end #sidebar -->
    </c:if>

  </tiles:put>

</tiles:insert>

