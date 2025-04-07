<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="request.QnaDataBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="request.QnaDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp" %>
<link rel="stylesheet" type="text/css" href="${project}style_board.css">
<script type="text/javascript" src="${project}script_board.js"></script>

<c:if test="${userId eq null}">
	로그인창
</c:if >
<c:if test="${userId eq 1}">
	관리자창
	<h2> ${page_list} ( ${str_count} : ${count} ) </h2>
	<br>
	<table>
		<tr>
			<td colspan="6" style="text-align:right;"> 
				<a href="boardwriteform.do">
					${str_write}&nbsp;&nbsp;&nbsp;
				</a> 
			</td>
		</tr>
		<tr>
			<th style="width:7%"> ${str_num} </th>
			<th style="width:40%"> ${str_subject} </th>
			<th style="width:7%"> ${str_readcount} </th>
			<th style="width:13%"> ${str_writer} </th>
			<th style="width:15%"> ${str_reg_date} </th>
			<th style="width:13%"> ${str_ip} </th>
		</tr>
		<c:if test="${count eq 0}">
			<tr>
				<td colspan="6" style="text-align: center;">
					${msg_list_x}
				</td>
			</tr>
		</c:if>
		<c:if test="${count ne 0}">	
			<c:set var="number" value="${number}"/>	
			<c:forEach var="dto" items="${dtos}">		
				<tr>
					<td style="text-align:center">
						${number}
						<c:set var="number" value="${number -1}"/>					
					</td>
					<td>
						<c:if test="${dot.re_level gt 1}">
							<c:set var="wid" value="${( dto.re_level - 1) * 10}"/>
							<img src="${project}images/level.gif" width="${wid}" height="15">
						</c:if>
						<c:if test="${dto.re_level gt 0 }">
							<img src="${project}images/re.gif" width="20" height="15">
						</c:if>
						<a href="boardcontent.do?num=${dto.num}&pageNum=${pageNum}&number=${number+1}">
							${dto.subject}
						</a>
					</td>
					<td style="text-align:center">
						${dto.readcount}
					</td>
					<td style="text-align:center">
						${dto.writer}
					</td>
					<td style="text-align:center">
						<fmt:formatDate type="both" value="${dto.reg_date}"
							pattern="yyyy-MM-dd HH:mm"/>
					</td>
					<td style="text-align:center">
						${dto.ip}
					</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<br>
	<center>
		<c:if test="${count gt 0}">
			<c:if test="${startPage gt pageBlock}">
				<a href="boardlist.do">[◀◀]</a>
				<a href="boardlist.do?pageNum=${startPage - pageBlock}">[◀]</a>
			</c:if>
			<c:forEach var="i" begin="${startPage}" end="${endPage}">
				<c:if test="${i eq currentPage}">
					<b>[${i}]</b>
				</c:if>
				<c:if test="${i ne currentPage }">
					<a href="boardlist.do?pageNum=${i}">[${i}]</a>
				</c:if>
			</c:forEach>
			<c:if test="${pageCount gt endPage}">		
				<a href="boardlist.do?pageNum=${startPage + pageBlock}">[▶]</a>
				<a href="boardlist.do?pageNum=${pageCount}">[▶▶]</a>
			</c:if>
		</c:if>
	</center>
</c:if>
<c:if test="${userId eq -1}">
	사용자 문의창
</c:if>













