<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:update dataSource="jdbc/YouTubeTagLib">
    update youtube.video set relevant = ?::boolean where video_id = ?
    <sql:param>${param.mode}</sql:param>
    <sql:param>${param.id}</sql:param>
</sql:update>

<c:redirect url="playlist.jsp?id=${param.playlist}" />
