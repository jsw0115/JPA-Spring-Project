<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>INDEX</title>
    <!-- Bootstrap CSS -->
    <style>
        a {
            text-decoration: none;
            align-items: stretch;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f6f9fc;
        }
        .container {
            width: 400px;
            margin: 0 auto;
            background-color: #ffffff;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
        }
        h1 {
            text-align: center;
            margin-bottom: 30px;
        }
        div {
            display: flex;
            flex-direction: column;
            align-items: stretch;
        }
        .div-control {
            height: 40px;
            border-radius: 5px;
            border: 1px solid #c4cdd5;
            background-color: #f6f9fc;
            padding: 10px;
            margin-bottom: 20px;
        }
        .form-control:focus {
            outline: none;
            border: 1px solid #5f93d1;
            box-shadow: 0px 0px 3px 0px rgba(0,0,0,0.1);
        }
        .submit-btn {
            background-color: #5469d4;
            color: #ffffff;
            font-weight: bold;
            border-radius: 5px;
            height: 40px;
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
<div class="container" style="margin-top: 100px;">
    <h2 align="center">Hello Spring Boot</h2>
    <h3>JSP 파일</h3>
    <div style="text-align: center;">
<!--        <a href="/member/save" class="submit-btn">회원가입</a> <br>-->
<!--        <a href="/member/login" class="submit-btn">로그인</a> <br>-->
<!--        <a href="/member/" class="submit-btn">회원목록</a> <br>-->
        <button class="submit-btn" onclick="location.href='/member/save'">회원가입</button>
        <button class="submit-btn" onclick="location.href='/member/login'">로그인</button>
        <button class="submit-btn" onclick="location.href='/member/'">회원목록</button>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>