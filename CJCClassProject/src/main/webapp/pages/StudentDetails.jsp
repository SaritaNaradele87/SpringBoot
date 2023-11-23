<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Students Details</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f8f8;
            margin: 0;
            padding: 0;
            background-image: url('image/lap.jpg');
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        section {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background-color: #B0E0E6;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            

        }

        h2 {
            color: #333;
        }

        table {
            width: 100%;
            border:4;
            margin-top: 20px;
            margin-bottom: 90px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
            background-color:white;
        }

        th {
            background-color:#333;
            color: #fff;
          
        }

        .action-buttons {
            margin-top: 20px;
        }

        button {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            margin-right: 10px;
        }

        button:hover {
            background-color: #555;
        }

        .search-bar {
            margin-top: 50px;
            margin-bottom:30px;
            display: inline-flex;
            gap: 10px;
           
            
        }

        .search-input {
            flex-grow: 1;
            padding: 10px;
        }

        .search-button {
            background-color: #333;
            color: #fff;
            padding: 10px;
            border: none;
            cursor: pointer;
            
        }

        .search-button:hover {
            background-color: #555;
        }
        

        footer {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        
   
    .back-button {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
    }

    .back-button {
      display: inline-block;
      padding: 10px 20px;
      font-size: 16px;
      text-decoration: none;
      background-color:white;
      color: #fff;
      border-radius: 5px;
      transition: background-color 0.3s;
    }

    .back-button:hover {
      background-color: #2980b9;
    }
  </style>
<meta charset="ISO-8859-1">
<title>Student Details</title>
<script type="text/javascript">
function addStudent() {
	
	document.fn.action="newregisterhere";
	document.fn.submit();
}
function deleteStudent() {
	
	document.fn.action="delete";
	document.fn.submit();
}
function editStudent() 
{
	document.fn.action="edit";
	document.fn.submit();
}
</script>
</head>
<body>
<header>Students Details</header>
<marquee>
<h1 style="color: red;"> ${msg }</h1>
</marquee>
<form action="search" class="search-bar">
        <input type="text" class="search-input" name="firstName" placeholder="Search Here...">
        <button class="search-button" type="submit">Search</button>
    </form>
<section>
<form name="fn">
<table border="2">
    <tr>
        <th> SELECT </th>
        <th> Student Id </th>
        <th> Student Age </th>
        <th> First Name </th>
        <th> Last Name </th>
        <th> Password </th>
        <th> College Name </th>
        <th> Cours Name </th>
        <th> Batch No </th>
        <th> Fees Paid </th>
        <th> Address </th>
        <th> Username </th>
        <th> EDIT </th>
        <th> ADD </th>
        <th> DELETE </th>
        
    </tr>
    <c:forEach items="${data}" var="student">
    <br>
	
        <tr>
            <td><input type="radio" name="sid" value="${student.sid}"></td>
            <td>${student.sid}</td>
            <td>${student.age}</td>
            <td>${student.firstName}</td>
            <td>${student.lastName}</td>
            <td>${student.password}</td>
            <td>${student.collegeName}</td>
            <td>${student.course}</td>
            <td>${student.batchno}</td>
            <td>${student.feesPaid}</td>
            <td>${student.address}</td>
            <td>${student.username}</td>
            
            <td><input type="button" value="EDIT" onclick="editStudent()"></td>
            <td><input type="button" value="ADD" onclick="addStudent()"></td>
            <td><input type="button" value="DELETE" onclick="deleteStudent()"></td>
            
        </tr>
    </c:forEach>
</table>
</form>
</section>

<a href="back" class="back-button">
<button>Back</button>
</a>

<footer>
     © 2021 Complete Java Classes. All Rights Reserved | Design by CJC
</footer>



</body>
</html>