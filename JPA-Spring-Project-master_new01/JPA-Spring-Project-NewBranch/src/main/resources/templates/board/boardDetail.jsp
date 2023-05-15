<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>DETAIL</title>
    <!-- jquery cdn -->
    <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
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
    .tbl-header table {
        background-color: #5469d4;
        color: #ffffff;
        border-collapse: collapse;
    }

    .tbl-header th,
    .tbl-header td {
        padding: 8px;
        text-align: left;
        border: 1px solid #6772e5;
    }

    .tbl-content table {
        background-color: #ffffff;
        color: #4455bb;
        border-collapse: collapse;
    }

    .tbl-content th,
    .tbl-content td {
        padding: 8px;
        text-align: left;
        border: 1px solid #6772e5;
    }

    /* 날짜 형식 */
    .tbl-content td[style^="width"]:nth-child(2) {
        font-family: monospace;
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
        /* 댓글 작성 부분 스타일 */
    #comment-write {
        background-color: #ffffff;
        color: #ffffff;
        padding: 10px;
    }

    #comment-write input[type="text"], #comment-write button {
        background-color: #ffffff;
        color: #000000;
        border: none;
        padding: 5px;
        margin-right: 10px;
    }

    /* 댓글 출력 부분 스타일 */
    #comment-list {
        margin-top: 20px;
    }

    #comment-list table {
        width: 100%;
        border-collapse: collapse;
    }

    #comment-list th, #comment-list td {
        padding: 10px;
        border: 1px solid #6772e5;
    }

    #comment-list th {
        background-color: #5469d4;
        color: #ffffff;
    }
    /* 날짜 형식 */
    .comment-list td[style^="width"]:nth-child(4) {
        font-family: monospace;
    }
    /* Footer */
    footer {
        background-color: #6772e5;
        color: #fff;
        padding: 10px;
        text-align: center;
    }
    .submit-btn{
        background-color: #5469d4;
        color: #ffffff;
        font-weight: bold;
        border-radius: 3px;
        height: 30px;
        border: none;
        cursor: pointer;
        margin: 10px;
    }

    .comment-section {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
    }

    .comment-section h2 {
        font-size: 24px;
        margin-bottom: 20px;
    }

    .comment-section form {
        margin-bottom: 20px;
    }

    .comment-section .form-group {
        margin-bottom: 10px;
    }

    .comment-section label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }

    .comment-section input[type="text"],
    .comment-section input[type="email"],
    .comment-section textarea {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .comment-section textarea {
        height: 150px;
    }

    .comment-section button[type="submit"] {
        background-color: #5f93d1;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
    }

    .comment-section button[type="submit"]:hover {
        background-color: #5469d4;
    }

    .comment-section button[type="submit"]:active {
        background-color: #4455bb;
    }

    .comment-section .comment-list {
        margin-top: 20px;
    }

    .comment-section .comment-list h3 {
        font-size: 20px;
        margin-bottom: 10px;
    }

    .comment-section .comment-list ul {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    .comment-section .comment-list li {
        margin-bottom: 20px;
    }

    .comment-section .comment-list .comment-header {
        display: flex;
        justify-content: space-between;
        margin-bottom: 10px;
    }

    .comment-section .comment-list .comment-author {
        font-weight: bold;
    }

    .comment-section .comment-list .comment-date {
        color: #999;
    }

    .comment-section .comment-list .comment-body {
        border: 1px solid #ccc;
        border-radius: 5px;
        padding: 10px;
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
    <a href=""></a>
</nav>
<main>
    <h3>JSP 파일</h3>
    <div class="tbl-header" style="width: 100%">
        <table cellpadding="0" cellspacing="0" border="0">
            <tr>
                <th style="background-color: #5469d4; color: #ffffff; width: 20%">번호</th>
                <td style="background-color: #ffffff; color: #4455bb" th:text="${board.id}"></td>
            </tr>
            <tr>
                <th style="background-color: #5469d4; color: #ffffff; width: 20%">제목</th>
                <td style="background-color: #ffffff; color: #4455bb" th:text="${board.boardTitle}"></td>
            </tr>
            <tr>
                <th style="background-color: #5469d4; color: #ffffff; width: 20%">작성자</th>
                <td style="background-color: #ffffff; color: #4455bb" th:text="${board.boardWriter}"></td>
            </tr>
            <tr>
                <th style="background-color: #5469d4; color: #ffffff; width: 20%">등록날짜</th>
                <td style="background-color: #ffffff; color: #4455bb" th:text="*{#temporals.format(board.boardCreatedTime, 'yyyy.MM.dd HH:mm:ss')}"></td>
            </tr>
            <tr>
                <th style="background-color: #5469d4; color: #ffffff; width: 20%">조회수</th>
                <td style="background-color: #ffffff; color: #4455bb" th:text="${board.boardHits}"></td>
            </tr>
            <tr>
                <th style="background-color: #5469d4; color: #ffffff; width: 20%">내용</th>
                <td style="background-color: #ffffff; color: #4455bb" th:text="${board.boardContents}"></td>
            </tr>
        </table>
    </div>
    <button class="submit-btn" onclick="listReq()">목록</button>
    <button class="submit-btn" onclick="updateReq()">수정</button>
    <button class="submit-btn" onclick="deleteReq()">삭제</button>

    <!-- 댓글 작성 부분 -->
    <div id="comment-write" style="width: 100%">
        <input style="width: 30%" type="text" id="commentWriter" placeholder="작성자">
        <input style="width: 50%" type="text" id="commentContents" placeholder="내용">
        <button class="comment-write-btn" id="comment-write-btn" onclick="commentWrite()">댓글작성</button>
    </div>
    <div class="comment-list">
        <table>
            <tr>
<!--                <th>댓글번호</th>-->
                <th>작성자</th>
                <th>내용</th>
                <th>작성시간</th>
            </tr>
            <tr th:each="comment: ${commentList}">
<!--                <td th:text="${comment.id}"></td>-->
                <td th:text="${comment.commentWriter}"></td>
                <td th:text="${comment.commentContents}"></td>
<!--                <td th:text="${comment.commentCreatedTime}"></td>-->
                <td th:text="*{#temporals.format(comment.commentCreatedTime, 'yyyy.MM.dd HH:mm:ss')}"></td>
            </tr>
        </table>
    </div>

    <!-- 댓글 출력 부분 -->
<!--    <div class="comment-section" id="comment-write">-->
<!--        <h2>댓글</h2>-->
<!--        <form>-->
<!--            <div class="form-group" id="comment-write" >-->
<!--                <label for="commentWriter">이름</label>-->
<!--                <input type="text" id="commentWriter" name="name" placeholder="작성자" required>-->
<!--            </div>-->
<!--            <div class="form-group">-->
<!--                <label for="commentContents">댓글</label>-->
<!--                <textarea id="commentContents" name="commentContents" placeholder="내용" required></textarea>-->
<!--            </div>-->
<!--            <button type="submit" id="comment-write-btn" onclick="commentWrite()">댓글 작성</button>-->
<!--        </form>-->
<!--        <div class="comment-list">-->
<!--            <h3>댓글 목록</h3>-->
<!--            <ul>-->
<!--                <li>-->
<!--                    <div th:each="comment: ${commentList}" class="comment-header">-->
<!--                        <span th:text="${comment.commentWriter}" class="comment-author">작성자</span>-->
<!--                        <span th:text="*{#temporals.format(comment.commentCreatedTime, 'yyyy.MM.dd HH:mm:ss')}" class="comment-date">작성일자</span>-->
<!--                    </div>-->
<!--                    <div th:text="${comment.commentContents}" class="comment-body">-->
<!--                        댓글 내용-->
<!--                    </div>-->
<!--                </li>-->
<!--                &lt;!&ndash; 댓글 목록을 동적으로 생성할 수도 있습니다. &ndash;&gt;-->
<!--            </ul>-->
<!--        </div>-->
<!--    </div>-->
</main>
<!-- Footer -->
<footer>
    &copy; 2023 JSW. MYSITE
</footer>
</body>
<script th:inline="javascript">
    const commentWrite = () => {
        const writer = document.getElementById("commentWriter").value;
        const contents = document.getElementById("commentContents").value;
        console.log("작성자: ", writer);
        console.log("내용: ", contents);
        const id = [[${board.id}]];
        $.ajax({
            // 요청방식: post, 요청주소: /comment/save, 요청데이터: 작성자, 작성내용, 게시글번호
            type: "post",
            url: "/comment/save",
            data: {
                "commentWriter": writer,
                "commentContents": contents,
                "boardId": id
            },
            success: function (res) {
                console.log("요청성공", res);
                let output = "<table>";
                output += "<tr><th>댓글번호</th>";
                output += "<th>작성자</th>";
                output += "<th>내용</th>";
                output += "<th>작성시간</th></tr>";
                for (let i in res) {
                    output += "<tr>";
                    output += "<td>" + res[i].id + "</td>";
                    output += "<td>" + res[i].commentWriter + "</td>";
                    output += "<td>" + res[i].commentContents + "</td>";
                    output += "<td>" + res[i].commentCreatedTime + "</td>";
                    output += "</tr>";
                }
                output += "</table>";
                document.getElementById('comment-list').innerHTML = output;
                document.getElementById('commentWriter').value = '';
                document.getElementById('commentContents').value = '';
            },
            error: function (err) {
                console.log("요청실패", err);
            }
        });
    }

    const listReq = () => {
        console.log("목록 요청");
        const page = [[${page}]]
        location.href="/board/paging?page=1";
    }
    const updateReq = () => {
        console.log("수정 요청");
        const id = [[${board.id}]];
        location.href="/board/update/" +id;
    }
    const deleteReq = () => {
        console.log("삭제 요청");
        const id = [[${board.id}]];
        location.href="/board/delete/" +id;
    }
</script>
</html>