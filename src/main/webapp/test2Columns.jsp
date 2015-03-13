<%@ page contentType="text/html; charset=iso-8859-1" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="/WEB-INF/webwidgets.tld" prefix="ww" %>

<tiles:insertTemplate template="/layouts/columnLayout.jsp" flush="true">

  <tiles:putAttribute name="title" type="string" value="Nick and Nalin .co.uk" />

  <tiles:putAttribute name="tab" type="string" value="photos" />

  <tiles:putAttribute name="main" type="string" >

    <h1>Main</h1>
    <div class="pageTools hMenu2">
      <ul>
        <li class="first"><a href="info">info</a></li>
        <li><a href="edit">edit</a></li>
      </ul>
    </div>
    <p>
      Lorem ipsum dolor sit <a href="#">amet</a>, consectetuer adipiscing elit. Morbi vel ligula vel turpis porttitor <a href="foo">blandit</a>. Proin neque metus, porttitor eu, auctor quis, posuere sed, orci. Quisque lacinia euismod lectus. Duis sodales aliquet nisi. Donec ut ligula. Nulla eleifend dictum quam. Aliquam semper nunc in orci. In sapien dui, suscipit quis, pellentesque id, cursus eu, nulla. Pellentesque auctor magna vel neque. Sed dignissim tellus tristique velit sodales malesuada. Ut lacus leo, facilisis sed, ornare eget, laoreet ut, lacus. Maecenas mauris sapien, dignissim nec, nonummy nec, molestie at, tortor. Donec tortor. Curabitur velit metus, bibendum a, vestibulum sit amet, semper at, justo. Nunc a elit nec est elementum dictum. Vestibulum nec nisi. Aliquam erat volutpat. Etiam nunc.
    </p>

    <h2>Second Level Heading</h2>
    <div class="editSection2"><a href="#">edit</a></div>
    <p>
      Cras nisi tellus, lobortis a, <a href="#">convallis non</a>, facilisis sed, arcu. Aliquam erat volutpat. Duis ullamcorper ligula sed augue. Maecenas auctor. Sed rutrum. Donec scelerisque mauris ut lectus. Sed posuere suscipit ipsum. Suspendisse malesuada, arcu non tempus accumsan, quam ante euismod orci, quis pharetra turpis risus id metus. Vestibulum vel magna ac risus dignissim dapibus. Donec tortor libero, accumsan sit amet, pulvinar eget, iaculis sagittis, est. Nullam mauris. Sed ut mi. Vivamus magna elit, scelerisque eu, pulvinar eget, tempor id, dui. Aliquam at magna. Vivamus enim.
    </p>

    <h3>Third Level Heading</h3>
    <div class="editSection3"><a href="#">edit</a></div>
    <p>
      Maecenas nec leo id felis tempus venenatis. Nulla rutrum nibh quis orci. Nam nec libero sit amet ligula mattis vestibulum. Proin eu erat id justo rhoncus pulvinar. Curabitur neque magna, facilisis et, varius at, semper nec, ipsum. Duis mauris ipsum, sagittis nec, commodo et, convallis eget, est. Duis at tellus. Aliquam erat volutpat. Donec vitae orci. In et dolor. Proin felis. Integer in neque id arcu sagittis auctor. Vestibulum nisi lectus, accumsan ut, euismod in, malesuada volutpat, dui. Integer congue tincidunt tellus. Pellentesque nec metus. Nunc pellentesque magna id ligula. Maecenas nec ipsum.
    </p>

    <h4>Forth Level Heading</h4>
    <p>
      Maecenas nec leo id felis tempus venenatis. Nulla rutrum nibh quis orci. Nam nec libero sit amet ligula mattis vestibulum. Proin eu erat id justo rhoncus pulvinar. Curabitur neque magna, facilisis et, varius at, semper nec, ipsum. Duis mauris ipsum, sagittis nec, commodo et, convallis eget, est. Duis at tellus. Aliquam erat volutpat. Donec vitae orci. In et dolor. Proin felis. Integer in neque id arcu sagittis auctor. Vestibulum nisi lectus, accumsan ut, euismod in, malesuada volutpat, dui. Integer congue tincidunt tellus. Pellentesque nec metus. Nunc pellentesque magna id ligula. Maecenas nec ipsum.
    </p>

  </tiles:putAttribute>

  <tiles:putAttribute name="sidebar" type="string">

    <div class="vMenu">
      <ul>
        <li><a href="#">home</a></li>
        <li><a href="#">index</a></li>
        <li><a href="#">image index</a></li>
        <li><a href="#">recent changes</a></li>
      </ul>
      <ul>
        <a href="#">linux</a>
        <a href="#">money</a>
        <a href="#">fun</a>
        <a href="#">projects</a>
        <a href="#">testing</a>
        <a href="#">my web sites</a>
      </ul>
      <ul>
        <a href="#">nick</a>
        <a href="#">nalin</a>
      </ul>
      <ul>
        <a href="#">help</a>
        <a href="#">syntax</a>
        <a href="#">plugins</a>
        <a href="#">sandbox</a>
      </ul>
    </div>

    <div class="editInclude">
      <a href="#">edit</a>
    </div>

  </tiles:putAttribute>

</tiles:insertTemplate>

