
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #ffe4e1, #e0f7fa);
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-container {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 360px;
            animation: fadeIn 0.7s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h1 {
            color: #6a1b9a;
            font-size: 30px;
            margin-bottom: 28px;
        }

        label {
            display: block;
            text-align: left;
            margin-bottom: 8px;
            font-weight: 600;
            font-size: 15px;
            color: #555;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border-radius: 10px;
            border: 1px solid #ccc;
            font-size: 15px;
            background-color: #fefefe;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #b39ddb;
            outline: none;
            box-shadow: 0 0 6px #ce93d8;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #ce93d8;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #ba68c8;
        }

        .footer-text {
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }

        .footer-text a {
            color: #6a1b9a;
            text-decoration: none;
        }

        .footer-text a:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>

    <div class="login-container">
        <h1>Welcome Back</h1>

        <form method="post" action="/login">
            <label for="username">Username</label>
            <input type="text" name="username" placeholder="Enter your username" required />

            <label for="password">Password</label>
            <input type="password" name="password" placeholder="Enter your password" required />

            <button type="submit">Login</button>
        </form>

        <div class="footer-text">
            New here? <a href="/register">Create an account</a>
        </div>
    </div>

</body>
</html>
