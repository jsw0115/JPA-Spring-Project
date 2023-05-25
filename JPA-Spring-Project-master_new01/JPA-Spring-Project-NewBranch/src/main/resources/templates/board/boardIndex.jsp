<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BoardIndex</title>
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
    .cent {
        text-align: center;
        align: center;
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
    <h3>JSP 파일</h3>
    <a href="/member/update">내 정보 수정하기</a>
    <a href="/member/logout">로그아웃</a>
    <a href="/board">게시판</a>
</nav>
<main>
    <div class="cent">
        <button class="submit-btn" onclick="saveReq()">글작성</button>
    <!--  <a href="/board/save">글작성(링크)</a>-->
    <!--  <button onclick="listReq()">글목록</button>-->
        <button class="submit-btn" onclick="pagingReq()">페이징목록</button>
    </div>
</main>
<!-- Footer -->
<footer>
    &copy; 2023 JSW. MYSITE
</footer>
</body>
<script>
//  function saveReq() {
//
//  }
    const saveReq = () => {
        location.href="/board/save";
    }
    const listReq = () => {
        location.href="/board/";
    }
    const pagingReq = () => {
        location.href="/board/paging";
    }
</script>
</html>