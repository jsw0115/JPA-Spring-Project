<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en" xmlns:th="http://www.thymeleaf.org">
    <head>
      <meta charset="UTF-8">
      <title>DETAIL</title>
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
        table {
          width: 100%;
          table-layout: fixed;
        }
        .tbl-header {
          background-color: #6772e5;
        }
        .tbl-content {
          height: 300px;
          margin-top: 0px;
          border: none;
          display: flex;
          margin: 0 auto;
        }
        th {
          padding: 20px 15px;
          text-align: left;
          font-weight: 500;
          font-size: 12px;
          color: #fff;
          text-transform: uppercase;
        }
        td {
          padding: 15px;
          text-align: left;
          vertical-align: middle;
          font-weight: 300;
          font-size: 12px;
          color: #000;
          border-bottom: solid 1px rgba(255,255,255,0.1);
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
        <a href="/board">To-Do List</a>
        <a href="/board">쇼핑몰 사이트</a>
        <a href="/board">블로그 사이트</a>
        <a href="/board">방명록 사이트</a>
        <a href="/board">채팅 어플리케이션</a>
        <a href="/board">인스타그램 클론 코딩</a>
        <a href="/board">마이페이지</a>
    </nav>
    <h3>JSP 파일</h3>
    <main>
      <div class="tbl-content">
        <table>
          <tr>
            <th>아이디</th>
            <th>이메일</th>
            <th>비밀번호</th>
            <th>이름</th>
          </tr>
          <tr>
            <td th:text="${member.id}"></td>
            <td th:text="${member.memberEmail}"></td>
            <td th:text="${member.memberPassword}"></td>
            <td th:text="${member.memberName}"></td>
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