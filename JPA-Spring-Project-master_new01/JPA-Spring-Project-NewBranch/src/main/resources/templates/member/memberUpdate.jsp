<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>UPDATE</title>
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
</nav>
<main>
    <div class="tbl-content">
    <h3>JSP 파일</h3>
        <form action="/member/update" method="post">
<!--            <input type="hidden" th:value="${updateMember.id}" name="id"> <br>-->
            <input type="hidden" th:value="${updateMember.id}" name="id"> <br>
            <table>
                <tr>
                    <td>이메일</td>
                    <td><input type="text" th:value="${updateMember.memberEmail}" name="memberEmail" readonly></td>
                </tr>
                <tr>
                    <td>비밀번호</td>
                    <td><input type="password" th:value="${updateMember.memberPassword}" name="memberPassword"></td>
                </tr>
                <tr>
                    <td>이름</td>
                    <td><input type="text" th:value="${updateMember.memberName}" name="memberName"></td>
                </tr>
            </table>
            <input type="submit" value="정보수정" class="submit-btn">
        </form>
    </div>
</main>
<!-- Footer -->
<footer>
    &copy; 2023 JSW. MYSITE
</footer>
</body>
</html>