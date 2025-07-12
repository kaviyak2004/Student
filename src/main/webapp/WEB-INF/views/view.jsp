
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Records</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e3f2fd;
            padding: 40px;
            text-align: center;
            background-image: url("/images/bg.png");
            background-size: cover;
            background-attachment: fixed;
        }

        h1 {
            font-size: 36px;
            color: #2c3e50;
            margin-bottom: 30px;
        }

        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            background-color: #ffffff;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }

        th, td {
            padding: 14px;
            text-align: center;
            border-bottom: 1px solid #ddd;
            font-size: 16px;
        }

        th {
            background-color: #1976d2;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f0f8ff;
        }

        .btn {
            text-decoration: none;
            padding: 8px 18px;
            border-radius: 8px;
            font-weight: bold;
            transition: 0.3s ease;
        }

        .edit-btn {
            background-color: #4caf50;
            color: white;
        }

        .edit-btn:hover {
            background-color: #43a047;
        }

        .delete-btn {
            background-color: #f44336;
            color: white;
        }

        .delete-btn:hover {
            background-color: #d32f2f;
        }

        .logout-btn {
            display: inline-block;
            margin-top: 30px;
            padding: 10px 20px;
            background-color: #ff9800;
            color: white;
            border-radius: 8px;
            font-weight: bold;
            text-decoration: none;
        }

        .logout-btn:hover {
            background-color: #fb8c00;
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
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="student" items="${students}">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.grade}</td>
                    <td>${student.department}</td>
                    <td>
                        <a class="btn edit-btn" href="/edit/${student.id}">Edit</a>
                        <a class="btn delete-btn" href="/delete/${student.id}" onclick="return confirm('Are you sure you want to delete this student?')">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <a href="/login" class="logout-btn">Log Out</a>
</body>
</html>


