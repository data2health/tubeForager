<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${not empty param.login}">
<c:set var="login" scope="session" value="${param.login}"/>
<c:redirect url="index.jsp" />
</c:if>
<c:redirect url="login.jsp" />
