<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시판 입력</title>
	<style>
	    button {
          background-color: #000;
          color: #fff;
          border: none;
          padding: 10px 20px;
          border-radius: 5px;
          box-shadow: 0 2px 4px rgba(0, 0, 0, 0.5);
          cursor: pointer;
        }
	    h2 {
            text-align: center;
            font-family: Arial, sans-serif;
            margin: 40px auto;
        }
        a {
            text-align: center;
            font-family: Arial, sans-serif;
            margin: 10px auto;
        }
        body {
            text-align: center;
            background-color: #f5f5f5;
            font-family: Arial, sans-serif;
        }

        table {
            border-collapse: collapse;
            margin: 20px auto;
            max-width: 400px;
            width: 100%;
        }

        th {
            background-color: #333;
            color: #fff;
            font-weight: normal;
            text-align: center;
            padding: 8px;
            border: 1px solid black;
        }

        td {
            background-color: #fff;
            border: 1px solid #ccc;
            color: #333;
            text-align: center;
            padding: 8px;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        .post-title {
            font-weight: bold;
            text-decoration: none;
            color: #333;
        }

        .post-title:hover {
            color: #f60;
        }

        .post-meta {
            color: #999;
        }

	</style>
</head>
<body>
	<h2>게시판 입력</h2>
	<button onclick="location='list'">목록으로</button>
	<form method="post" action="/board/write">
		<table>
            <tr>
                <th>항목</th>
                <th>입력</th>
            </tr>
            <tr>
                <td>보유 원룸 수</td>
                <td><input type="text" name="holding_rooms" required></td>
            </tr>
            <tr>
                <td>매진 월임대료</td>
                <td><input type="text" name="monthly_rent_sold_out" required></td>
            </tr>
            <tr>
                <td>월임대료 증액</td>
                <td><input type="text" name="monthly_rent_increase" required></td>
            </tr>
            <tr>
                <td>유지비</td>
                <td><input type="text" name="maintenance_cost" required></td>
            </tr>
            <tr>
                <td colspan="2"><button type="submit">등록</button></td>
            </tr>
        </table>
	</form>
</body>
</html>
