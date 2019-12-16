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
	<jsp:param name="title" value="tubeForager Playlist" />
</jsp:include>
<style type="text/css" media="all">
@import "../resources/layout.css";

ol {
    padding-inline-start: 10px;
    maring-left:0;
    padding-left:15px;
}

ul {
	padding-inline-start: 10px;
    maring-left:0;
    padding-left:25px;
}


input {
    padding-left: 7px;
    -webkit-box-sizing: border-box; 
    -moz-box-sizing: border-box;    
    box-sizing: border-box;       
}

.desc-list{
	width=45%;
	display=inline-block;
}


</style>

<body class="home page-template-default page page-id-6 CD2H">
	<jsp:include page="../header.jsp" flush="true" />

	<div class="container-fluid" style="padding-left: 5%; padding-right: 5%;">
		<br /> <br />
		<div class="col">
       <c:if test="${not empty param.channel}">
           [
           <a href="../channel/channelList.jsp">Channels</a> >
           <tube:channel channelId="${param.channel}"><a href="../channel/channel.jsp?id=${param.channel}"><tube:channelChannelTitle/></a></tube:channel>
           ]
       </c:if>
			<tube:playlist playlistId="${param.id}">
				<h2>
					Playlist: <tube:playlistTitle />
				</h2>
				<p>
					<tube:playlistDescription />
				</p>
				<p>
					Published: <tube:playlistPublished />
				</p>
				<h4>Relevant Videos</h4>
				<ul>
					<tube:foreachPlaylistItem var="pl" useVideo="true" filterCriteria="relevant">
						<tube:playlistItem>
							<tube:video videoId="${tube:playlistItemVideoIdValue()}">
								<li><a href="../video/video.jsp?id=${tube:playlistItemVideoIdValue()}&channel=${param.channel}&playlist=${param.id}"><tube:videoTitle /></a>
                                    <c:if test="${not empty login}">
                                        <a href="judgePlaylistVideo.jsp?playlist=${param.id}&id=<tube:videoVideoId/>&mode=false">-</a>
                                        <a href="judgePlaylistVideo.jsp?playlist=${param.id}&id=<tube:videoVideoId/>&mode=null">?</a>
                                    </c:if>
							</tube:video>
						</tube:playlistItem>
					</tube:foreachPlaylistItem>
				</ul>
                <h4>Other Videos</h4>
                <ul>
                    <tube:foreachPlaylistItem var="pl" useVideo="true" filterCriteria="relevant is null">
                        <tube:playlistItem>
                            <tube:video videoId="${tube:playlistItemVideoIdValue()}">
                                <li><a href="../video/video.jsp?id=${tube:playlistItemVideoIdValue()}&channel=${param.channel}&playlist=${param.id}"><tube:videoTitle /></a>
                                    <c:if test="${not empty login}">
                                        <a href="judgePlaylistVideo.jsp?playlist=${param.id}&id=<tube:videoVideoId/>&mode=true">+</a>
                                        <a href="judgePlaylistVideo.jsp?playlist=${param.id}&id=<tube:videoVideoId/>&mode=false">-</a>
                                    </c:if>
                            </tube:video>
                        </tube:playlistItem>
                    </tube:foreachPlaylistItem>
                </ul>
			</tube:playlist>
			<div style="width: 100%; float: left">
				<jsp:include page="../footer.jsp" flush="true" />
			</div>
		</div>
	</div>
</body>

</html>
