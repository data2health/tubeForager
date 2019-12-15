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
	<jsp:include page="header.jsp" flush="true" />

	<div class="container-fluid"
		style="padding-left: 5%; padding-right: 5%;">
		<br /> <br />
		<div class="col">
			<c:choose>
				<c:when	test="${(empty login or login eq 'guest') and empty param.submit}">
					<form action="login2.jsp" method="post">
						<table>
							<tr>
								<td>
									<table border=0 align=left>
										<tr>
											<th align=left>Guest User ID:</th>
											<td><input type="text" name="login" size="20" value=""></td>
										</tr>
										<tr>
											<th align=left>Password</th>
											<td><input type="password" name="password" size="20" value=""></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><input type="submit" name="submit" value="Login">
									<input type="submit" name="submit" value="Cancel"></td>
							</tr>
						</table>
					</form>
				</c:when>
				<c:when test="${param.submit eq 'Cancel' }">
					<c:redirect url="index.jsp" />
				</c:when>
				<c:when test="${param.submit eq 'Login' }">
					<c:set var="login" scope="session" value="${param.login }" />
					<c:redirect url="index.jsp" />
				</c:when>
				<c:otherwise>
					<c:redirect url="index.jsp" />
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>

</html>
