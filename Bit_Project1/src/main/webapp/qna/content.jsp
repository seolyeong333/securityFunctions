<%@page import="java.text.SimpleDateFormat"%>
<%@page import="board.BoardDataBean"%>
<%@page import="board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp" %>
<link rel="stylesheet" type="text/css" href="${project}style_board.css">
<script type="text/javascript" src="${project}script_board.js"></script>

<h2> ${page_content} </h2>
<br>

<table>
	<tr>
		<th style="width:150px;"> ${str_num} </th>
		<td style="text-align: center; width:200px"> ${number} </td>
		<th style="width:150px;"> ${str_readcount} </th>
		<td style="text-align: center; width:200px"> ${boardDto.readcount} </td>
	</tr>
	<tr>
		<th> ${str_writer} </th>
		<td style="text-align: center;"> ${boardDto.writer} </td>
		<th> ${str_reg_date} </th>
		<td style="text-align: center;">
			<fmt:formatDate type="both" value="${boardDto.reg_date}"
				pattern="yyyy-MM-dd HH:mm"/>			
		</td>
	</tr>
	<tr>	
		<th> ${str_subject} </th>
		<td colspan="3"> ${boardDto.subject} </td>
	</tr>
	<tr>
		<th> ${str_content} </th>
		<td colspan="3"> <pre>${boardDto.content}</pre> </td>
	</tr>
	<tr>
		<th colspan="4">
			<input class="inputbutton" type="button" value="${btn_modify}"
				onclick="location='boardmodifyform.do?num=${num}&pageNum=${pageNum}'">
			<input class="inputbutton" type="button" value="${btn_delete}"
				onclick="location='boarddeleteform.do?num=${num}&pageNum=${pageNum}'">
			<input class="inputbutton" type="button" value="${btn_reply}"
				onclick="location='boardwriteform.do?num=${boardDto.num}&ref=${boardDto.ref}&re_step=${boardDto.re_step}&re_level=${boardDto.re_level}'">
			<input class="inputbutton" type="button" value="${btn_list}"
				onclick="location='boardlist.do?pageNum=${pageNum}'">
		</th>
	</tr>
</table>








    