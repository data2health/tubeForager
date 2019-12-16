<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="lucene" uri="http://icts.uiowa.edu/lucene"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en-US">
<jsp:include page="head.jsp" flush="true">
	<jsp:param name="title" value="tubeForager" />
</jsp:include>
<style type="text/css" media="all">
@import "resources/layout.css";

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
	<jsp:include page="header.jsp" flush="true" />

	<div class="container-fluid"
		style="padding-left: 5%; padding-right: 5%;">
		<br /> <br />
		<div class="col">
			<h2>tubeForager</h2>
			<ul>
				<li><a href="channel/channelList.jsp">Browse channels</a>
				<li><a href="playlist/playlistList.jsp">Browse playlists</a>
				<li><a href="video/videoList.jsp">Browse videos</a>
			</ul>
			<p>This application manages search results from YouTube relevant to the CTSA consortium.
			There is support for browsing of channels, playlists and videos, with the ability to flag each as
			relevant or non-relevant. Relevant resources are included in CTSAsearch results.
			While our harvesting of metadata is currently focused on video relevant to investigators and staff,
			we anticipate that resources relevant to patients and research subjects will also be of interest to
			the consortium at some point.</p>
			<div style="width: 100%; float: left">
				<jsp:include page="footer.jsp" flush="true" />
			</div>
		</div>
	</div>
</body>

</html>
