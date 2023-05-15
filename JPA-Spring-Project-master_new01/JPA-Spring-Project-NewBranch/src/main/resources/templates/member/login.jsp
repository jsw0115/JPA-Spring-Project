<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Stripe - Sign In</title>
        <style>
            body {
                background-color: #f6f9fc;
                font-family: "Helvetica Neue", Helvetica, sans-serif;
                font-size: 14px;
                line-height: 1.42857;
                color: #1c1f26;
            }

            .container {
                margin: 0 auto;
                width: 350px;
                padding: 100px 0;
            }

            .logo {
                text-align: center;
            }

            .logo img {
                width: 100px;
            }

            form {
                background-color: #fff;
                border-radius: 4px;
                box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
                margin-bottom: 1.5rem;
                padding: 2rem;
            }

            form h1 {
                font-size: 24px;
                margin-bottom: 2rem;
                text-align: center;
                color: #1c1f26;
            }

            input[type=text], input[type=password] {
                box-sizing: border-box;
                width: 100%;
                padding: 1rem;
                margin-bottom: 1.5rem;
                border-radius: 4px;
                border: 1px solid #d1d5db;
                font-family: inherit;
                font-size: 16px;
                color: #1c1f26;
            }

            input[type=submit] {
                box-sizing: border-box;
                display: block;
                width: 100%;
                margin-top: 2rem;
                padding: 1rem;
                background-color: #5469d4;
                color: #fff;
                border-radius: 4px;
                border: none;
                font-size: 16px;
                cursor: pointer;
                transition: background-color 0.2s ease-in-out;
            }

            input[type=submit]:hover {
                background-color: #3f4eae;
            }

            .terms {
                text-align: center;
                font-size: 12px;
                margin-top: 1.5rem;
            }

            .terms a {
                color: #5469d4;
                text-decoration: none;
            }

            .terms a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
    <h3>JSP 파일</h3>
    <div class="container">
    <!--    <div class="logo">-->
    <!--        <img src="https://stripe.com/img/v3/home/social.png" alt="Stripe logo">-->
    <!--    </div>-->
        <form action="/member/login" method="post">
            <h1>LOGIN</h1>
            <label for="email">이메일</label>
            <input type="text" id="email" name="memberEmail" required>
            <label for="password">비밀번호</label>
            <input type="password" id="password" name="memberPassword" required>
            <input type="submit" value="로그인">
        </form>
        <div class="terms">
            <!--a href="#">비밀번호 찾기</a> |--> <a href="/member/save">회원가입</a>
        </div>
    </div>
    </body>
    </html>
