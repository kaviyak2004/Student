<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        body {
            background-color:teal;
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 80px;
            background-image: url("/images/second.png");

            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }

        h1 {
            color: #2c3e50;
            font-size: 50px;
            margin-bottom: 40px;
        }

        form {
            display: inline-block;
            padding: 30px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        input[type="text"],
        input[type="password"] {
            width: 250px;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 15px;
            
            

        }

        button {
            padding: 12px 25px;
            background-color: #3498db;
            color:blue;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #2980b9;
        }
        label{
            font-size: 20px;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }
    </style>
</head>
<body>

    <h1>Login Page</h1>

    <form method="post" action="/login">
        <label>Name</label><br>
        <input type="text" name="username" placeholder="Username" required /><br>
        <label>Password</label><br>
        <input type="password" name="password" placeholder="Password" required /><br>
        <button type="submit">Login</button>
    </form>

</body>
</html>