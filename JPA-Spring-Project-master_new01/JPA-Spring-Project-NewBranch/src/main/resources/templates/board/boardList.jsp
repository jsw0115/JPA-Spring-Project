<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>LIST</title>
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
    /* 날짜 형식 */
    .tbl-content td[style^="width"]:nth-child(4) {
      font-family: monospace;
    }
    /* Footer */
    footer {
      background-color: #6772e5;
      color: #fff;
      padding: 10px;
      text-align: center;
    }
    .submit-btn {
        background-color: #5469d4;
        color: #ffffff;
        font-weight: bold;
        border-radius: 3px;
        height: 30px;
        border: none;
        cursor: pointer;
        margin: 10px;
    }
    .submit-btn:hover {
        background-color: #4455bb;
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
  <a href="/member/update">내 정보 수정하기</a>
  <a href="/member/logout">로그아웃</a>
  <a href="/board">게시판</a>
</nav>
<main>
  <div class="tbl-content">
  <table style="width: 100%">
    <tr>
      <th style="width: 10%">id</th>
      <th style="width: 25%">title</th>
<!--      <th>title(||쓰지 않은 경우)</th>-->
      <th style="width: 25%">writer</th>
      <th style="width: 20%">date</th>
      <th style="width: 10%">hits</th>
    </tr>
    <tr th:each="board: ${boardList}">
      <td th:text="${board.id}"></td>
      <td><a th:href="@{|/board/${board.id}|}" th:text="${board.boardTitle}"></a></td>
      <!-- |~| : thymeleaf 관련 자료 : 링크로 넘어갈 때 어떻게 잘못 넘어감... 그래서 ||로 감싸줘야함... ??? -->
<!--      <td><a th:href="@{/board/${board.id}}" th:text="${board.boardTitle}"></a></td>-->
      <td th:text="${board.boardWriter}"></td>
      <!-- 시간 형식 설정 -->
      <td th:text="*{#temporals.format(board.boardCreatedTime, 'yyyy-MM-dd HH:mm:ss')}"></td>
      <td th:text="${board.boardHits}"></td>
    </tr>
  </table>
  </div>
  </main>
  <!-- Footer -->
  <footer>
    &copy; 2023 JSW. MYSITE
  </footer>
</body>
</html>