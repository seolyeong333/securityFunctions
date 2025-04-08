<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="project" value="/logon/"/>

<c:set var="page_main" value="메인페이지"/>
<c:set var="page_input" value="회 원 가 입"/>
<c:set var="page_confirm" value="아이디 중복 확인"/>
<c:set var="page_login" value="로 그 인"/>
<c:set var="page_delete" value="회 원 탈 퇴"/>
<c:set var="page_modify" value="회원 정보 수정"/>

<c:set var="msg_main" value="비회원이시면 회원가입을 해주세요"/>
<c:set var="msg_main_login" value="님 안녕하세요"/> 
<c:set var="msg_input" value="회원정보를 입력하세요"/>
<c:set var="msg_confirm_x" value="는 사용할 수 없습니다"/>
<c:set var="msg_confirm_o" value="는 사용할 수 있습니다"/>
<c:set var="msg_login" value="회원가입에 성공했습니다"/>
<c:set var="msg_passwd" value="비밀번호를 다시 확인해 주세요"/>
<c:set var="msg_modify" value="수정할 정보를 입력하세요"/>

<c:set var="str_user_id" value="아이디"/>
<c:set var="str_passwd" value="비밀번호"/>
<c:set var="str_nickname" value="닉네임"/>
<c:set var="str_email" value="이메일"/>
<c:set var="str_created_at" value="가입일자"/>

<c:set var="btn_login" value="로그인"/>
<c:set var="btn_ok" value="확인"/>
<c:set var="btn_cancle" value="취소"/>
<c:set var="btn_input" value="회원가입"/>
<c:set var="btn_modify" value="정보수정"/>
<c:set var="btn_delete" value="회원탈퇴"/>
<c:set var="btn_logout" value="로그아웃"/>
<c:set var="btn_confirm" value="중복확인"/>
<c:set var="btn_input_cancle" value="가입취소"/>
<c:set var="btn_main" value="메인페이지"/>
<c:set var="btn_mod" value="수정"/>
<c:set var="btn_mod_cancle" value="수정취소"/>
<c:set var="btn_del" value="탈퇴"/>
<c:set var="btn_del_cancle" value="탈퇴취소"/>
    