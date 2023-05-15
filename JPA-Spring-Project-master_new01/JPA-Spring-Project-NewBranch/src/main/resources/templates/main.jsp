<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>MAIN</title>
    <style>
    /* Header */
    header {
        background-color: #6772e5;
        padding: 10px;
    }
    header h1 {
        color: #fff;
        font-size: 28px;
    }
    /* Navigation */
    nav {
        background-color: #fff;
        border-bottom: 1px solid #d5d5d5;
        padding: 10px;
    }
    nav a {
        color: #6772e5;
        text-decoration: none;
        margin-right: 10px;
    }
    nav a:hover {
        text-decoration: underline;
    }
    /* Main content */
    main {
        max-width: 800px;
        margin: 0 auto;
        padding: 10px;
    }
    /* Footer */
    footer {
        background-color: #6772e5;
        color: #fff;
        padding: 10px;
        text-align: center;
    }
  </style>
</head>
<body>
<!-- Header -->
<header>
    <h1>JPA SPRING BOOT SITE</h1>
</header>
<!-- Navigation -->
<nav>
    <h3>JSP 파일</h3>
    <a href="/member/update">내 정보 수정하기</a>
    <a href="/member/logout">로그아웃</a>
    <a href="/board">게시판</a>
</nav>
<!-- Main content -->
<main>
    <p>Login Email 확인 : <span><%= session.getAttribute("loginEmail") %></span></p>
    <p>Login Name 확인 : <span><%= session.getAttribute("loginName") %></span></p>
    <!--<a href="/member/update">내 정보 수정하기</a>
    <a href="/member/logout">로그아웃</a>
    <a href="/board">게시판</a>-->
</main>
<!-- Footer -->
<footer>
    &copy; 2023 JSW. MYSITE
</footer>
</body>
</html>