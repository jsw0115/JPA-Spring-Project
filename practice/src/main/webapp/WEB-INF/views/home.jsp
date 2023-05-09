<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Home</title>
    <style>
        body {
          background-color: #014238;
          color: #8c928b;
          font-family: 'Helvetica Neue', sans-serif;
          margin: 0;
          padding: 0;
        }

        header {
          background-color: #202976;
          color: #fff;
          padding: 20px;
        }

        nav {
          background-color: #fff;
          border-bottom: 1px solid #8c928b;
          color: #014238;
          display: flex;
          justify-content: space-between;
          padding: 10px 20px;
        }

        nav ul {
          list-style: none;
          margin: 0;
          padding: 0;
        }

        nav li {
          display: inline-block;
          margin-right: 20px;
        }

        nav a {
          display: block;
          text-decoration: none;
          color: #8c928b;
          padding: 10px;
          transition: all 0.2s ease-in-out;
        }

        nav a:hover {
          color: #fff;
          background-color: #014238;
          text-decoration: underline;
        }

        main {
          display: flex;
          flex-wrap: wrap;
          margin: 20px;
        }

        section {
          background-color: #fff;
          border: 1px solid #8c928b;
          border-radius: 5px;
          box-shadow: 0px 3px 3px rgba(0, 0, 0, 0.2);
          flex-basis: 100%;
          margin: 10px;
          padding: 20px;
        }

        h2 {
          color: #014238;
          font-size: 1.5rem;
          margin-bottom: 10px;
        }

        ul {
          list-style: none;
          margin: 0;
          padding: 0;
        }

        li {
          display: flex;
          justify-content: space-between;
          margin-bottom: 10px;
        }

        a {
          color: #014238;
          text-decoration: none;
        }

        span {
          color: #8c928b;
        }

        footer {
          background-color: #fff;
          border-top: 1px solid #8c928b;
          color: #8c928b;
          font-size: 0.8rem;
          padding: 10px 20px;
          text-align: center;
        }

    </style>
</head>
<body>
    <h1>Home 페이지 입니다.</h1>
    <!-- Navbar -->
        <nav class="navbar">
            <div class="container">
                <a class="navbar-brand" href="#">게시판</a>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">글쓰기</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container">
            <!-- Jumbotron -->
            <div class="jumbotron">
                <h1>게시판</h1>
                <p>여러분의 이야기를 들려주세요.</p>
            </div>

            <!-- Posts -->
            <div class="posts">
                <div class="post">
                    <h2>첫 번째 게시물</h2>
                    <div class="meta">
                        <span>작성자: John Doe</span>
                        <span>작성일: 2023-02-27</span>
                    </div>
                    <div class="content">
                        첫 번째 게시물입니다. 여러분도 이곳에 글을 남겨주세요.
                    </div>
                </div>
                <div class="post">
                    <h2>두 번째 게시물</h2>
                    <div class="meta">
                        <span>작성자: Jane Doe</span>
                        <span>작성일: 2023-02-26</span>
                    </div>
                    <div class="content">
                        두 번째 게시물입니다. 여러분도 이곳에 글을 남겨주세요.
                    </div>
                </div>
            </div>

            <!-- Form -->
            <form>
                <h2>글쓰기</h2>
                <div class="form-group">
                    <label for="title">제목</label>
                    <input type="text" id="title" name="title">
                </div>
                <div class="form-group">
                    <label for="author">작성자</label>
                    <input type="text" id="author" name="author">
                </div>
                <div class="form-group">
                    <label for="content">내용</label>
                    <textarea id="content" name="content"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">등록</button>
            </form>
        </div>
</body>
</html>