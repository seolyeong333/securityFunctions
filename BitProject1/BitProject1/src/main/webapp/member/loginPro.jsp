<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<script type="text/javascript" src="${project}script_member.js"></script>    

<h2> ${page_login} </h2>

<c:if test="${result eq 0}">   
	<script type="text/javascript">
		erroralert(error_user_id);
	</script>
</c:if>
<c:if test="${result eq -1}">
	<script type="text/javascript">
		erroralert(error_passwd);
	</script>
</c:if>
<c:if test="${result eq 1}">
	<c:redirect url="${pageContext.request.contextPath}/logon/main"/>	
</c:if>