<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<script type="text/javascript" src="${project}script_member.js"></script>    
<h2> ${page_input} </h2>

<c:if test="${result eq 0}">
	<script type="text/javascript">
		erroralert( error_input );
	</script>
</c:if>
<c:if test="${result eq 1}">
	<c:redirect url="logon/login"/>		
</c:if>

<c:if test="${result eq 2}">
		<script type="text/javascript">
		erroralert( msg_confirm_user_id );
	</script>
</c:if>

<c:if test="${result eq 3}">
		<script type="text/javascript">
		erroralert( msg_confirm_nickname );
	</script>	
</c:if>

<c:if test="${result eq 4}">
		<script type="text/javascript">
		erroralert( msg_confirm_email );
	</script>	
</c:if>
















