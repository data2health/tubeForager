<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:update dataSource="jdbc/YouTubeTagLib">
    update youtube.playlist set relevant = ?::boolean where playlist_id = ?
    <sql:param>${param.mode}</sql:param>
    <sql:param>${param.id}</sql:param>
</sql:update>

<c:redirect url="playlistList.jsp" />
