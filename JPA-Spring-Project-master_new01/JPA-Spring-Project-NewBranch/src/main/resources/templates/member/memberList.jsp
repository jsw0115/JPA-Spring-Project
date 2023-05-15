<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en" xmlns:th="http://www.thymeleaf.org">
    <head>
        <meta charset="UTF-8">
        <title>List</title>
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
            h1 {
                font-size: 30px;
                color: #fff;
                text-transform: uppercase;
                font-weight: 300;
                text-align: center;
                margin-bottom: 15px;
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
                overflow-x: auto;
                margin-top: 0px;
                border: none;
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

            /* custom scrollbar */
            ::-webkit-scrollbar {
                width: 6px;
            }
            ::-webkit-scrollbar-track {
                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
            }
            ::-webkit-scrollbar-thumb {
                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
            }

            /* demo styles */
            body {

                font-family: 'Roboto', sans-serif;
            }
            section {
                margin: 50px;
            }
            .made-with-love {
                margin-top: 40px;
                padding: 10px;
                clear: left;
                text-align: center;
                font-size: 10px;
                font-family: arial;
                color: #fff;
            }
            .made-with-love i {
                font-style: normal;
                color: #F50057;
                font-size: 14px;
                position: relative;
                top: 2px;
            }
            .made-with-love a {
                color: #fff;
                text-decoration: none;
            }
            .made-with-love a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
    <!-- Header -->
    <header>
        <h1>JPA SPRING BOOT SITE</h1>
    </header>
    <!-- Navigation -->
    <!--<nav>-->
    <!--    <a href="/member/update">내 정보 수정하기</a>-->
    <!--    <a href="/member/logout">로그아웃</a>-->
    <!--    <a href="/board">게시판</a>-->
    <!--</nav>-->
    <main>
        <h2>MemberList</h2>
        <h3>JSP 파일</h3>
        <div class="tbl-header">
            <table cellpadding="0" cellspacing="0" border="0">
                <thead>
                <tr>
                    <th>id</th>
                    <th>memberEmail</th>
                    <th>memberName</th>
                    <th>상세조회</th>
                    <th>삭제</th>
                </tr>
                </thead>
            </table>
        </div>
        <div class="tbl-content">
            <table cellpadding="0" cellspacing="0" border="0">
                <tbody>
                <tr th:each="member: ${memberList}">
                    <td th:text="${member.id}"></td>
                    <td th:text="${member.memberEmail}"></td>
                    <td th:text="${member.memberName}"></td>
                    <td>
                        <!-- query string /member?id=1
                        rest api /member/1 -->
                        <a th:href="@{|/member/${member.id}|}">조회</a>
                    </td>
                    <td>
                        <a th:href="@{|/member/delete/${member.id}|}">삭제</a>
                    </td>
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