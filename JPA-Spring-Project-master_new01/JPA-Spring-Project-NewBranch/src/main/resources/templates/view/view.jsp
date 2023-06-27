<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>View</title>
</head>
<body>
    <h1>회원 목록</h1>
    <table>
        <thead>
            <tr>
                <th>이름</th>
                <th>나이</th>
                <th>이메일</th>
            </tr>
        </thead>
        <tbody>
            <tr th:each="member : ${members}">
                <td th:text="${member.name}"></td>
                <td th:text="${member.age}"></td>
                <td th:text="${member.email}"></td>
            </tr>
        </tbody>
    </table>
</body>
</html>