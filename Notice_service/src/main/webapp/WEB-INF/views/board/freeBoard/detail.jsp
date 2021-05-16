<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
        <%
        response.setHeader("Cache-Control", "no-cache, no-store, must_revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Expires", "0");
    %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="UTF-8">
                <title>자유게시판</title>
                <script>
                	let userRole = "${userInfo.type}"; 
                </script>
                <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
                <script src="/resources/js/freeDetail.js"></script>
                <link rel="stylesheet" href="/resources/css/reset.css">
                <link rel="stylesheet" href="/resources/css/detail.css">
                <script src="https://kit.fontawesome.com/5b0ab6fd21.js" crossorigin="anonymous"></script>

            </head>

            <body>
                <%@include file="/WEB-INF/views/includes/header.jsp" %>

                    <div class="content_wrap">
                        <h1>자유게시판</h1>
                        <div class="title_area">
                            <div class="title_left">
                                <span id="pi_seq">${data.seq}</span>
                                <span id="post_title">${data.title}<span class="comment_cnt"></span></span>
                            </div>
                            <div class="title_right">
                                <span id="post_date"><i class="far fa-calendar-check"></i>
                                    <fmt:formatDate value="${data.reg_dt}" pattern="yyyy-MM-dd HH:mm:ss" />
                                   
                                </span>
                                <span id="post_like"><i class="far fa-thumbs-up"></i></span>
                                <span id="post_dislike"><i class="far fa-thumbs-down"></i></span>
                                <span id="post_count"><i class="fas fa-eye"></i>${data.count}</span>
                            </div>
                        </div>
                        <div class="post_body">
                            ${data.content}
                            <div class="likes_area" data-user-seq="${userInfo.seq}">
                                <button id="post_like_btn" data-value="1"><i class="far fa-thumbs-up"></i>좋아요 (${likes[1]})</button>
                                <button id="post_dislike_btn" data-value="0"><i class="far fa-thumbs-down">싫어요 (${likes[0]})</i></button>
                            </div>
                        </div>
                        <c:if test="${data.owner == userInfo.seq}">
                            <div class="post_control">
                                <a href="/freeBoard/modify?seq=${data.seq}" id="post_modify">수정</a>
                                <a href="#" id="post_delete">삭제</a>
                            </div>
                       </c:if>
                      

                    </div>
            </body>

            </html>