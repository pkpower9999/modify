<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>자유게시판 : 글작성</title>
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="/resources/css/write.css">
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script>
        let board_seq = 3;
    </script>    
    <script src="/resources/js/freeWrite.js"></script>

    <%--
    <script>
        <c:if test="${userInfo == null}">
            alert("로그인 후 글작성 가능합니다.");
            location.href="/";
        </c:if>
    </script>
    --%>
</head>
<body>
    <%@include file="/WEB-INF/views/includes/header.jsp"%>
    <div class="content_wrap">
        <h1>자유게시판 글등록</h1>
        <div class="title_area" data-user-seq="${userInfo.seq}">
            <span>제목</span>
            <input type="text" id="post_title">
        </div>
        <div class="content_area">
            <textarea id="post_content"></textarea>
        </div>
        <div class="btn_area">
            <button id="post_save">등록</button>
            <button id="post_cancel">취소</button>
        </div>
    </div>
</body>
</html>