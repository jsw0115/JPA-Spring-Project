<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>SAVE</title>
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
    .tbl-form {
        width: 100%;
        border-collapse: collapse;
        background-color: #5469d4;
        color: #ffffff;
    }

    .tbl-form th {
        width: 20%;
        padding: 8px;
        text-align: left;
        border: 1px solid #6772e5;
        background-color: #4455bb;
    }

    .tbl-form td {
        width: 80%;
        padding: 8px;
        text-align: left;
        border: 1px solid #6772e5;
        background-color: #ffffff;
        color: #ffffff;
    }
    .tbl-form td:first-child {
        width: 20%;
        background-color: #4455bb;
    }
    .tbl-form input[type="text"],
    .tbl-form textarea {
        width: 80%;
        padding: 8px;
        border: 1px solid #6772e5;
        border-radius: 4px;
        margin-bottom: 10px;
    }

<!--    .tbl-form .submit-btn {-->
<!--        background-color: #5469d4;-->
<!--        color: #ffffff;-->
<!--        font-weight: bold;-->
<!--        border-radius: 3px;-->
<!--        height: 30px;-->
<!--        border: none;-->
<!--        cursor: pointer;-->
<!--        margin: 20px;-->
<!--    }-->
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
        margin: 0 auto;
        display: flex;
        justify-content: center;
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
<!-- front 부분은 되도록 복사 붙여넣기 -->
<form action="/board/save" method="post">
    <div class="tbl-content">
        <table class="tbl-form">
            <tr>
                <td>작성자</td>
                <td><input type="text" name="boardWriter"></td>
<!--                <td><input type="text" th:value="${updateMember.memberEmail}" name="memberEmail" readonly></td>-->
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="text" name="boardPass"></td>
            </tr>
            <tr>
                <td>제목</td>
                <td><input type="password" name="boardTitle"></td>
            </tr>
            <tr>
                <td>내용</td>
                <td><textarea name="boardContents" col="30" rows="10"></textarea></td>
            </tr>
        </table>

    </div>
    <br>
    <br>
<!--    <input type="text" name="boardWriter"> <br>-->
<!--    <input type="text" name="boardPass"> <br>-->
<!--    <input type="text" name="boardTitle"> <br>-->
<!--    <textarea name="boardContents" col="30" rows="10"> </textarea> <br>-->
    <input class="submit-btn" type="submit" value="글작성">
    <br>
</form>
</main>
<!-- Footer -->
<footer>
    &copy; 2023 JSW. MYSITE
</footer>
</body>
</html>