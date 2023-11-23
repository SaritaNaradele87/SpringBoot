<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f8f8;
            margin:0;
            padding: 0;
            
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        section {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
        }

        form {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 16px;
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
        }

        button {
            background-color:lightpurple;
            color:black;
            padding: 10px 20px;
            cursor: pointer;
            margin-top: 50px;
        }

        button:hover {
            background-color: #555;
        }

        footer {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
            margin-top: 100px;
        }
    </style>
</head>
<body>
<h1 align="center">INFORMATION</h1>
<form action="update">
<table>
<section>
<tr>
<td>SID:-</td>
<td><input type="text" name="sid" value="${data.sid}"></td>
</tr>
<tr>
<td> First Name:-</td>
<td><input type="text" name="firstName" value="${data.firstName}"></td>
</tr>
<tr>
<td>Last Name:-</td>
<td><input type="text" name="lastName" value="${data.lastName}"></td>
</tr>
<tr>
<td>Password:-</td>
<td><input type="text" name="password" value="${data.password}"></td>
</tr>
<tr>
<td>College Name:-</td>
<td><input type="text" name="collegeName" value="${data.collegeName}"></td>
</tr>
<tr>
<td>Course Name:-</td>
<td><input type="text" name="course" value="${data.course}"></td>
</tr>
<tr>
<td>Batch No:-</td>
<td><input type="text" name="batchno" value="${data.batchno}"></td>
</tr>
<tr>
<td>Fees Paid:-</td>
<td><input type="text" name="feesPaid" value="${data.feesPaid}"></td>
</tr>
<tr>
<td>Address:-</td>
<td><input type="text" name="address" value="${data.address}"></td>
</tr>
<tr>
<td>UserName:-</td>
<td><input type="text" name="usename" value="${data.username}"></td>
</tr>
<tr>
<td><button type="submit" value="UPDATE">Update</button></td>
</tr>
</section>
</table>
</form>

<footer>
     © 2021 Complete Java Classes. All Rights Reserved | Design by CJC
</footer>
</body>
</html>