<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Register</title>
<style> 
          
          body{
               background-image: url('image/Why.png.jpg');
               background-attachment: fixed;
               
          
          }
          pre{
             
             font-size: 30px;
          
          }


</style>
</head>
<body>
<pre>
<form action="saveStudent">

Student ID    : <input type="text" name="sid" placeholder="Enter Student id">

AGE           : <input type="text" name="age" placeholder="Enter Age">

First Name    : <input type="text" name="firstName" placeholder="Enter First Name">

Last Name     : <input type="text" name="lastName" placeholder="Enter Last Name">

College Name  : <input type="text" name="collegeName" placeholder="Enter College Name">

Course        : <input type="text" name="course" placeholder="Enter Course Name">

Batch NO      : <input type="text" name="batchno" placeholder="Enter Batch Id">

Fees PAID     : <input type="text" name="feesPaid" placeholder="Fees Paid">

Address       : <input type="text" name="address" placeholder="Enter Address" >

UserName      : <input type="text" name="username" placeholder="Enter User Name">

Password      : <input type="password" name="password" placeholder="Enter Password">

<input type="submit" value="save">

</form>
</pre>
</body>
</html>