<%@page import="board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp" %>
<script type="text/javascript" src="${project}script_board.js"></script>
<h2> ${page_modify} </h2>

<c:if test="${result eq 0}">
	<script type="text/javascript">
		alert( error_modify );			
	</script>
	<meta http-equiv="refresh" content="0; url=boardlist.do?pageNum=${pageNum}">
</c:if>
<c:if test="${result eq 1}">
	<c:redirect url="boardlist.do?pageNum=${pageNum}"/>
</c:if>









