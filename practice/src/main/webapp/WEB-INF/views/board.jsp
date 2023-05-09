<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<!-- 타임리프 문법 사용 -->
<head>
	<meta charset="UTF-8">
	<title>게시판 목록</title>
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
    			background-color: #f5f5f5;
    			text-align: center;
    			font-family: Arial, sans-serif;
    		}

    		table {
    			border-collapse: collapse;
    			margin: 20px auto;
    			max-width: 1200px;
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
	<h2>게시판 목록</h2>
	<button onclick="location='write'">작성하기</button>
	<table>
		<thead>
			<tr>
				<th>일련번호</th>
				<th>보유 원룸 수</th>
				<th>매진 월 임대료</th>
				<th>월 임대료 증액</th>
				<th>유지비</th>
				<th>최상 월 임대료</th>
				<th>임대된 원룸 수</th>
				<th>최고 수익</th>
				<th>작성자</th>
				<th>IP주소</th>
				<th>등록 날짜와 시간</th>
			</tr>
		</thead>
		<tbody>
            <tr th:each="Board2 : $(list)">
                <td th:text="${Board2.rent_no}"></td>
                <td th:text="${Board2.room_cnt}"></td>
                <td th:text="${Board2.month_rent}"></td>
                <td th:text="${Board2.unit_rent}"></td>
                <td th:text="${Board2.maint_cost}"></td>
                <td th:text="${Board2.best_rent}"></td>
                <td th:text="${Board2.rent_room_cnt}"></td>
                <td th:text="${Board2.max_profit}"></td>
                <td th:text="${Board2.reg_user}"></td>
                <td th:text="${Board2.ip_addr}"></td>
                <td th:text="${Board2.reg_date}"></td>
            </tr>
		</tbody>
	</table>
</body>
</html>
