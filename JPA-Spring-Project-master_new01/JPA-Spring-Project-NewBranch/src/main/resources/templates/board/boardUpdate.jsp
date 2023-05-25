<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
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
        color: #4455bb;
    }

    .tbl-form input[type="text"],
    .tbl-form textarea {
        width: 100%;
        padding: 8px;
        border: 1px solid #6772e5;
        border-radius: 4px;
        margin-bottom: 10px;
    }

    .tbl-form .submit-btn {
        background-color: #5469d4;
        color: #ffffff;
        font-weight: bold;
        border-radius: 3px;
        height: 30px;
        border: none;
        cursor: pointer;
        margin: 10px;
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
    <form action="/board/update" method="post" name="updateForm">
        <table class="tbl-form">
            <tr>
                <th>작성자</th>
                <td>
                    <input style="width: 80%" type="text" name="boardWriter" th:value="${boardUpdate.boardWriter}" readonly>
                </td>
            </tr>
            <tr>
                <th>비밀번호</th>
                <td>
                    <input style="width: 80%" type="password" name="boardPass" id="boardPass">
                </td>
            </tr>
            <tr>
                <th>제목</th>
                <td>
                    <input style="width: 80%" type="text" name="boardTitle" th:value="${boardUpdate.boardTitle}">
                </td>
            </tr>
            <tr>
                <th>내용</th>
                <td>
                    <textarea style="width: 80%" name="boardContents" col="30" rows="10" th:value="${boardUpdate.boardContents}"></textarea>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input class="submit-btn" type="submit" value="글수정">
                </td>
            </tr>
        </table>
        <input type="hidden" name="id" th:value="${boardUpdate.id}">
        <input type="hidden" name="boardHits" th:value="${boardUpdate.boardHits}">
    </form>
    <script th:inline="javascript">
        const boardUpdate = () => {
            const pass = [[${boardUpdate.boardPass}]];
            const inputPass = document.getElementById("boardPass").value;
            if (pass == inputPass) {
                document.updateForm.submit();
            } else {
                alert("비밀번호가 일치하지 않습니다!");
            }
        }
    </script>
</main>
<!-- Footer -->
<footer>
    &copy; 2023 JSW. MYSITE
</footer>
</body>
</html>