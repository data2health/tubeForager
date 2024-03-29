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
	<jsp:param name="title" value="tubeForager Video" />
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

	<div class="container-fluid"
		style="padding-left: 5%; padding-right: 5%;">
		<br /> <br />
		<div class="col">
       <c:if test="${not empty param.channel}">
           [
           <a href="../channel/channelList.jsp">Channels</a> >
           <tube:channel channelId="${param.channel}"><a href="../channel/channel.jsp?id=${param.channel}"><tube:channelChannelTitle/></a></tube:channel> >
           <tube:playlist playlistId="${param.playlist}"><a href="../playlist/playlist.jsp?id=${param.playlist}"><tube:playlistTitle/></a></tube:playlist>
           ]
       </c:if>
			<tube:video videoId="${param.id}">
				<h2>
					Video: <tube:videoTitle />
				</h2>
				<p>
					<tube:videoDescription />
				</p>
				<pre>*** preformatted ***
            
            <tube:videoDescription />
				</pre>
				<p>
					Duration: <tube:videoDuration />
				</p>
				<p>Tags</p>
				<ul>
					<tube:foreachTag var="t">
						<tube:tag>
							<li><tube:tagTag />
						</tube:tag>
					</tube:foreachTag>
				</ul>
				<p></p>
				<tube:videoPlayer />
			</tube:video>
			<div style="width: 100%; float: left">
				<jsp:include page="../footer.jsp" flush="true" />
			</div>
		</div>
	</div>
</body>

</html>
