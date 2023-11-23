<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

<title>Registration Page</title>

<style>
         #h1{
         color: black;
         text-align: center;
         font-style: italic;
         font-size: px;
         text-decoration: underline overline !important;
         text-shadow: 5px 5px white;
         
         
         }
           pre{
             
              font-style: italic;
              border: 15px solid;
              border-color:black;
              border-left: 15px dotted;
              border-right: 15px dotted;
              width: 800px;
              height: 500px;
              text-align: center;
              margin-left: 200px;
              font-size: 20px;
              padding-top: 50px;
              background-image:url('image/OIPP.jpeg');
              
              
              color:white;
              
              
          


           body{
           
                  background-color:lightblue;    
           
           }
 
</style>

</head>
<body>
<h1 id="h1">ADMIN REGISTER</h1>
 <pre>
<form action="saveAdmin">



First Name : <input type="text" name="firstName" placeholder="Enter First Name">

Last Name  : <input type="text" name="lastName"placeholder="Enter Last Name">

UserName   : <input type="text" name="userName"placeholder="Enter User Name">

Email-ID   : <input type="text" name="email" placeholder="Enter Email Id">

Password   : <input type="password" name="password" placeholder="Enter Password">

Mobile NO  : <input type="number" name="mobileNo" placeholder="Enter Mobile No">

<button type="submit">Register</button>



</form>
</pre>
</body>
</html>