<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Students</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color:aquamarine;
            padding: 40px;
            text-align: center;
            background-image: url("logo.png");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;


        }

        h1 {
            font-size: 32px;
            color: #2c3e50;
            margin-bottom: 30px;
        }

        table {
            width: 80%;
            margin: auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 8px rgba(0,0,0,0.1);
        }

        th, td {
            border: 1px solid pink;
            padding: 12px;
            font-size: 16px;
        }

        th {
            background-color: #3498db;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f8ff;
        }

        a.button {
            display: inline-block;
            margin-top: 30px;
            padding: 10px 20px;
            background-color:pink;
            
            text-decoration: none;
            border-radius: 8px;
            color: black;
        }

        a.button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <h1>Student Records</h1>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Grade</th>
                <th>Department</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="student" items="${students}">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.grade}</td>
                    <td>${student.department}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <a href="/login" class="button">Log Out</a>
</body>
</html>

