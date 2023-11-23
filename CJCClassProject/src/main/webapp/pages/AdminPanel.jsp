<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel</title>

    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f8f8;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        section {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
        }

        .button-container {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }

        button {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #555;
        }

        /* Your other styles (if any) */

        footer {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        newregisterhere
        studetails
    </style>
</head>
<body>
<form action="AdminPanel">
<header>
    <h1>Welcome to Admin Panel</h1>
</header>
<section>
    <h2>Actions</h2>
    <div class="button-container">

<a href ="newregisterhere"><button type="button" class="btn btn-primary">STUDENT REGISTRATION</button></a>

<a href ="studetails"><button type="button" class="btn btn-primary">STUDENT DETAILS</button></a>

</div>
</section>
</form>
<footer>
     © 2021 Complete Java Classes. All Rights Reserved | Design by CJC
</footer>
</body>
</html>