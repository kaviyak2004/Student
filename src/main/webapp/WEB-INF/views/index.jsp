<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Registration</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #fce4ec, #e1f5fe);
            background-attachment: fixed;
            background-size: cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            width: 400px;
            animation: fadeIn 0.7s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-25px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h1 {
            color: #6a1b9a;
            font-size: 28px;
            margin-bottom: 25px;
        }

        label {
            display: block;
            text-align: left;
            margin-bottom: 6px;
            font-weight: 600;
            font-size: 15px;
            color: #333;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 18px;
            border-radius: 10px;
            border: 1px solid #ccc;
            font-size: 15px;
            background-color: #fefefe;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        input[type="text"]:focus {
            border-color: #ba68c8;
            outline: none;
            box-shadow: 0 0 6px #ce93d8;
        }

        button {
            width: 100%;
            padding: 13px;
            background-color: #ce93d8;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #ab47bc;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #6a1b9a;
            text-decoration: none;
            font-size: 14px;
        }

        .back-link:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>

    <div class="form-container">
        <h1>Student Registration</h1>

        <form method="post" action="submit">
            <label for="name">Name</label>
            <input type="text" name="name" required />

            <label for="grade">Grade</label>
            <input type="text" name="grade" required />

            <label for="department">Department</label>
            <input type="text" name="department" required />

            <button type="submit">Submit</button>
        </form>

        <a href="/login" class="back-link">← Back to Login</a>
    </div>

</body>
</html>
