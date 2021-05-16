<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Header</title>
    <link rel="stylesheet" href="/resources/css/header.css">

</head>
<body>
    <header>
        <a href="/" id="home">Home</a>
        <a href="/notice" id="notice">공지사항</a>
        <a href="/freeBoard" id="freeBoard">자유게시판</a>
        <div class="loginbox">
            <c:if test="${userInfo == null}">
                <a href="/member/login">로그인</a>
                <a href="/member/join">회원가입</a>
            </c:if>
            <c:if test="${userInfo != null}">
                <span class="grade">${userInfo.grade}</span>
                <a href="/member/detail?ui_seq=${userInfo.seq}" id="username">${userInfo.name}님</a>
                <a href="/member/logout">로그아웃</a>
            </c:if>
        </div>
        <nav id="gnb">
            <ul></ul>
        </nav>
    </header>
</body>
</html>