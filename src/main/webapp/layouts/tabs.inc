<c:choose>
  <c:when test="${server == 'nickthecoder.co.uk'}">
    <ul>
      <li <c:if test="${tab=='wiki'       }">class="on"</c:if> ><a id="wikiLink"   title="Wiki (g w)" href="/pinkwino/view/Home">Wiki</a></li>
      <li <c:if test="${tab=='photos'     }">class="on"</c:if> ><a id="photosLink" title="Photos (g p)" href="/gidea/images/photos/">Photos</a></li>
      <li class="<c:if test="${tab=='familyalbum'}">on</c:if>" ><a id="familyAlbumLink" title="Family Album (g f a)" href="/familyalbum">Family&nbsp;Album</a></li>
      <li <c:if test="${tab=='software'   }">class="on"</c:if> ><a id="softwareLink"  title="Games (g j)" href="/software">Software</a></li>
      <li <c:if test="${tab=='recipe'     }">class="on"</c:if> ><a id="recipesLink" title="Recipes (g r)" href="/recipe">Recipes</a></li>
      <li <c:if test="${tab=='garden'     }">class="on"</c:if> ><a id="gardenLink" title="Garden (g g)" href="/garden">Garden</a></li>
      <li <c:if test="${tab=='search'     }">class="on"</c:if> ><a id="searchLink" title="Search (g s)" href="/search/search.do">Search</a></li>
    </ul>
  </c:when>
  <c:otherwise>
    <ul>
      <li <c:if test="${tab=='wiki'       }">class="on"</c:if> ><a id="wikiLink"    title="Wiki (g w)" href="/wiki/view/Home">Wiki</a></li>
      <li <c:if test="${tab=='music'      }">class="on"</c:if> ><a id="musicLink"   title="Music (g m)" href="/gidea/listMusic.do">Music</a></li>
      <li <c:if test="${tab=='photos'     }">class="on"</c:if> ><a id="photosLink"  title="Photos (g p)" href="/gidea/images/photos/">Photos</a></li>
      <li class="<c:if test="${tab=='familyalbum'}">on</c:if>" ><a id="familyAlbumLink" title="Family Album (g f a)" href="/familyalbum">Family&nbsp;Album</a></li>
      <li <c:if test="${tab=='software'   }">class="on"</c:if> ><a id="softwareLink"  title="Games (g j)" href="/software">Software</a></li>
      <li <c:if test="${tab=='recipe'     }">class="on"</c:if> ><a id="recipesLink" title="Recipes (g r)" href="/recipe">Recipes</a></li>
      <li <c:if test="${tab=='garden'     }">class="on"</c:if> ><a id="gardenLink" title="Garden (g g)" href="/garden">Garden</a></li>
      <li <c:if test="${tab=='search'     }">class="on"</c:if> ><a id="searchLink"  title="Search (g s)" href="/butchers/search.do">Search</a></li>
    </ul>
  </c:otherwise>
</c:choose>

