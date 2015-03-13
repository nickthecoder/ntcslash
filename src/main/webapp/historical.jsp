<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="/WEB-INF/webwidgets.tld" prefix="ww" %>

<tiles:insertTemplate template="/layouts/columnLayout.jsp" flush="true">

  <tiles:putAttribute name="title" type="string" value="Old Stuff" />

  <tiles:putAttribute name="tab" type="string" value="apis" />

  <tiles:putAttribute name="main" type="string" >

    <h1>Old Stuff</h1>

    <p>
      These pages are cringingly bad. You have been warned.
    </p>

    <!-- nalin -->
    <h2><a href="/historical/nalinsArtwork/About%20Nalin.htm">Nalin's Artwork</a> - (1995?)</h2>
    <p>
      I took a whole bunch of Nalin's photos, scanned them in and made my first web site.
      The quality of the photos isn't very good; the colours of the photos where often wrong,
      and my scanner wasn't very good either. I tried to correct the colours using gimp, with only
      partial success.
    </p>
    <p>
      It was hosted on free web space by my dial-up ISP (demon). At the time, the web site was VERY slow.
      It did stick around on the net for quite a while, even after I stopped using demon. In fact, as of
      writing (Feb 2006) it <a href="http://www.sunset.demon.co.uk/">still exists</a>
    </p>

    <!-- Nick's Windows Software -->
    <h2><a href="/historical/nicksWindowsSoftware/Index.htm">Nick's Windows Software</a> - (1998?) </h2>
    <p>
      My second web site, slightly less crappy looking (but less interesting than Nalin's artwork).
    </p>

    <h2><a href="/historical/mockUpCWP/index.html">CWP Mock-up</a> - (2000?) </h2>
    <p>
      This was the beginning of a simple prototype. I've only kept it because it is the first
      web site that I was <b>paid</b> to write.
    </p>
    <p>
      The real thing doesn't exist any more, and wasn't available on the internet.
    </p>




    <!-- City Hypnosis -->
    <h2><a href="/historical/cityhypnosis/index.html">City Hypnosis</a> - (2006) </h2>
    <p>
      Aaron asked Nalin to rebuild a web site for his fledgling hypnotherapy practice.
      The old site was hosted on a friend's home computer, looked very bad, was never updated,
      and was often off-line.
    </p>
    <p>
      Nalin rewrote much of the text, and I revamped the layout and the graphics and made it
      easy to maintain by using jsp custom tags to seperate the content and presentation.
    </p>
    <p>
      As of writing, the site is still in use,
      Aaron is now running a
      <a href="http://cityhypnosis.com">sucessful, full time hypnotherapist practice</a>.
    </p>


    <!-- The March Hares -->
    <h2><a href="/historical/themarchhares/index.html">The March Hares</a> - (2005) </h2>
    <p>
      Aaron's brother Josh started a band - they are damned good, but their web site sucked.
      So I created a mock-up of what I think it should look like. Josh seemed to like it,
      but other members of the band didn't want to have a "outsider" in charge of thier
      web site. The site never made it "live".
    </p>
    <p>
      Since creating my mock-up, they have rewritted
      <a href="http://www.themarchhares.com">their web site</a>. Its a lot better now,
      than it was.
    </p>


    <!-- Locked and Bolted -->
    <h2><a href="/historical/lockedandbolted/index.html">Locked and Bolted</a> - (2005) </h2>
    <p>
      Following the success of City Hypnosis, I was also asked to create Locked and Bolted.
      This business wasn't so successful though, and is no longer running.
    </p>


    <!-- The first nickthecoder.co.uk -->
    <h2><a href="/historical/nickthecoder/index.html">Nick The Coder .co.uk</a> - (2005) </h2>
    <p>
      I bought a cheap domain name, and hijacked some web space from the
      <a href="http://cityhypnosis.com">city hypnosis</a> web site.
      Its quite a random collection of pages. some infulenced by the new craze of blogging,
      others
    </p>

   <!-- options singles -->
    <h2><a href="/historical/options/index.html">Options Singles</a> - (2005) </h2>
    <p>
      After creating Aaron's and Josh's sites, everyone wanted one! First came Dad with his
      singles club.
    </p>
    <p>
      I used the same techniques to create the site (i.e. jsp custom tags), but my dad wanted
      to maintain the site himself, so I gave him the html, and a crappy html editor, and he
      does everything himself.
    </p>
    <p>
      I tried to covert him to use a wiki, but he didn't like the idea.
    </p>


    <!-- eastbound platform -->
    <h2><a href="/historical/eastboundplatform/index.html">Eastbound Platform</a> - (2005) </h2>
    <p>
      After seeing the mock-up of The March Hares web site, my borter Mike wanted a similar site
      for his band, "Eastbound Platform". They aren't really in the same league as The March Hares.
      Eastbound Platform are a tongue in cheek, covers band.
    </p>
    <p>
      I created the layout for the site, added the photos that I had, and waited for the text.
      It never came, so the site was full of "blah blahs" for months. In 2006 I converted the
      site to use wiki technology, but still nobody updated the text - oh well.
    </p>

  </tiles:putAttribute>
</tiles:insertTemplate>

