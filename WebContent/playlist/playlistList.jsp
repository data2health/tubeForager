<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="lucene" uri="http://icts.uiowa.edu/lucene"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="tube" uri="http://slis.uiowa.edu/YouTubeTagLib"%>

<!DOCTYPE html>
<html lang="en-US">
<jsp:include page="../head.jsp" flush="true">
	<jsp:param name="title" value="tubeForager Channel List" />
</jsp:include>
<style type="text/css" media="all">
@import "../resources/layout.css";

ol {
	padding-inline-start: 10px;
	maring-left: 0;
	padding-left: 15px;
}

ul {
	padding-inline-start: 10px;
	maring-left: 0;
	padding-left: 25px;
}

input {
	padding-left: 7px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.desc-list {width =45%;display =inline-block;
	
}
</style>

<body class="home page-template-default page page-id-6 CD2H">
	<jsp:include page="../header.jsp" flush="true" />

	<div class="container-fluid" style="padding-left: 5%; padding-right: 5%;">
		<br /> <br />
		<div class="col">
			<h2>Relevant tubeForager Playlists</h2>
			<ul>
				<tube:foreachPlaylist var="x" sortCriteria="title" filterCriteria="relevant">
					<tube:playlist>
						<li><a href="playlist.jsp?id=<tube:playlistPlaylistId/>"><tube:playlistTitle /></a>
							<c:if test="${not empty login}">
								<a href="judgePlaylist.jsp?id=${row.playlist_id}&mode=false">-</a>
								<a href="judgePlaylist.jsp?id=${row.playlist_id}&mode=null">?</a>
							</c:if>
					</tube:playlist>
				</tube:foreachPlaylist>
			</ul>
			<h2>Other tubeForager Playlists</h2>
			<ul>
				<tube:foreachPlaylist var="x" sortCriteria="title" filterCriteria="relevant is null" limitCriteria="100">
					<tube:playlist>
						<li><a href="playlist.jsp?id=<tube:playlistPlaylistId/>"><tube:playlistTitle /></a>
							<c:if test="${not empty login}">
								<a href="judgePlaylist.jsp?id=${row.playlist_id}&mode=false">-</a>
								<a href="judgePlaylist.jsp?id=${row.playlist_id}&mode=null">?</a>
							</c:if>
					</tube:playlist>
				</tube:foreachPlaylist>
			</ul>
			<div style="width: 100%; float: left">
				<jsp:include page="../footer.jsp" flush="true" />
			</div>
		</div>
	</div>
</body>

</html>
