<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>PAGING</title>
    <style>
        /* Header */
        header {
            background-color: #6772e5;
            padding: 10px;
            width: 100%;
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
            width: 100%;
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
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 40px; /* footer의 높이 설정 */
            line-height: 40px;
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
        .page {
            display: inline-block;
            margin: 0 5px;
            display: flex;
            justify-content: center;
            /* 수평 중앙 정렬하기 */
            margin: 20px;
            text-align: center;
            align: center;
        }

        .paging {
            padding: 5px 10px;
            background-color: #5469d4;
            color: #ffffff;
            text-decoration: none;
            border-radius: 3px;
            /* 수직 중앙 정렬하기 */
            margin: 10px;
            top: 50%;
        }
        .paging:hover {
            background-color: #6772e5;
        }

        .paging.disabled {
            background-color: #cccccc;
            pointer-events: none;
        }
        /* demo styles */
        body {
            font-family: sans-serif;
            font-family: 'Roboto', sans-serif;
            position: relative;
            min-height: 100vh;
            margin: 0;
            width: 100%;
            padding-bottom: 40px; /* footer의 높이 만큼 여백 추가 */
        }
        /* 날짜 형식 */
        .tbl-content td[style^="width"]:nth-child(4) {
            font-family: monospace;
        }
        .tbl-header th,
        .tbl-content td {
            padding: 8px;
            text-align: left;
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
        }

        .tbl-content table {
            background-color: #ffffff;
            color: #4455bb;
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
<nav>
    <a href="/member/update">내 정보 수정하기</a>
    <a href="/member/logout">로그아웃</a>
    <a href="/board">게시판</a>
</nav>
<main>
<!--<table>-->
<!--  <tr>-->
<!--    <th>id</th>-->
<!--    <th>title</th>-->
<!--    <th>writer</th>-->
<!--    <th>date</th>-->
<!--    <th>hits</th>-->
<!--  </tr>-->
<!--  <tr th:each="board: ${boardList}">-->
<!--    <td th:text="${board.id}"></td>-->
<!--    <td><a th:href="@{|/board/${board.id}|(page=${boardList.number + 1})}" th:text="${board.boardTitle}"></a></td>-->
<!--    <td th:text="${board.boardWriter}"></td>-->
<!--    <td th:text="*{#temporals.format(board.boardCreatedTime, 'yyyy-MM-dd HH:mm:ss')}"></td>-->
<!--    &lt;!&ndash; 시간 형식 설정 &ndash;&gt;-->
<!--    <td th:text="${board.boardHits}"></td>-->
<!--  </tr>-->
<!--</table>-->
    <div class="tbl-header">
        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%">
            <thead>
            <tr>
                <th style="width: 10%">id</th>
                <th style="width: 25%">title</th>
                <th style="width: 25%">writer</th>
                <th style="width: 20%">date</th>
                <th style="width: 10%">hits</th>
            </tr>
            </thead>
        </table>
    </div>
    <div class="tbl-content">
        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%">
            <tbody>
            <tr th:each="board: ${boardList}">
                <td style="width: 10%" th:text="${board.id}"></td>
                <td style="width: 25%"><a th:href="@{|/board/${board.id}|(page=${boardList.number + 1})}" th:text="${board.boardTitle}"></a></td>
                <td style="width: 25%" th:text="${board.boardWriter}"></td>
                <td style="width: 20%" th:text="*{#temporals.format(board.boardCreatedTime, 'yyyy.MM.dd HH:mm:ss')}"></td>
                <td style="width: 10%" th:text="${board.boardHits}"></td>
            </tr>
            </tbody>
        </table>
    </div>
    <div class="page">
        <!-- 첫번째 페이지로 이동 -->
        <!-- /board/paging?page=1 -->
        <a class="paging" th:href="@{/board/paging(page=1)}">처음</a>
        <!-- 이전 링크 활성화 비활성화 -->
        <!-- boardList.getNumber() 사용자:2페이지 getNumber()=1 -->
        <a class="paging" th:href="${boardList.first} ? '#' : @{/board/paging(page=${boardList.number})}">이전</a>

        <!-- 페이지 번호 링크(현재 페이지는 숫자만)
                for(int page=startPage; page<=endPage; page++)-->
        <span class="page" th:each="page: ${#numbers.sequence(startPage, endPage)}">
        <!-- 현재페이지는 링크 없이 숫자만 -->
            <span th:if="${page == boardList.number + 1}" th:text="${page}"></span>
            <!-- 현재페이지 번호가 아닌 다른 페이지번호에는 링크를 보여줌 -->
            <span th:unless="${page == boardList.number + 1}">
                <a th:href="@{/board/paging(page=${page})}" th:text="${page}"></a>
            </span>
        </span>

        <!-- 다음 링크 활성화 비활성화
            사용자: 2페이지, getNumber: 1, 3페이지-->
        <a class="paging" th:href="${boardList.last} ? '#' : @{/board/paging(page=${boardList.number + 2})}">다음</a>
        <!-- 마지막 페이지로 이동 -->
        <a class="paging" th:href="@{/board/paging(page=${boardList.totalPages})}">끝</a>
    </div>

</main>
<!-- Footer -->
<footer>
    &copy; 2023 JSW. MYSITE
</footer>
</body>
<script>
    const saveReq = () => {
        location.href = "/board/save";
    }

</script>
</html>